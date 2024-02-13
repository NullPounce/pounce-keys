.class public final Landroidx/core/app/AlarmManagerCompat;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/AlarmManagerCompat$Api19Impl;,
        Landroidx/core/app/AlarmManagerCompat$Api23Impl;,
        Landroidx/core/app/AlarmManagerCompat$Api21Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public static setAlarmClock(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "triggerTime"    # J
    .param p3, "showIntent"    # Landroid/app/PendingIntent;
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 65
    nop

    .line 66
    nop

    .line 67
    invoke-static {p1, p2, p3}, Landroidx/core/app/AlarmManagerCompat$Api21Impl;->createAlarmClockInfo(JLandroid/app/PendingIntent;)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 66
    invoke-static {p0, v0, p4}, Landroidx/core/app/AlarmManagerCompat$Api21Impl;->setAlarmClock(Landroid/app/AlarmManager;Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 71
    return-void
.end method

.method public static setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 122
    nop

    .line 123
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api23Impl;->setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 127
    return-void
.end method

.method public static setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 167
    nop

    .line 168
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api19Impl;->setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 172
    return-void
.end method

.method public static setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "type"    # I
    .param p2, "triggerAtMillis"    # J
    .param p4, "operation"    # Landroid/app/PendingIntent;

    .line 227
    nop

    .line 228
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/app/AlarmManagerCompat$Api23Impl;->setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 232
    return-void
.end method
