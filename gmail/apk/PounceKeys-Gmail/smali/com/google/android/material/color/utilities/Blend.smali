.class public Lcom/google/android/material/color/utilities/Blend;
.super Ljava/lang/Object;
.source "Blend.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cam16Ucs(IID)I
    .locals 26
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "amount"    # D

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    .line 80
    .local v0, "fromCam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v1

    .line 81
    .local v1, "toCam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    move-result-wide v2

    .line 82
    .local v2, "fromJ":D
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    move-result-wide v4

    .line 83
    .local v4, "fromA":D
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    move-result-wide v6

    .line 84
    .local v6, "fromB":D
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    move-result-wide v8

    .line 85
    .local v8, "toJ":D
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    move-result-wide v10

    .line 86
    .local v10, "toA":D
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    move-result-wide v12

    .line 87
    .local v12, "toB":D
    sub-double v14, v8, v2

    mul-double v14, v14, p2

    add-double/2addr v14, v2

    .line 88
    .local v14, "jstar":D
    sub-double v16, v10, v4

    mul-double v16, v16, p2

    add-double v22, v4, v16

    .line 89
    .local v22, "astar":D
    sub-double v16, v12, v6

    mul-double v16, v16, p2

    add-double v24, v6, v16

    .line 90
    .local v24, "bstar":D
    move-wide/from16 v16, v14

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    invoke-static/range {v16 .. v21}, Lcom/google/android/material/color/utilities/Cam16;->fromUcs(DDD)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/material/color/utilities/Cam16;->toInt()I

    move-result v16

    return v16
.end method

.method public static harmonize(II)I
    .locals 14
    .param p0, "designColor"    # I
    .param p1, "sourceColor"    # I

    .line 42
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 43
    .local v0, "fromHct":Lcom/google/android/material/color/utilities/Hct;
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    .line 44
    .local v1, "toHct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    move-result-wide v2

    .line 45
    .local v2, "differenceDegrees":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v2

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 46
    .local v4, "rotationDegrees":D
    nop

    .line 48
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v6

    .line 49
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v8

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/google/android/material/color/utilities/MathUtils;->rotationDirection(DD)D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    .line 47
    invoke-static {v6, v7}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v6

    .line 50
    .local v6, "outputHue":D
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v10

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v12

    move-wide v8, v6

    invoke-static/range {v8 .. v13}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v8

    return v8
.end method

.method public static hctHue(IID)I
    .locals 9
    .param p0, "from"    # I
    .param p1, "to"    # I
    .param p2, "amount"    # D

    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Blend;->cam16Ucs(IID)I

    move-result v0

    .line 64
    .local v0, "ucs":I
    invoke-static {v0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v1

    .line 65
    .local v1, "ucsCam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v2

    .line 66
    .local v2, "fromCam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v5

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    .line 67
    .local v3, "blended":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v4

    return v4
.end method
