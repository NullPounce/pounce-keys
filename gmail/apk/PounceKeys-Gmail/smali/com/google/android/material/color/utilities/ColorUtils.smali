.class public Lcom/google/android/material/color/utilities/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field static final SRGB_TO_XYZ:[[D

.field static final WHITE_POINT_D65:[D

.field static final XYZ_TO_SRGB:[[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    sput-object v1, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    .line 42
    new-array v1, v0, [D

    fill-array-data v1, :array_3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    new-array v3, v0, [D

    fill-array-data v3, :array_5

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    sput-object v1, Lcom/google/android/material/color/utilities/ColorUtils;->XYZ_TO_SRGB:[[D

    .line 55
    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fda63c2e8477c96L    # 0.41233895
        0x3fd6e341ae4b2c79L    # 0.35762064
        0x3fc71af7273e5d5eL    # 0.18051042
    .end array-data

    :array_1
    .array-data 8
        0x3fcb367a0f9096bcL    # 0.2126
        0x3fe6e2eb1c432ca5L    # 0.7152
        0x3fb27bb2fec56d5dL    # 0.0722
    .end array-data

    :array_2
    .array-data 8
        0x3f93c8fde0401c25L    # 0.01932141
        0x3fbe818525c434ceL    # 0.11916382
        0x3fee693974c0c730L    # 0.95034478
    .end array-data

    :array_3
    .array-data 8
        0x4009ee5750da932bL    # 3.2413774792388685
        -0x400765b9220c7764L    # -1.5376652402851851
        -0x402012c8101da46cL    # -0.49885366846268053
    .end array-data

    :array_4
    .array-data 8
        -0x4010fcc31912e57cL    # -0.9691452513005321
        0x3ffe03a05a04781dL    # 1.8758853451067872
        0x3fa5481eb1c0d367L    # 0.04156585616912061
    .end array-data

    :array_5
    .array-data 8
        0x3fac7a58f1e3e6efL    # 0.05562093689691305
        -0x4035e4cb650c5ffeL    # -0.20395524564742123
        0x3ff0ea357b841dfcL    # 1.0571799111220335
    .end array-data

    :array_6
    .array-data 8
        0x4057c3020c49ba5eL    # 95.047
        0x4059000000000000L    # 100.0
        0x405b3883126e978dL    # 108.883
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaFromArgb(I)I
    .locals 1
    .param p0, "argb"    # I

    .line 72
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static argbFromLab(DDD)I
    .locals 25
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 117
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    .line 118
    .local v0, "whitePoint":[D
    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    add-double v1, p0, v1

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    div-double/2addr v1, v3

    .line 119
    .local v1, "fy":D
    const-wide v3, 0x407f400000000000L    # 500.0

    div-double v3, p2, v3

    add-double/2addr v3, v1

    .line 120
    .local v3, "fx":D
    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    div-double v5, p4, v5

    sub-double v5, v1, v5

    .line 121
    .local v5, "fz":D
    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide v7

    .line 122
    .local v7, "xNormalized":D
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide v9

    .line 123
    .local v9, "yNormalized":D
    invoke-static {v5, v6}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide v11

    .line 124
    .local v11, "zNormalized":D
    const/4 v13, 0x0

    aget-wide v13, v0, v13

    mul-double/2addr v13, v7

    .line 125
    .local v13, "x":D
    const/4 v15, 0x1

    aget-wide v15, v0, v15

    mul-double v21, v9, v15

    .line 126
    .local v21, "y":D
    const/4 v15, 0x2

    aget-wide v15, v0, v15

    mul-double v23, v11, v15

    .line 127
    .local v23, "z":D
    move-wide v15, v13

    move-wide/from16 v17, v21

    move-wide/from16 v19, v23

    invoke-static/range {v15 .. v20}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromXyz(DDD)I

    move-result v15

    return v15
.end method

.method public static argbFromLinrgb([D)I
    .locals 4
    .param p0, "linrgb"    # [D

    .line 64
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v0

    .line 65
    .local v0, "r":I
    const/4 v1, 0x1

    aget-wide v1, p0, v1

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v1

    .line 66
    .local v1, "g":I
    const/4 v2, 0x2

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v2

    .line 67
    .local v2, "b":I
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    move-result v3

    return v3
.end method

.method public static argbFromLstar(D)I
    .locals 4
    .param p0, "lstar"    # D

    .line 164
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v0

    .line 165
    .local v0, "y":D
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v2

    .line 166
    .local v2, "component":I
    invoke-static {v2, v2, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    move-result v3

    return v3
.end method

.method public static argbFromRgb(III)I
    .locals 2
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .line 59
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static argbFromXyz(DDD)I
    .locals 12
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 97
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->XYZ_TO_SRGB:[[D

    .line 98
    .local v0, "matrix":[[D
    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-wide v3, v2, v1

    mul-double/2addr v3, p0

    aget-object v2, v0, v1

    const/4 v5, 0x1

    aget-wide v6, v2, v5

    mul-double/2addr v6, p2

    add-double/2addr v3, v6

    aget-object v2, v0, v1

    const/4 v6, 0x2

    aget-wide v7, v2, v6

    mul-double v7, v7, p4

    add-double/2addr v3, v7

    .line 99
    .local v3, "linearR":D
    aget-object v2, v0, v5

    aget-wide v7, v2, v1

    mul-double/2addr v7, p0

    aget-object v2, v0, v5

    aget-wide v9, v2, v5

    mul-double/2addr v9, p2

    add-double/2addr v7, v9

    aget-object v2, v0, v5

    aget-wide v9, v2, v6

    mul-double v9, v9, p4

    add-double/2addr v7, v9

    .line 100
    .local v7, "linearG":D
    aget-object v2, v0, v6

    aget-wide v1, v2, v1

    mul-double/2addr v1, p0

    aget-object v9, v0, v6

    aget-wide v10, v9, v5

    mul-double/2addr v10, p2

    add-double/2addr v1, v10

    aget-object v5, v0, v6

    aget-wide v9, v5, v6

    mul-double v9, v9, p4

    add-double/2addr v1, v9

    .line 101
    .local v1, "linearB":D
    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v5

    .line 102
    .local v5, "r":I
    invoke-static {v7, v8}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v6

    .line 103
    .local v6, "g":I
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/ColorUtils;->delinearized(D)I

    move-result v9

    .line 104
    .local v9, "b":I
    invoke-static {v5, v6, v9}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromRgb(III)I

    move-result v10

    return v10
.end method

.method public static blueFromArgb(I)I
    .locals 1
    .param p0, "argb"    # I

    .line 87
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static delinearized(D)I
    .locals 8
    .param p0, "rgbComponent"    # D

    .line 217
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p0, v0

    .line 218
    .local v0, "normalized":D
    const-wide/16 v2, 0x0

    .line 219
    .local v2, "delinearized":D
    const-wide v4, 0x3f69a5c37387b719L    # 0.0031308

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    .line 220
    const-wide v4, 0x4029d70a3d70a3d7L    # 12.92

    mul-double/2addr v4, v0

    .end local v2    # "delinearized":D
    .local v4, "delinearized":D
    goto :goto_0

    .line 222
    .end local v4    # "delinearized":D
    .restart local v2    # "delinearized":D
    :cond_0
    const-wide v4, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3ff0e147ae147ae1L    # 1.055

    mul-double/2addr v4, v6

    const-wide v6, 0x3fac28f5c28f5c29L    # 0.055

    sub-double/2addr v4, v6

    .line 224
    .end local v2    # "delinearized":D
    .restart local v4    # "delinearized":D
    :goto_0
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    const/16 v6, 0xff

    invoke-static {v3, v6, v2}, Lcom/google/android/material/color/utilities/MathUtils;->clampInt(III)I

    move-result v2

    return v2
.end method

.method public static greenFromArgb(I)I
    .locals 1
    .param p0, "argb"    # I

    .line 82
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static isOpaque(I)Z
    .locals 2
    .param p0, "argb"    # I

    .line 92
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->alphaFromArgb(I)I

    move-result v0

    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static labF(D)D
    .locals 8
    .param p0, "t"    # D

    .line 237
    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 238
    .local v0, "e":D
    const-wide v2, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 239
    .local v2, "kappa":D
    cmpl-double v4, p0, v0

    if-lez v4, :cond_0

    .line 240
    const-wide v4, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    return-wide v4

    .line 242
    :cond_0
    mul-double v4, v2, p0

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v4, v6

    return-wide v4
.end method

.method public static labFromArgb(I)[D
    .locals 37
    .param p0, "argb"    # I

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v0

    .line 138
    .local v0, "linearR":D
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v2

    .line 139
    .local v2, "linearG":D
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v4

    .line 140
    .local v4, "linearB":D
    sget-object v6, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    .line 141
    .local v6, "matrix":[[D
    const/4 v7, 0x0

    aget-object v8, v6, v7

    aget-wide v9, v8, v7

    mul-double/2addr v9, v0

    aget-object v8, v6, v7

    const/4 v11, 0x1

    aget-wide v12, v8, v11

    mul-double/2addr v12, v2

    add-double/2addr v9, v12

    aget-object v8, v6, v7

    const/4 v12, 0x2

    aget-wide v13, v8, v12

    mul-double/2addr v13, v4

    add-double/2addr v9, v13

    .line 142
    .local v9, "x":D
    aget-object v8, v6, v11

    aget-wide v13, v8, v7

    mul-double/2addr v13, v0

    aget-object v8, v6, v11

    aget-wide v15, v8, v11

    mul-double/2addr v15, v2

    add-double/2addr v13, v15

    aget-object v8, v6, v11

    aget-wide v15, v8, v12

    mul-double/2addr v15, v4

    add-double/2addr v13, v15

    .line 143
    .local v13, "y":D
    aget-object v8, v6, v12

    aget-wide v15, v8, v7

    mul-double/2addr v15, v0

    aget-object v8, v6, v12

    aget-wide v17, v8, v11

    mul-double v17, v17, v2

    add-double v15, v15, v17

    aget-object v8, v6, v12

    aget-wide v17, v8, v12

    mul-double v17, v17, v4

    add-double v15, v15, v17

    .line 144
    .local v15, "z":D
    sget-object v8, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    .line 145
    .local v8, "whitePoint":[D
    aget-wide v17, v8, v7

    div-double v17, v9, v17

    .line 146
    .local v17, "xNormalized":D
    aget-wide v19, v8, v11

    div-double v19, v13, v19

    .line 147
    .local v19, "yNormalized":D
    aget-wide v21, v8, v12

    div-double v21, v15, v21

    .line 148
    .local v21, "zNormalized":D
    invoke-static/range {v17 .. v18}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v23

    .line 149
    .local v23, "fx":D
    invoke-static/range {v19 .. v20}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v25

    .line 150
    .local v25, "fy":D
    invoke-static/range {v21 .. v22}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v27

    .line 151
    .local v27, "fz":D
    const-wide/high16 v29, 0x405d000000000000L    # 116.0

    mul-double v29, v29, v25

    const-wide/high16 v31, 0x4030000000000000L    # 16.0

    sub-double v29, v29, v31

    .line 152
    .local v29, "l":D
    const-wide v31, 0x407f400000000000L    # 500.0

    sub-double v33, v23, v25

    mul-double v33, v33, v31

    .line 153
    .local v33, "a":D
    const-wide/high16 v31, 0x4069000000000000L    # 200.0

    sub-double v35, v25, v27

    mul-double v35, v35, v31

    .line 154
    .local v35, "b":D
    const/4 v12, 0x3

    new-array v12, v12, [D

    aput-wide v29, v12, v7

    aput-wide v33, v12, v11

    const/4 v7, 0x2

    aput-wide v35, v12, v7

    return-object v12
.end method

.method static labInvf(D)D
    .locals 10
    .param p0, "ft"    # D

    .line 247
    const-wide v0, 0x3f822354d28f7cd6L    # 0.008856451679035631

    .line 248
    .local v0, "e":D
    const-wide v2, 0x408c3a5ed097b426L    # 903.2962962962963

    .line 249
    .local v2, "kappa":D
    mul-double v4, p0, p0

    mul-double/2addr v4, p0

    .line 250
    .local v4, "ft3":D
    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    .line 251
    return-wide v4

    .line 253
    :cond_0
    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    mul-double/2addr v6, p0

    const-wide/high16 v8, 0x4030000000000000L    # 16.0

    sub-double/2addr v6, v8

    div-double/2addr v6, v2

    return-wide v6
.end method

.method public static linearized(I)D
    .locals 9
    .param p0, "rgbComponent"    # I

    .line 202
    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    .line 203
    .local v0, "normalized":D
    const-wide v2, 0x3fa4b5daa07d970dL    # 0.040449936

    cmpg-double v2, v0, v2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-gtz v2, :cond_0

    .line 204
    const-wide v5, 0x4029d70a3d70a3d7L    # 12.92

    div-double v5, v0, v5

    mul-double/2addr v5, v3

    return-wide v5

    .line 206
    :cond_0
    const-wide v5, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v5, v0

    const-wide v7, 0x3ff0e147ae147ae1L    # 1.055

    div-double/2addr v5, v7

    const-wide v7, 0x4003333333333333L    # 2.4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v5, v3

    return-wide v5
.end method

.method public static lstarFromArgb(I)D
    .locals 7
    .param p0, "argb"    # I

    .line 176
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->xyzFromArgb(I)[D

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    .line 177
    .local v1, "y":D
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double v3, v1, v3

    invoke-static {v3, v4}, Lcom/google/android/material/color/utilities/ColorUtils;->labF(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x405d000000000000L    # 116.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v5

    return-wide v3
.end method

.method public static redFromArgb(I)I
    .locals 1
    .param p0, "argb"    # I

    .line 77
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static whitePointD65()[D
    .locals 1

    .line 233
    sget-object v0, Lcom/google/android/material/color/utilities/ColorUtils;->WHITE_POINT_D65:[D

    return-object v0
.end method

.method public static xyzFromArgb(I)[D
    .locals 8
    .param p0, "argb"    # I

    .line 109
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v0

    .line 110
    .local v0, "r":D
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v2

    .line 111
    .local v2, "g":D
    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v4

    .line 112
    .local v4, "b":D
    const/4 v6, 0x3

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v7, 0x1

    aput-wide v2, v6, v7

    const/4 v7, 0x2

    aput-wide v4, v6, v7

    sget-object v7, Lcom/google/android/material/color/utilities/ColorUtils;->SRGB_TO_XYZ:[[D

    invoke-static {v6, v7}, Lcom/google/android/material/color/utilities/MathUtils;->matrixMultiply([D[[D)[D

    move-result-object v6

    return-object v6
.end method

.method public static yFromLstar(D)D
    .locals 4
    .param p0, "lstar"    # D

    .line 192
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr v0, p0

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ColorUtils;->labInvf(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    return-wide v0
.end method
