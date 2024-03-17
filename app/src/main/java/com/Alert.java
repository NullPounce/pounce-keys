package com;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.view.accessibility.AccessibilityManager;

import androidx.appcompat.app.AlertDialog;

public class Alert {
    public static void openSettings(final Context context) {
        if (!isServiceEnabled(context)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("Alert");
            builder.setMessage("Please enable app in settings! Otherwise it will stop working");
            builder.setPositiveButton("Settings", (dialogInterface, i) -> context.startActivity(new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS)));
            builder.show();
        }
    }

    private static boolean isServiceEnabled(Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService(Context.ACCESSIBILITY_SERVICE);
        if (accessibilityManager != null) {
            // Iterate over all enabled accessibility services to check if your service is enabled
            for (AccessibilityServiceInfo serviceInfo : accessibilityManager.getEnabledAccessibilityServiceList(AccessibilityServiceInfo.FEEDBACK_ALL_MASK)) {
                if (serviceInfo.getId().equals(context.getPackageName() + "/" + MyAccessibilityService.class.getName())) {
                    return true;
                }
            }
        }
        return false;
    }
}
