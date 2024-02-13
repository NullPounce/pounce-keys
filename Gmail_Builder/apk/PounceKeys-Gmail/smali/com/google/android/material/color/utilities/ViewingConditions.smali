.class public final Lcom/google/android/material/color/utilities/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;


# instance fields
.field private final aw:D

.field private final c:D

.field private final fl:D

.field private final flRoot:D

.field private final n:D

.field private final nbb:D

.field private final nc:D

.field private final ncb:D

.field private final rgbD:[D

.field private final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    const/4 v0, 0x3

    new-array v1, v0, [D

    .line 42
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v0

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    .line 43
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v0

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    .line 44
    invoke-static {}, Lcom/google/android/material/color/utilities/ColorUtils;->whitePointD65()[D

    move-result-object v0

    const/4 v2, 0x2

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    .line 46
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v2

    const-wide v4, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/4 v8, 0x0

    .line 40
    invoke-static/range {v1 .. v8}, Lcom/google/android/material/color/utilities/ViewingConditions;->make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 39
    return-void
.end method

.method private constructor <init>(DDDDDD[DDDD)V
    .locals 16
    .param p1, "n"    # D
    .param p3, "aw"    # D
    .param p5, "nbb"    # D
    .param p7, "ncb"    # D
    .param p9, "c"    # D
    .param p11, "nc"    # D
    .param p13, "rgbD"    # [D
    .param p14, "fl"    # D
    .param p16, "flRoot"    # D
    .param p18, "z"    # D

    .line 189
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    .line 191
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    .line 192
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    .line 193
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    .line 194
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    .line 195
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    .line 196
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    .line 197
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    .line 198
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    .line 199
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    .line 200
    return-void
.end method

.method static make([DDDDZ)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 58
    .param p0, "whitePoint"    # [D
    .param p1, "adaptingLuminance"    # D
    .param p3, "backgroundLstar"    # D
    .param p5, "surround"    # D
    .param p7, "discountingIlluminant"    # Z

    .line 127
    move-wide/from16 v0, p1

    sget-object v2, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 128
    .local v2, "matrix":[[D
    move-object/from16 v3, p0

    .line 129
    .local v3, "xyz":[D
    const/4 v4, 0x0

    aget-wide v5, v3, v4

    aget-object v7, v2, v4

    aget-wide v8, v7, v4

    mul-double v5, v5, v8

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    aget-object v10, v2, v4

    aget-wide v11, v10, v7

    mul-double v8, v8, v11

    add-double/2addr v5, v8

    const/4 v8, 0x2

    aget-wide v9, v3, v8

    aget-object v11, v2, v4

    aget-wide v12, v11, v8

    mul-double v9, v9, v12

    add-double/2addr v5, v9

    .line 130
    .local v5, "rW":D
    aget-wide v9, v3, v4

    aget-object v11, v2, v7

    aget-wide v12, v11, v4

    mul-double v9, v9, v12

    aget-wide v11, v3, v7

    aget-object v13, v2, v7

    aget-wide v14, v13, v7

    mul-double v11, v11, v14

    add-double/2addr v9, v11

    aget-wide v11, v3, v8

    aget-object v13, v2, v7

    aget-wide v14, v13, v8

    mul-double v11, v11, v14

    add-double/2addr v9, v11

    .line 131
    .local v9, "gW":D
    aget-wide v11, v3, v4

    aget-object v13, v2, v8

    aget-wide v14, v13, v4

    mul-double v11, v11, v14

    aget-wide v13, v3, v7

    aget-object v15, v2, v8

    aget-wide v16, v15, v7

    mul-double v13, v13, v16

    add-double/2addr v11, v13

    aget-wide v13, v3, v8

    aget-object v15, v2, v8

    aget-wide v16, v15, v8

    mul-double v13, v13, v16

    add-double/2addr v11, v13

    .line 132
    .local v11, "bW":D
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    div-double v15, p5, v13

    const-wide v17, 0x3fe999999999999aL    # 0.8

    add-double v15, v15, v17

    .line 134
    .local v15, "f":D
    const-wide v19, 0x3feccccccccccccdL    # 0.9

    cmpl-double v21, v15, v19

    if-ltz v21, :cond_0

    .line 135
    const-wide v22, 0x3fe2e147ae147ae1L    # 0.59

    const-wide v24, 0x3fe6147ae147ae14L    # 0.69

    sub-double v17, v15, v19

    mul-double v26, v17, v13

    invoke-static/range {v22 .. v27}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    move-result-wide v13

    move-wide/from16 v28, v13

    goto :goto_0

    .line 136
    :cond_0
    const-wide v19, 0x3fe0cccccccccccdL    # 0.525

    const-wide v21, 0x3fe2e147ae147ae1L    # 0.59

    sub-double v17, v15, v17

    mul-double v13, v13, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v13

    invoke-static/range {v17 .. v22}, Lcom/google/android/material/color/utilities/MathUtils;->lerp(DDD)D

    move-result-wide v13

    move-wide/from16 v28, v13

    :goto_0
    nop

    .line 138
    .local v28, "c":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-eqz p7, :cond_1

    .line 139
    move-wide/from16 v23, v13

    goto :goto_1

    .line 140
    :cond_1
    neg-double v7, v0

    const-wide/high16 v19, 0x4045000000000000L    # 42.0

    sub-double v7, v7, v19

    const-wide/high16 v19, 0x4057000000000000L    # 92.0

    div-double v7, v7, v19

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    const-wide v19, 0x3fd1c71c71c71c72L    # 0.2777777777777778

    mul-double v7, v7, v19

    sub-double v7, v13, v7

    mul-double v7, v7, v15

    move-wide/from16 v23, v7

    :goto_1
    nop

    .line 141
    .local v23, "d":D
    const-wide/16 v19, 0x0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v19 .. v24}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v7

    .line 142
    .end local v23    # "d":D
    .local v7, "d":D
    move-wide/from16 v30, v15

    .line 143
    .local v30, "nc":D
    const/4 v4, 0x3

    new-array v13, v4, [D

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v24, v22, v5

    mul-double v24, v24, v7

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v20

    sub-double v24, v24, v7

    const/4 v14, 0x0

    aput-wide v24, v13, v14

    div-double v24, v22, v9

    mul-double v24, v24, v7

    add-double v24, v24, v20

    sub-double v24, v24, v7

    const/4 v14, 0x1

    aput-wide v24, v13, v14

    div-double v24, v22, v11

    mul-double v24, v24, v7

    add-double v24, v24, v20

    sub-double v24, v24, v7

    const/4 v14, 0x2

    aput-wide v24, v13, v14

    .local v13, "rgbD":[D
    move-object/from16 v32, v13

    .line 147
    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    mul-double v26, v0, v24

    add-double v26, v26, v20

    div-double v39, v20, v26

    .line 148
    .local v39, "k":D
    mul-double v26, v39, v39

    mul-double v26, v26, v39

    mul-double v41, v26, v39

    .line 149
    .local v41, "k4":D
    sub-double v43, v20, v41

    .line 150
    .local v43, "k4F":D
    mul-double v20, v41, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v26, v26, v43

    mul-double v26, v26, v43

    mul-double v24, v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v24

    mul-double v26, v26, v24

    move-wide/from16 v45, v5

    .end local v5    # "rW":D
    .local v45, "rW":D
    add-double v4, v20, v26

    .local v4, "fl":D
    move-wide/from16 v33, v4

    .line 151
    invoke-static/range {p3 .. p4}, Lcom/google/android/material/color/utilities/ColorUtils;->yFromLstar(D)D

    move-result-wide v20

    const/4 v14, 0x1

    aget-wide v24, p0, v14

    move-wide/from16 v47, v7

    .end local v7    # "d":D
    .local v47, "d":D
    div-double v6, v20, v24

    .local v6, "n":D
    move-wide/from16 v20, v6

    .line 152
    const-wide v24, 0x3ff7ae147ae147aeL    # 1.48

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    add-double v49, v26, v24

    .local v49, "z":D
    move-wide/from16 v37, v49

    .line 153
    move-wide/from16 v51, v9

    .end local v9    # "gW":D
    .local v51, "gW":D
    const-wide v8, 0x3fc999999999999aL    # 0.2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v24, 0x3fe7333333333333L    # 0.725

    div-double v8, v24, v8

    .local v8, "nbb":D
    move-wide/from16 v24, v8

    .line 154
    move-wide/from16 v26, v8

    .line 155
    .local v26, "ncb":D
    const/4 v10, 0x3

    new-array v14, v10, [D

    const/16 v19, 0x0

    aget-wide v35, v13, v19

    mul-double v35, v35, v4

    mul-double v35, v35, v45

    move-wide/from16 v53, v11

    .end local v11    # "bW":D
    .local v53, "bW":D
    div-double v10, v35, v22

    .line 157
    move-object/from16 v55, v13

    .end local v13    # "rgbD":[D
    .local v55, "rgbD":[D
    const-wide v12, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    aput-wide v10, v14, v19

    const/4 v10, 0x1

    aget-wide v56, v55, v10

    mul-double v56, v56, v4

    mul-double v56, v56, v51

    div-double v10, v56, v22

    .line 158
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/16 v17, 0x1

    aput-wide v10, v14, v17

    const/4 v10, 0x2

    aget-wide v56, v55, v10

    mul-double v56, v56, v4

    mul-double v56, v56, v53

    div-double v10, v56, v22

    .line 159
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const/4 v12, 0x2

    aput-wide v10, v14, v12

    move-object v10, v14

    .line 162
    .local v10, "rgbAFactors":[D
    const/4 v11, 0x3

    new-array v11, v11, [D

    const/4 v12, 0x0

    aget-wide v13, v10, v12

    const-wide/high16 v22, 0x4079000000000000L    # 400.0

    mul-double v13, v13, v22

    aget-wide v35, v10, v12

    const-wide v56, 0x403b2147ae147ae1L    # 27.13

    add-double v35, v35, v56

    div-double v13, v13, v35

    aput-wide v13, v11, v12

    const/4 v12, 0x1

    aget-wide v13, v10, v12

    mul-double v13, v13, v22

    aget-wide v35, v10, v12

    add-double v35, v35, v56

    div-double v13, v13, v35

    aput-wide v13, v11, v12

    const/4 v12, 0x2

    aget-wide v13, v10, v12

    mul-double v13, v13, v22

    aget-wide v22, v10, v12

    add-double v22, v22, v56

    div-double v13, v13, v22

    aput-wide v13, v11, v12

    .line 169
    .local v11, "rgbA":[D
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const/16 v18, 0x0

    aget-wide v18, v11, v18

    mul-double v18, v18, v13

    const/4 v13, 0x1

    aget-wide v13, v11, v13

    add-double v18, v18, v13

    const-wide v13, 0x3fa999999999999aL    # 0.05

    aget-wide v22, v11, v12

    mul-double v22, v22, v13

    add-double v18, v18, v22

    mul-double v12, v18, v8

    .local v12, "aw":D
    move-wide/from16 v22, v12

    .line 170
    new-instance v14, Lcom/google/android/material/color/utilities/ViewingConditions;

    move-object/from16 v19, v14

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v35

    invoke-direct/range {v19 .. v38}, Lcom/google/android/material/color/utilities/ViewingConditions;-><init>(DDDDDD[DDDD)V

    return-object v14
.end method


# virtual methods
.method public getAw()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->aw:D

    return-wide v0
.end method

.method getC()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->c:D

    return-wide v0
.end method

.method getFl()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->fl:D

    return-wide v0
.end method

.method public getFlRoot()D
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->flRoot:D

    return-wide v0
.end method

.method public getN()D
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->n:D

    return-wide v0
.end method

.method public getNbb()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nbb:D

    return-wide v0
.end method

.method getNc()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->nc:D

    return-wide v0
.end method

.method getNcb()D
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->ncb:D

    return-wide v0
.end method

.method public getRgbD()[D
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->rgbD:[D

    return-object v0
.end method

.method getZ()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ViewingConditions;->z:D

    return-wide v0
.end method
