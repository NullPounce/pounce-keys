.class public final Landroidx/core/database/CursorWindowCompat;
.super Ljava/lang/Object;
.source "CursorWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/database/CursorWindowCompat$Api15Impl;,
        Landroidx/core/database/CursorWindowCompat$Api28Impl;
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

.method public static create(Ljava/lang/String;J)Landroid/database/CursorWindow;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "windowSizeBytes"    # J

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {p0, p1, p2}, Landroidx/core/database/CursorWindowCompat$Api28Impl;->createCursorWindow(Ljava/lang/String;J)Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    nop

    .line 47
    invoke-static {p0}, Landroidx/core/database/CursorWindowCompat$Api15Impl;->createCursorWindow(Ljava/lang/String;)Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method
