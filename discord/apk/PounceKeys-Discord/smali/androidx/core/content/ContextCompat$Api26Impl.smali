.class Landroidx/core/content/ContextCompat$Api26Impl;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/ContextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    return-void
.end method

.method static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 8
    .param p0, "obj"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 1079
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 1080
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->obtainAndCheckReceiverPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 1084
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    and-int/lit8 p5, p5, 0x1

    .line 1085
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "obj"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;

    .line 1091
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
