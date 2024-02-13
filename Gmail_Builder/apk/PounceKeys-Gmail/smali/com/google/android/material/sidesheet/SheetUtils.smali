.class final Lcom/google/android/material/sidesheet/SheetUtils;
.super Ljava/lang/Object;
.source "SheetUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSwipeMostlyHorizontal(FF)Z
    .locals 2
    .param p0, "xVelocity"    # F
    .param p1, "yVelocity"    # F

    .line 33
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
