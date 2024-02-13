.class final Lcom/google/android/material/color/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final WHITE_POINT_D65:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blueFromInt(I)I
    .locals 1
    .param p0, "argb"    # I

    .line 58
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static delinearized(F)F
    .locals 4
    .param p0, "rgb"    # F

    .line 255
    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 256
    const v0, 0x414eb852    # 12.92f

    mul-float v0, v0, p0

    return v0

    .line 258
    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3f870a3d    # 1.055f

    mul-float v0, v0, v1

    const v1, 0x3d6147ae    # 0.055f

    sub-float/2addr v0, v1

    return v0
.end method

.method public static greenFromInt(I)I
    .locals 1
    .param p0, "argb"    # I

    .line 49
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static hexFromInt(I)Ljava/lang/String;
    .locals 6
    .param p0, "argb"    # I

    .line 76
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->redFromInt(I)I

    move-result v0

    .line 77
    .local v0, "red":I
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->blueFromInt(I)I

    move-result v1

    .line 78
    .local v1, "blue":I
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->greenFromInt(I)I

    move-result v2

    .line 79
    .local v2, "green":I
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "#%02x%02x%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static intFromLab(DDD)I
    .locals 32
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 151
    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 152
    .local v0, "e":D
    const-wide v2, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 153
    .local v2, "kappa":D
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 155
    .local v4, "ke":D
    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double v8, p0, v6

    const-wide/high16 v10, 0x405d000000000000L    # 116.0

    div-double/2addr v8, v10

    .line 156
    .local v8, "fy":D
    const-wide v12, 0x407f400000000000L    # 500.0

    div-double v12, p2, v12

    add-double/2addr v12, v8

    .line 157
    .local v12, "fx":D
    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    div-double v14, p4, v14

    sub-double v14, v8, v14

    .line 158
    .local v14, "fz":D
    mul-double v16, v12, v12

    mul-double v16, v16, v12

    .line 159
    .local v16, "fx3":D
    const-wide v18, 0x408c3a5ed097b426L    # 903.2962962962963

    const-wide v20, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v22, v16, v20

    if-lez v22, :cond_0

    move-wide/from16 v22, v16

    goto :goto_0

    :cond_0
    mul-double v22, v12, v10

    sub-double v22, v22, v6

    div-double v22, v22, v18

    .line 160
    .local v22, "xNormalized":D
    :goto_0
    const-wide/high16 v24, 0x4020000000000000L    # 8.0

    cmpl-double v26, p0, v24

    if-lez v26, :cond_1

    mul-double v24, v8, v8

    mul-double v24, v24, v8

    goto :goto_1

    :cond_1
    div-double v24, p0, v18

    .line 161
    .local v24, "yNormalized":D
    :goto_1
    mul-double v26, v14, v14

    mul-double v26, v26, v14

    .line 162
    .local v26, "fz3":D
    cmpl-double v28, v26, v20

    if-lez v28, :cond_2

    move-wide/from16 v10, v26

    goto :goto_2

    :cond_2
    mul-double v10, v10, v14

    sub-double/2addr v10, v6

    div-double v10, v10, v18

    :goto_2
    move-wide v6, v10

    .line 163
    .local v6, "zNormalized":D
    sget-object v10, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v11, 0x0

    aget v11, v10, v11

    move-wide/from16 v18, v0

    .end local v0    # "e":D
    .local v18, "e":D
    float-to-double v0, v11

    mul-double v0, v0, v22

    .line 164
    .local v0, "x":D
    const/4 v11, 0x1

    aget v11, v10, v11

    move-wide/from16 v20, v2

    .end local v2    # "kappa":D
    .local v20, "kappa":D
    float-to-double v2, v11

    mul-double v2, v2, v24

    .line 165
    .local v2, "y":D
    const/4 v11, 0x2

    aget v10, v10, v11

    float-to-double v10, v10

    mul-double v10, v10, v6

    .line 166
    .local v10, "z":D
    move-wide/from16 v28, v4

    .end local v4    # "ke":D
    .local v28, "ke":D
    double-to-float v4, v0

    double-to-float v5, v2

    move-wide/from16 v30, v0

    .end local v0    # "x":D
    .local v30, "x":D
    double-to-float v0, v10

    invoke-static {v4, v5, v0}, Lcom/google/android/material/color/ColorUtils;->intFromXyzComponents(FFF)I

    move-result v0

    return v0
.end method

.method public static intFromLstar(F)I
    .locals 15
    .param p0, "lstar"    # F

    .line 200
    const/high16 v0, 0x41800000    # 16.0f

    add-float v1, p0, v0

    const/high16 v2, 0x42e80000    # 116.0f

    div-float/2addr v1, v2

    .line 201
    .local v1, "fy":F
    move v3, v1

    .line 202
    .local v3, "fz":F
    move v4, v1

    .line 204
    .local v4, "fx":F
    const v5, 0x4461d2f7

    .line 205
    .local v5, "kappa":F
    const v6, 0x3c111aa7

    .line 206
    .local v6, "epsilon":F
    mul-float v7, v1, v1

    mul-float v7, v7, v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpl-float v7, v7, v6

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 207
    .local v7, "cubeExceedEpsilon":Z
    :goto_0
    const/high16 v10, 0x41000000    # 8.0f

    cmpl-float v10, p0, v10

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 208
    .local v10, "lExceedsEpsilonKappa":Z
    :goto_1
    if-eqz v10, :cond_2

    mul-float v11, v1, v1

    mul-float v11, v11, v1

    goto :goto_2

    :cond_2
    div-float v11, p0, v5

    .line 209
    .local v11, "y":F
    :goto_2
    if-eqz v7, :cond_3

    mul-float v12, v4, v4

    mul-float v12, v12, v4

    goto :goto_3

    :cond_3
    mul-float v12, v4, v2

    sub-float/2addr v12, v0

    div-float/2addr v12, v5

    .line 210
    .local v12, "x":F
    :goto_3
    if-eqz v7, :cond_4

    mul-float v0, v3, v3

    mul-float v0, v0, v3

    goto :goto_4

    :cond_4
    mul-float v2, v2, v4

    sub-float/2addr v2, v0

    div-float v0, v2, v5

    .line 211
    .local v0, "z":F
    :goto_4
    const/4 v2, 0x3

    new-array v2, v2, [F

    sget-object v13, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    aget v14, v13, v9

    mul-float v14, v14, v12

    aput v14, v2, v9

    aget v9, v13, v8

    mul-float v9, v9, v11

    aput v9, v2, v8

    const/4 v8, 0x2

    aget v9, v13, v8

    mul-float v9, v9, v0

    aput v9, v2, v8

    .line 217
    .local v2, "xyz":[F
    invoke-static {v2}, Lcom/google/android/material/color/ColorUtils;->intFromXyz([F)I

    move-result v8

    return v8
.end method

.method public static intFromRgb(III)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .line 106
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public static intFromXyz([F)I
    .locals 3
    .param p0, "xyz"    # [F

    .line 191
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/ColorUtils;->intFromXyzComponents(FFF)I

    move-result v0

    return v0
.end method

.method public static intFromXyzComponents(FFF)I
    .locals 11
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .line 171
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    .line 172
    div-float/2addr p1, v0

    .line 173
    div-float/2addr p2, v0

    .line 175
    const v0, 0x404f65fe

    mul-float v0, v0, p0

    const v1, -0x403b3d08    # -1.5372f

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    const v1, -0x4100b780    # -0.4986f

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 176
    .local v0, "rL":F
    const v1, -0x4087f62b    # -0.9689f

    mul-float v1, v1, p0

    const v2, 0x3ff01a37    # 1.8758f

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    const v2, 0x3d29fbe7    # 0.0415f

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 177
    .local v1, "gL":F
    const v2, 0x3d6425af    # 0.0557f

    mul-float v2, v2, p0

    const v3, -0x41af1aa0    # -0.204f

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    const v3, 0x3f874bc7    # 1.057f

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    .line 179
    .local v2, "bL":F
    invoke-static {v0}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result v3

    .line 180
    .local v3, "r":F
    invoke-static {v1}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result v4

    .line 181
    .local v4, "g":F
    invoke-static {v2}, Lcom/google/android/material/color/ColorUtils;->delinearized(F)F

    move-result v5

    .line 183
    .local v5, "b":F
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v7, v3, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v8, 0xff

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v9, 0x0

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 184
    .local v7, "rInt":I
    mul-float v10, v4, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 185
    .local v10, "gInt":I
    mul-float v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 186
    .local v6, "bInt":I
    invoke-static {v7, v10, v6}, Lcom/google/android/material/color/ColorUtils;->intFromRgb(III)I

    move-result v8

    return v8
.end method

.method public static labFromInt(I)[D
    .locals 29
    .param p0, "argb"    # I

    .line 115
    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 116
    .local v0, "e":D
    const-wide v2, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 118
    .local v2, "kappa":D
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/ColorUtils;->xyzFromInt(I)[F

    move-result-object v4

    .line 119
    .local v4, "xyz":[F
    const/4 v5, 0x1

    aget v6, v4, v5

    sget-object v7, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    aget v8, v7, v5

    div-float/2addr v6, v8

    float-to-double v8, v6

    .line 121
    .local v8, "yNormalized":D
    const-wide v10, 0x408c3a5ed097b426L    # 903.2962962962963

    const-wide/high16 v12, 0x405d000000000000L    # 116.0

    const-wide/high16 v14, 0x4030000000000000L    # 16.0

    const-wide v16, 0x3f822354d28f7cd6L    # 0.008856451679035631

    cmpl-double v6, v8, v16

    if-lez v6, :cond_0

    .line 122
    invoke-static {v8, v9}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v18

    .local v18, "fy":D
    goto :goto_0

    .line 124
    .end local v18    # "fy":D
    :cond_0
    mul-double v18, v8, v10

    add-double v18, v18, v14

    div-double v18, v18, v12

    .line 127
    .restart local v18    # "fy":D
    :goto_0
    const/4 v6, 0x0

    aget v20, v4, v6

    aget v21, v7, v6

    div-float v5, v20, v21

    move-object/from16 v20, v7

    float-to-double v6, v5

    .line 129
    .local v6, "xNormalized":D
    cmpl-double v5, v6, v16

    if-lez v5, :cond_1

    .line 130
    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v22

    .local v22, "fx":D
    goto :goto_1

    .line 132
    .end local v22    # "fx":D
    :cond_1
    mul-double v22, v6, v10

    add-double v22, v22, v14

    div-double v22, v22, v12

    .line 135
    .restart local v22    # "fx":D
    :goto_1
    const/4 v5, 0x2

    aget v24, v4, v5

    aget v20, v20, v5

    div-float v5, v24, v20

    float-to-double v12, v5

    .line 137
    .local v12, "zNormalized":D
    cmpl-double v5, v12, v16

    if-lez v5, :cond_2

    .line 138
    invoke-static {v12, v13}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v10

    const-wide/high16 v16, 0x405d000000000000L    # 116.0

    .local v10, "fz":D
    goto :goto_2

    .line 140
    .end local v10    # "fz":D
    :cond_2
    mul-double v10, v10, v12

    add-double/2addr v10, v14

    const-wide/high16 v16, 0x405d000000000000L    # 116.0

    div-double v10, v10, v16

    .line 143
    .restart local v10    # "fz":D
    :goto_2
    mul-double v16, v16, v18

    sub-double v16, v16, v14

    .line 144
    .local v16, "l":D
    const-wide v14, 0x407f400000000000L    # 500.0

    sub-double v25, v22, v18

    mul-double v25, v25, v14

    .line 145
    .local v25, "a":D
    const-wide/high16 v14, 0x4069000000000000L    # 200.0

    sub-double v27, v18, v10

    mul-double v27, v27, v14

    .line 146
    .local v27, "b":D
    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v14, 0x0

    aput-wide v16, v5, v14

    const/4 v14, 0x1

    aput-wide v25, v5, v14

    const/4 v14, 0x2

    aput-wide v27, v5, v14

    return-object v5
.end method

.method public static linearized(F)F
    .locals 4
    .param p0, "rgb"    # F

    .line 242
    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    .line 243
    const v0, 0x414eb852    # 12.92f

    div-float v0, p0, v0

    return v0

    .line 245
    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr v0, p0

    const v1, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static lstarFromInt(I)F
    .locals 3
    .param p0, "argb"    # I

    .line 67
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->labFromInt(I)[D

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    double-to-float v0, v1

    return v0
.end method

.method public static redFromInt(I)I
    .locals 1
    .param p0, "argb"    # I

    .line 40
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static final whitePointD65()[F
    .locals 2

    .line 31
    sget-object v0, Lcom/google/android/material/color/ColorUtils;->WHITE_POINT_D65:[F

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public static xyzFromInt(I)[F
    .locals 8
    .param p0, "argb"    # I

    .line 92
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->redFromInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    .line 93
    .local v0, "r":F
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->greenFromInt(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v3

    mul-float v3, v3, v2

    .line 94
    .local v3, "g":F
    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->blueFromInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-static {v4}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v1

    mul-float v1, v1, v2

    .line 95
    .local v1, "b":F
    const v2, 0x3ed31e17

    mul-float v2, v2, v0

    const v4, 0x3eb71a0d

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    const v4, 0x3e38d7b9

    mul-float v4, v4, v1

    add-float/2addr v2, v4

    .line 96
    .local v2, "x":F
    const v4, 0x3e59b3d0    # 0.2126f

    mul-float v4, v4, v0

    const v5, 0x3f371759    # 0.7152f

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    const v5, 0x3d93dd98    # 0.0722f

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    .line 97
    .local v4, "y":F
    const v5, 0x3c9e47ef

    mul-float v5, v5, v0

    const v6, 0x3df40c29

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    const v6, 0x3f7349cc

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    .line 98
    .local v5, "z":F
    const/4 v6, 0x3

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v7, 0x1

    aput v4, v6, v7

    const/4 v7, 0x2

    aput v5, v6, v7

    return-object v6
.end method

.method public static yFromLstar(F)F
    .locals 6
    .param p0, "lstar"    # F

    .line 228
    const/high16 v0, 0x41000000    # 8.0f

    .line 229
    .local v0, "ke":F
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v2, p0, v0

    if-lez v2, :cond_0

    .line 230
    float-to-double v2, p0

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    return v2

    .line 232
    :cond_0
    const v2, 0x4461d2f7

    div-float v2, p0, v2

    mul-float v2, v2, v1

    return v2
.end method
