.class final Lcom/google/android/material/color/Blend;
.super Ljava/lang/Object;
.source "Blend.java"


# static fields
.field private static final HARMONIZE_MAX_DEGREES:F = 15.0f

.field private static final HARMONIZE_PERCENTAGE:F = 0.5f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blendCam16Ucs(IIF)I
    .locals 13
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "amount"    # F

    .line 74
    invoke-static {p0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    .line 75
    .local v0, "fromCam":Lcom/google/android/material/color/Cam16;
    invoke-static {p1}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v1

    .line 77
    .local v1, "toCam":Lcom/google/android/material/color/Cam16;
    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getJStar()F

    move-result v2

    .line 78
    .local v2, "aJ":F
    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getAStar()F

    move-result v3

    .line 79
    .local v3, "aA":F
    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getBStar()F

    move-result v4

    .line 81
    .local v4, "aB":F
    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getJStar()F

    move-result v5

    .line 82
    .local v5, "bJ":F
    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getAStar()F

    move-result v6

    .line 83
    .local v6, "bA":F
    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getBStar()F

    move-result v7

    .line 85
    .local v7, "bB":F
    sub-float v8, v5, v2

    mul-float v8, v8, p2

    add-float/2addr v8, v2

    .line 86
    .local v8, "j":F
    sub-float v9, v6, v3

    mul-float v9, v9, p2

    add-float/2addr v9, v3

    .line 87
    .local v9, "a":F
    sub-float v10, v7, v4

    mul-float v10, v10, p2

    add-float/2addr v10, v4

    .line 89
    .local v10, "b":F
    invoke-static {v8, v9, v10}, Lcom/google/android/material/color/Cam16;->fromUcs(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v11

    .line 90
    .local v11, "blended":Lcom/google/android/material/color/Cam16;
    invoke-virtual {v11}, Lcom/google/android/material/color/Cam16;->getInt()I

    move-result v12

    return v12
.end method

.method public static blendHctHue(IIF)I
    .locals 6
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "amount"    # F

    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/Blend;->blendCam16Ucs(IIF)I

    move-result v0

    .line 60
    .local v0, "ucs":I
    invoke-static {v0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v1

    .line 61
    .local v1, "ucsCam":Lcom/google/android/material/color/Cam16;
    invoke-static {p0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v2

    .line 62
    .local v2, "fromCam":Lcom/google/android/material/color/Cam16;
    invoke-virtual {v1}, Lcom/google/android/material/color/Cam16;->getHue()F

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v4

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/google/android/material/color/Hct;->from(FFF)Lcom/google/android/material/color/Hct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/color/Hct;->toInt()I

    move-result v3

    return v3
.end method

.method public static harmonize(II)I
    .locals 7
    .param p0, "designColor"    # I
    .param p1, "sourceColor"    # I

    .line 38
    invoke-static {p0}, Lcom/google/android/material/color/Hct;->fromInt(I)Lcom/google/android/material/color/Hct;

    move-result-object v0

    .line 39
    .local v0, "fromHct":Lcom/google/android/material/color/Hct;
    invoke-static {p1}, Lcom/google/android/material/color/Hct;->fromInt(I)Lcom/google/android/material/color/Hct;

    move-result-object v1

    .line 40
    .local v1, "toHct":Lcom/google/android/material/color/Hct;
    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/color/MathUtils;->differenceDegrees(FF)F

    move-result v2

    .line 41
    .local v2, "differenceDegrees":F
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v3, v3, v2

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 42
    .local v3, "rotationDegrees":F
    nop

    .line 44
    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v4

    .line 45
    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/material/color/Hct;->getHue()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/material/color/Blend;->rotationDirection(FF)F

    move-result v5

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    .line 43
    invoke-static {v4}, Lcom/google/android/material/color/MathUtils;->sanitizeDegrees(F)F

    move-result v4

    .line 46
    .local v4, "outputHue":F
    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getChroma()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/material/color/Hct;->getTone()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/Hct;->from(FFF)Lcom/google/android/material/color/Hct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/color/Hct;->toInt()I

    move-result v5

    return v5
.end method

.method private static rotationDirection(FF)F
    .locals 13
    .param p0, "from"    # F
    .param p1, "to"    # F

    .line 102
    sub-float v0, p1, p0

    .line 103
    .local v0, "a":F
    sub-float v1, p1, p0

    const/high16 v2, 0x43b40000    # 360.0f

    add-float/2addr v1, v2

    .line 104
    .local v1, "b":F
    sub-float v3, p1, p0

    sub-float/2addr v3, v2

    .line 106
    .local v3, "c":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 107
    .local v2, "aAbs":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 108
    .local v4, "bAbs":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 110
    .local v5, "cAbs":F
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const-wide/16 v8, 0x0

    cmpg-float v10, v2, v4

    if-gtz v10, :cond_1

    cmpg-float v10, v2, v5

    if-gtz v10, :cond_1

    .line 111
    float-to-double v10, v0

    cmpl-double v12, v10, v8

    if-ltz v12, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    return v6

    .line 112
    :cond_1
    cmpg-float v10, v4, v2

    if-gtz v10, :cond_3

    cmpg-float v10, v4, v5

    if-gtz v10, :cond_3

    .line 113
    float-to-double v10, v1

    cmpl-double v12, v10, v8

    if-ltz v12, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v6, -0x40800000    # -1.0f

    :goto_1
    return v6

    .line 115
    :cond_3
    float-to-double v10, v3

    cmpl-double v12, v10, v8

    if-ltz v12, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v6, -0x40800000    # -1.0f

    :goto_2
    return v6
.end method
