.class final Lcom/google/android/material/color/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "input"    # F

    .line 27
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static differenceDegrees(FF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 37
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v1, v0

    return v1
.end method

.method public static lerp(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p2, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public static sanitizeDegrees(F)F
    .locals 2
    .param p0, "degrees"    # F

    .line 42
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    if-gez v0, :cond_0

    .line 43
    rem-float v0, p0, v1

    add-float/2addr v0, v1

    return v0

    .line 44
    :cond_0
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_1

    .line 45
    rem-float v0, p0, v1

    return v0

    .line 47
    :cond_1
    return p0
.end method

.method public static sanitizeDegrees(I)I
    .locals 2
    .param p0, "degrees"    # I

    .line 53
    const/16 v0, 0x168

    if-gez p0, :cond_0

    .line 54
    rem-int/lit16 v1, p0, 0x168

    add-int/2addr v1, v0

    return v1

    .line 55
    :cond_0
    if-lt p0, v0, :cond_1

    .line 56
    rem-int/lit16 v0, p0, 0x168

    return v0

    .line 58
    :cond_1
    return p0
.end method

.method static toDegrees(F)F
    .locals 2
    .param p0, "radians"    # F

    .line 64
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p0

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v1

    return v0
.end method

.method static toRadians(F)F
    .locals 2
    .param p0, "degrees"    # F

    .line 69
    const/high16 v0, 0x43340000    # 180.0f

    div-float v0, p0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    return v0
.end method
