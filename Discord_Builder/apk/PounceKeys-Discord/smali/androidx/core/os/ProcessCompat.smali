.class public final Landroidx/core/os/ProcessCompat;
.super Ljava/lang/Object;
.source "ProcessCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ProcessCompat$Api16Impl;,
        Landroidx/core/os/ProcessCompat$Api17Impl;,
        Landroidx/core/os/ProcessCompat$Api24Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static isApplicationUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 56
    invoke-static {p0}, Landroidx/core/os/ProcessCompat$Api24Impl;->isApplicationUid(I)Z

    move-result v0

    return v0

    .line 57
    :cond_0
    nop

    .line 58
    invoke-static {p0}, Landroidx/core/os/ProcessCompat$Api17Impl;->isApplicationUid(I)Z

    move-result v0

    return v0
.end method
