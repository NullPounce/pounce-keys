.class final Lcom/google/android/material/color/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/ViewingConditions;


# instance fields
.field private final aw:F

.field private final c:F

.field private final fl:F

.field private final flRoot:F

.field private final n:F

.field private final nbb:F

.field private final nc:F

.field private final ncb:F

.field private final rgbD:[F

.field private final z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    invoke-static {}, Lcom/google/android/material/color/ColorUtils;->whitePointD65()[F

    move-result-object v0

    .line 35
    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1}, Lcom/google/android/material/color/ColorUtils;->yFromLstar(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    .line 33
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/google/android/material/color/ViewingConditions;->make([FFFFZ)Lcom/google/android/material/color/ViewingConditions;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    .line 32
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .locals 0
    .param p1, "n"    # F
    .param p2, "aw"    # F
    .param p3, "nbb"    # F
    .param p4, "ncb"    # F
    .param p5, "c"    # F
    .param p6, "nc"    # F
    .param p7, "rgbD"    # [F
    .param p8, "fl"    # F
    .param p9, "flRoot"    # F
    .param p10, "z"    # F

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/google/android/material/color/ViewingConditions;->n:F

    .line 181
    iput p2, p0, Lcom/google/android/material/color/ViewingConditions;->aw:F

    .line 182
    iput p3, p0, Lcom/google/android/material/color/ViewingConditions;->nbb:F

    .line 183
    iput p4, p0, Lcom/google/android/material/color/ViewingConditions;->ncb:F

    .line 184
    iput p5, p0, Lcom/google/android/material/color/ViewingConditions;->c:F

    .line 185
    iput p6, p0, Lcom/google/android/material/color/ViewingConditions;->nc:F

    .line 186
    iput-object p7, p0, Lcom/google/android/material/color/ViewingConditions;->rgbD:[F

    .line 187
    iput p8, p0, Lcom/google/android/material/color/ViewingConditions;->fl:F

    .line 188
    iput p9, p0, Lcom/google/android/material/color/ViewingConditions;->flRoot:F

    .line 189
    iput p10, p0, Lcom/google/android/material/color/ViewingConditions;->z:F

    .line 190
    return-void
.end method

.method static make([FFFFZ)Lcom/google/android/material/color/ViewingConditions;
    .locals 31
    .param p0, "whitePoint"    # [F
    .param p1, "adaptingLuminance"    # F
    .param p2, "backgroundLstar"    # F
    .param p3, "surround"    # F
    .param p4, "discountingIlluminant"    # Z

    .line 116
    move/from16 v0, p1

    sget-object v1, Lcom/google/android/material/color/Cam16;->XYZ_TO_CAM16RGB:[[F

    .line 117
    .local v1, "matrix":[[F
    move-object/from16 v2, p0

    .line 118
    .local v2, "xyz":[F
    const/4 v3, 0x0

    aget v4, v2, v3

    aget-object v5, v1, v3

    aget v5, v5, v3

    mul-float/2addr v4, v5

    const/4 v5, 0x1

    aget v6, v2, v5

    aget-object v7, v1, v3

    aget v7, v7, v5

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    const/4 v6, 0x2

    aget v7, v2, v6

    aget-object v8, v1, v3

    aget v8, v8, v6

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 119
    .local v4, "rW":F
    aget v7, v2, v3

    aget-object v8, v1, v5

    aget v8, v8, v3

    mul-float/2addr v7, v8

    aget v8, v2, v5

    aget-object v9, v1, v5

    aget v9, v9, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aget v8, v2, v6

    aget-object v9, v1, v5

    aget v9, v9, v6

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 120
    .local v7, "gW":F
    aget v8, v2, v3

    aget-object v9, v1, v6

    aget v9, v9, v3

    mul-float/2addr v8, v9

    aget v9, v2, v5

    aget-object v10, v1, v6

    aget v10, v10, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aget v9, v2, v6

    aget-object v10, v1, v6

    aget v10, v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 121
    .local v8, "bW":F
    const/high16 v9, 0x41200000    # 10.0f

    div-float v10, p3, v9

    const v11, 0x3f4ccccd    # 0.8f

    add-float/2addr v10, v11

    .line 123
    .local v10, "f":F
    float-to-double v12, v10

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    cmpl-double v12, v12, v14

    const v13, 0x3f170a3d    # 0.59f

    if-ltz v12, :cond_0

    .line 124
    const v11, 0x3f666666    # 0.9f

    sub-float v11, v10, v11

    mul-float/2addr v11, v9

    const v9, 0x3f30a3d7    # 0.69f

    invoke-static {v13, v9, v11}, Lcom/google/android/material/color/MathUtils;->lerp(FFF)F

    move-result v9

    move/from16 v17, v9

    goto :goto_0

    .line 125
    :cond_0
    sub-float v11, v10, v11

    mul-float/2addr v11, v9

    const v9, 0x3f066666    # 0.525f

    invoke-static {v9, v13, v11}, Lcom/google/android/material/color/MathUtils;->lerp(FFF)F

    move-result v9

    move/from16 v17, v9

    :goto_0
    nop

    .line 127
    .local v17, "c":F
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p4, :cond_1

    .line 128
    move v11, v9

    goto :goto_1

    .line 129
    :cond_1
    neg-float v11, v0

    const/high16 v12, 0x42280000    # 42.0f

    sub-float/2addr v11, v12

    const/high16 v12, 0x42b80000    # 92.0f

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v11, v11

    const v12, 0x3e8e38e4

    mul-float/2addr v11, v12

    sub-float v11, v9, v11

    mul-float/2addr v11, v10

    :goto_1
    nop

    .line 130
    .local v11, "d":F
    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    move v12, v9

    goto :goto_2

    :cond_2
    float-to-double v12, v11

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    move v12, v11

    :goto_2
    move v11, v12

    .line 131
    move/from16 v18, v10

    .line 132
    .local v18, "nc":F
    const/4 v12, 0x3

    new-array v13, v12, [F

    const/high16 v14, 0x42c80000    # 100.0f

    div-float v15, v14, v4

    mul-float/2addr v15, v11

    add-float/2addr v15, v9

    sub-float/2addr v15, v11

    aput v15, v13, v3

    div-float v15, v14, v7

    mul-float/2addr v15, v11

    add-float/2addr v15, v9

    sub-float/2addr v15, v11

    aput v15, v13, v5

    div-float/2addr v14, v8

    mul-float/2addr v14, v11

    add-float/2addr v14, v9

    sub-float/2addr v14, v11

    aput v14, v13, v6

    move-object/from16 v23, v13

    .line 136
    .local v23, "rgbD":[F
    const/high16 v13, 0x40a00000    # 5.0f

    mul-float/2addr v13, v0

    add-float/2addr v13, v9

    div-float v24, v9, v13

    .line 137
    .local v24, "k":F
    mul-float v13, v24, v24

    mul-float v13, v13, v24

    mul-float v25, v13, v24

    .line 138
    .local v25, "k4":F
    sub-float v9, v9, v25

    .line 139
    .local v9, "k4F":F
    mul-float v13, v25, v0

    const v14, 0x3dcccccd    # 0.1f

    mul-float/2addr v14, v9

    mul-float/2addr v14, v9

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    move/from16 v26, v7

    .end local v7    # "gW":F
    .local v26, "gW":F
    float-to-double v6, v0

    mul-double/2addr v6, v15

    .line 140
    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v14, v6

    add-float v6, v13, v14

    .line 141
    .local v6, "fl":F
    invoke-static/range {p2 .. p2}, Lcom/google/android/material/color/ColorUtils;->yFromLstar(F)F

    move-result v7

    aget v13, p0, v5

    div-float/2addr v7, v13

    .line 142
    .local v7, "n":F
    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    const v14, 0x3fbd70a4    # 1.48f

    add-float v27, v13, v14

    .line 143
    .local v27, "z":F
    float-to-double v13, v7

    move/from16 v28, v6

    .end local v6    # "fl":F
    .local v28, "fl":F
    const-wide v5, 0x3fc999999999999aL    # 0.2

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3f39999a    # 0.725f

    div-float/2addr v6, v5

    .line 144
    .local v6, "nbb":F
    move/from16 v16, v6

    .line 145
    .local v16, "ncb":F
    new-array v5, v12, [F

    aget v13, v23, v3

    mul-float v13, v13, v28

    mul-float/2addr v13, v4

    float-to-double v13, v13

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v13, v13, v20

    .line 147
    move/from16 v29, v4

    .end local v4    # "rW":F
    .local v29, "rW":F
    const-wide v3, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    double-to-float v13, v13

    const/4 v14, 0x0

    aput v13, v5, v14

    const/4 v13, 0x1

    aget v14, v23, v13

    mul-float v14, v14, v28

    mul-float v14, v14, v26

    float-to-double v14, v14

    div-double v14, v14, v20

    .line 148
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    aput v14, v5, v13

    const/4 v13, 0x2

    aget v14, v23, v13

    mul-float v14, v14, v28

    mul-float/2addr v14, v8

    float-to-double v12, v14

    div-double v12, v12, v20

    .line 149
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x2

    aput v3, v5, v4

    move-object v3, v5

    .line 152
    .local v3, "rgbAFactors":[F
    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aget v12, v3, v5

    const/high16 v13, 0x43c80000    # 400.0f

    mul-float/2addr v12, v13

    aget v14, v3, v5

    const v20, 0x41d90a3d    # 27.13f

    add-float v14, v14, v20

    div-float/2addr v12, v14

    aput v12, v4, v5

    const/4 v5, 0x1

    aget v12, v3, v5

    mul-float/2addr v12, v13

    aget v14, v3, v5

    add-float v14, v14, v20

    div-float/2addr v12, v14

    aput v12, v4, v5

    const/4 v5, 0x2

    aget v12, v3, v5

    mul-float/2addr v12, v13

    aget v13, v3, v5

    add-float v13, v13, v20

    div-float/2addr v12, v13

    aput v12, v4, v5

    .line 159
    .local v4, "rgbA":[F
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    aget v13, v4, v13

    mul-float/2addr v13, v12

    const/4 v12, 0x1

    aget v12, v4, v12

    add-float/2addr v13, v12

    const v12, 0x3d4ccccd    # 0.05f

    aget v5, v4, v5

    mul-float/2addr v5, v12

    add-float/2addr v13, v5

    mul-float v5, v13, v6

    .line 160
    .local v5, "aw":F
    new-instance v30, Lcom/google/android/material/color/ViewingConditions;

    move/from16 v15, v28

    .end local v28    # "fl":F
    .local v15, "fl":F
    float-to-double v12, v15

    move-object/from16 v28, v1

    .end local v1    # "matrix":[[F
    .local v28, "matrix":[[F
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move-object/from16 v12, v30

    move v13, v7

    move v14, v5

    move v1, v15

    .end local v15    # "fl":F
    .local v1, "fl":F
    move v15, v6

    move-object/from16 v19, v23

    move/from16 v20, v1

    move/from16 v21, v0

    move/from16 v22, v27

    invoke-direct/range {v12 .. v22}, Lcom/google/android/material/color/ViewingConditions;-><init>(FFFFFF[FFFF)V

    return-object v30
.end method


# virtual methods
.method public getAw()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->aw:F

    return v0
.end method

.method getC()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->c:F

    return v0
.end method

.method getFl()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->fl:F

    return v0
.end method

.method public getFlRoot()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->flRoot:F

    return v0
.end method

.method public getN()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->n:F

    return v0
.end method

.method public getNbb()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->nbb:F

    return v0
.end method

.method getNc()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->nc:F

    return v0
.end method

.method getNcb()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->ncb:F

    return v0
.end method

.method public getRgbD()[F
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/material/color/ViewingConditions;->rgbD:[F

    return-object v0
.end method

.method getZ()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/google/android/material/color/ViewingConditions;->z:F

    return v0
.end method
