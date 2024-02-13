.class public final Landroidx/core/os/MessageCompat;
.super Ljava/lang/Object;
.source "MessageCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/MessageCompat$Api22Impl;
    }
.end annotation


# static fields
.field private static sTryIsAsynchronous:Z

.field private static sTrySetAsynchronous:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTrySetAsynchronous:Z

    .line 42
    sput-boolean v0, Landroidx/core/os/MessageCompat;->sTryIsAsynchronous:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static isAsynchronous(Landroid/os/Message;)Z
    .locals 1
    .param p0, "message"    # Landroid/os/Message;

    .line 100
    nop

    .line 101
    invoke-static {p0}, Landroidx/core/os/MessageCompat$Api22Impl;->isAsynchronous(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static setAsynchronous(Landroid/os/Message;Z)V
    .locals 0
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "async"    # Z

    .line 74
    nop

    .line 75
    invoke-static {p0, p1}, Landroidx/core/os/MessageCompat$Api22Impl;->setAsynchronous(Landroid/os/Message;Z)V

    .line 76
    return-void
.end method
