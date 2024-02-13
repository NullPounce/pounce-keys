.class final Lcom/google/android/material/color/Cam16;
.super Ljava/lang/Object;
.source "Cam16.java"


# static fields
.field static final CAM16RGB_TO_XYZ:[[F

.field static final XYZ_TO_CAM16RGB:[[F


# instance fields
.field private final astar:F

.field private final bstar:F

.field private final chroma:F

.field private final hue:F

.field private final j:F

.field private final jstar:F

.field private final m:F

.field private final q:F

.field private final s:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    filled-new-array {v1, v2, v3}, [[F

    move-result-object v1

    sput-object v1, Lcom/google/android/material/color/Cam16;->XYZ_TO_CAM16RGB:[[F

    .line 45
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    new-array v2, v0, [F

    fill-array-data v2, :array_4

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    filled-new-array {v1, v2, v0}, [[F

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/Cam16;->CAM16RGB_TO_XYZ:[[F

    return-void

    :array_0
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    :array_1
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_2
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_3
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_4
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_5
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data
.end method

.method private constructor <init>(FFFFFFFFF)V
    .locals 0
    .param p1, "hue"    # F
    .param p2, "chroma"    # F
    .param p3, "j"    # F
    .param p4, "q"    # F
    .param p5, "m"    # F
    .param p6, "s"    # F
    .param p7, "jstar"    # F
    .param p8, "astar"    # F
    .param p9, "bstar"    # F

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lcom/google/android/material/color/Cam16;->hue:F

    .line 167
    iput p2, p0, Lcom/google/android/material/color/Cam16;->chroma:F

    .line 168
    iput p3, p0, Lcom/google/android/material/color/Cam16;->j:F

    .line 169
    iput p4, p0, Lcom/google/android/material/color/Cam16;->q:F

    .line 170
    iput p5, p0, Lcom/google/android/material/color/Cam16;->m:F

    .line 171
    iput p6, p0, Lcom/google/android/material/color/Cam16;->s:F

    .line 172
    iput p7, p0, Lcom/google/android/material/color/Cam16;->jstar:F

    .line 173
    iput p8, p0, Lcom/google/android/material/color/Cam16;->astar:F

    .line 174
    iput p9, p0, Lcom/google/android/material/color/Cam16;->bstar:F

    .line 175
    return-void
.end method

.method public static fromInt(I)Lcom/google/android/material/color/Cam16;
    .locals 1
    .param p0, "argb"    # I

    .line 183
    sget-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    invoke-static {p0, v0}, Lcom/google/android/material/color/Cam16;->fromIntInViewingConditions(ILcom/google/android/material/color/ViewingConditions;)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    return-object v0
.end method

.method static fromIntInViewingConditions(ILcom/google/android/material/color/ViewingConditions;)Lcom/google/android/material/color/Cam16;
    .locals 56
    .param p0, "argb"    # I
    .param p1, "viewingConditions"    # Lcom/google/android/material/color/ViewingConditions;

    .line 198
    move/from16 v0, p0

    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    .line 199
    .local v1, "red":I
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    .line 200
    .local v2, "green":I
    and-int/lit16 v3, v0, 0xff

    .line 201
    .local v3, "blue":I
    int-to-float v4, v1

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    .line 202
    .local v4, "redL":F
    int-to-float v7, v2

    div-float/2addr v7, v5

    invoke-static {v7}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v7

    mul-float/2addr v7, v6

    .line 203
    .local v7, "greenL":F
    int-to-float v8, v3

    div-float/2addr v8, v5

    invoke-static {v8}, Lcom/google/android/material/color/ColorUtils;->linearized(F)F

    move-result v5

    mul-float/2addr v5, v6

    .line 204
    .local v5, "blueL":F
    const v8, 0x3ed31e17

    mul-float/2addr v8, v4

    const v9, 0x3eb71a0d

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    const v9, 0x3e38d7b9

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    .line 205
    .local v8, "x":F
    const v9, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v9, v4

    const v10, 0x3f371759    # 0.7152f

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    const v10, 0x3d93dd98    # 0.0722f

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    .line 206
    .local v9, "y":F
    const v10, 0x3c9e47ef

    mul-float/2addr v10, v4

    const v11, 0x3df40c29

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    const v11, 0x3f7349cc

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    .line 209
    .local v10, "z":F
    sget-object v11, Lcom/google/android/material/color/Cam16;->XYZ_TO_CAM16RGB:[[F

    .line 210
    .local v11, "matrix":[[F
    const/4 v12, 0x0

    aget-object v13, v11, v12

    aget v13, v13, v12

    mul-float/2addr v13, v8

    aget-object v14, v11, v12

    const/4 v15, 0x1

    aget v14, v14, v15

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    aget-object v14, v11, v12

    const/16 v16, 0x2

    aget v14, v14, v16

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    .line 211
    .local v13, "rT":F
    aget-object v14, v11, v15

    aget v14, v14, v12

    mul-float/2addr v14, v8

    aget-object v17, v11, v15

    aget v17, v17, v15

    mul-float v17, v17, v9

    add-float v14, v14, v17

    aget-object v17, v11, v15

    aget v17, v17, v16

    mul-float v17, v17, v10

    add-float v14, v14, v17

    .line 212
    .local v14, "gT":F
    aget-object v17, v11, v16

    aget v17, v17, v12

    mul-float v17, v17, v8

    aget-object v18, v11, v16

    aget v18, v18, v15

    mul-float v18, v18, v9

    add-float v17, v17, v18

    aget-object v18, v11, v16

    aget v18, v18, v16

    mul-float v18, v18, v10

    add-float v17, v17, v18

    .line 215
    .local v17, "bT":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getRgbD()[F

    move-result-object v18

    aget v12, v18, v12

    mul-float/2addr v12, v13

    .line 216
    .local v12, "rD":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getRgbD()[F

    move-result-object v18

    aget v15, v18, v15

    mul-float/2addr v15, v14

    .line 217
    .local v15, "gD":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getRgbD()[F

    move-result-object v18

    aget v16, v18, v16

    mul-float v16, v16, v17

    .line 220
    .local v16, "bD":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFl()F

    move-result v18

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v6, v18, v19

    move/from16 v18, v1

    .end local v1    # "red":I
    .local v18, "red":I
    float-to-double v0, v6

    const-wide/high16 v21, 0x4059000000000000L    # 100.0

    div-double v0, v0, v21

    move v6, v2

    move/from16 v19, v3

    .end local v2    # "green":I
    .end local v3    # "blue":I
    .local v6, "green":I
    .local v19, "blue":I
    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 221
    .local v0, "rAF":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFl()F

    move-result v1

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v23

    mul-float v1, v1, v23

    move/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "redL":F
    .end local v5    # "blueL":F
    .local v23, "redL":F
    .local v24, "blueL":F
    float-to-double v4, v1

    div-double v4, v4, v21

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 222
    .local v1, "gAF":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFl()F

    move-result v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double v4, v4, v21

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 223
    .local v2, "bAF":F
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v3

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    const v5, 0x41d90a3d    # 27.13f

    add-float v25, v0, v5

    div-float v3, v3, v25

    .line 224
    .local v3, "rA":F
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v25

    mul-float v25, v25, v4

    mul-float v25, v25, v1

    add-float v26, v1, v5

    div-float v5, v25, v26

    .line 225
    .local v5, "gA":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    move-result v25

    mul-float v25, v25, v4

    mul-float v25, v25, v2

    const v4, 0x41d90a3d    # 27.13f

    add-float/2addr v4, v2

    div-float v4, v25, v4

    .line 228
    .local v4, "bA":F
    const-wide/high16 v25, 0x4026000000000000L    # 11.0

    move/from16 v27, v0

    move/from16 v28, v1

    .end local v0    # "rAF":F
    .end local v1    # "gAF":F
    .local v27, "rAF":F
    .local v28, "gAF":F
    float-to-double v0, v3

    mul-double v0, v0, v25

    const-wide/high16 v25, -0x3fd8000000000000L    # -12.0

    move/from16 v30, v6

    move/from16 v29, v7

    .end local v6    # "green":I
    .end local v7    # "greenL":F
    .local v29, "greenL":F
    .local v30, "green":I
    float-to-double v6, v5

    mul-double v6, v6, v25

    add-double/2addr v0, v6

    float-to-double v6, v4

    add-double/2addr v0, v6

    double-to-float v0, v0

    const/high16 v1, 0x41300000    # 11.0f

    div-float/2addr v0, v1

    .line 230
    .local v0, "a":F
    add-float v1, v3, v5

    float-to-double v6, v1

    move/from16 v25, v2

    .end local v2    # "bAF":F
    .local v25, "bAF":F
    float-to-double v1, v4

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v31

    sub-double/2addr v6, v1

    double-to-float v1, v6

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v1, v2

    .line 233
    .local v1, "b":F
    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v6, v3, v2

    mul-float v7, v5, v2

    add-float/2addr v6, v7

    const/high16 v7, 0x41a80000    # 21.0f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    .line 234
    .local v6, "u":F
    const/high16 v7, 0x42200000    # 40.0f

    mul-float/2addr v7, v3

    mul-float v26, v5, v2

    add-float v7, v7, v26

    add-float/2addr v7, v4

    div-float/2addr v7, v2

    .line 237
    .local v7, "p2":F
    move/from16 v26, v3

    .end local v3    # "rA":F
    .local v26, "rA":F
    float-to-double v2, v1

    move/from16 v34, v4

    move/from16 v33, v5

    .end local v4    # "bA":F
    .end local v5    # "gA":F
    .local v33, "gA":F
    .local v34, "bA":F
    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 238
    .local v2, "atan2":F
    const/high16 v3, 0x43340000    # 180.0f

    mul-float v4, v2, v3

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v4, v5

    .line 240
    .local v4, "atanDegrees":F
    const/16 v35, 0x0

    cmpg-float v35, v4, v35

    const/high16 v36, 0x43b40000    # 360.0f

    if-gez v35, :cond_0

    .line 241
    add-float v35, v4, v36

    goto :goto_0

    .line 242
    :cond_0
    cmpl-float v35, v4, v36

    if-ltz v35, :cond_1

    sub-float v35, v4, v36

    goto :goto_0

    :cond_1
    move/from16 v35, v4

    :goto_0
    move/from16 v47, v35

    .line 243
    .local v47, "hue":F
    move/from16 v35, v2

    move/from16 v2, v47

    .end local v47    # "hue":F
    .local v2, "hue":F
    .local v35, "atan2":F
    mul-float v47, v2, v5

    div-float v3, v47, v3

    .line 246
    .local v3, "hueRadians":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getNbb()F

    move-result v5

    mul-float/2addr v5, v7

    .line 249
    .local v5, "ac":F
    nop

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getAw()F

    move-result v37

    move/from16 v47, v4

    .end local v4    # "atanDegrees":F
    .local v47, "atanDegrees":F
    div-float v4, v5, v37

    move/from16 v48, v5

    .end local v5    # "ac":F
    .local v48, "ac":F
    float-to-double v4, v4

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getC()F

    move-result v37

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getZ()F

    move-result v38

    move/from16 v49, v7

    .end local v7    # "p2":F
    .local v49, "p2":F
    mul-float v7, v37, v38

    move/from16 v50, v8

    .end local v8    # "x":F
    .local v50, "x":F
    float-to-double v7, v7

    .line 252
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    .line 255
    .local v4, "j":F
    nop

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getC()F

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float v7, v8, v7

    div-float v5, v4, v5

    move/from16 v20, v9

    .end local v9    # "y":F
    .local v20, "y":F
    float-to-double v8, v5

    .line 258
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v7, v5

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getAw()F

    move-result v5

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v5, v8

    mul-float/2addr v7, v5

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFlRoot()F

    move-result v5

    mul-float/2addr v7, v5

    .line 263
    .local v7, "q":F
    float-to-double v8, v2

    const-wide v38, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v5, v8, v38

    if-gez v5, :cond_2

    add-float v5, v2, v36

    goto :goto_1

    :cond_2
    move v5, v2

    .line 264
    .local v5, "huePrime":F
    :goto_1
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    add-double v8, v8, v31

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v31, 0x400e666666666666L    # 3.8

    add-double v8, v8, v31

    double-to-float v8, v8

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    .line 265
    .local v8, "eHue":F
    const v9, 0x45706276

    mul-float/2addr v9, v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getNc()F

    move-result v31

    mul-float v9, v9, v31

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getNcb()F

    move-result v31

    mul-float v9, v9, v31

    .line 266
    .local v9, "p1":F
    move/from16 v31, v10

    move-object/from16 v32, v11

    .end local v10    # "z":F
    .end local v11    # "matrix":[[F
    .local v31, "z":F
    .local v32, "matrix":[[F
    float-to-double v10, v0

    move/from16 v51, v12

    move/from16 v36, v13

    .end local v12    # "rD":F
    .end local v13    # "rT":F
    .local v36, "rT":F
    .local v51, "rD":F
    float-to-double v12, v1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v10, v9

    const v11, 0x3e9c28f6    # 0.305f

    add-float/2addr v11, v6

    div-float/2addr v10, v11

    .line 267
    .local v10, "t":F
    nop

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getN()F

    move-result v11

    float-to-double v11, v11

    move v13, v0

    move/from16 v52, v1

    .end local v0    # "a":F
    .end local v1    # "b":F
    .local v13, "a":F
    .local v52, "b":F
    const-wide v0, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v11, v0

    const-wide v0, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v11, v10

    .line 269
    move/from16 v53, v5

    move v1, v6

    .end local v5    # "huePrime":F
    .end local v6    # "u":F
    .local v1, "u":F
    .local v53, "huePrime":F
    const-wide v5, 0x3feccccccccccccdL    # 0.9

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v0, v5

    .line 271
    .local v0, "alpha":F
    float-to-double v5, v4

    div-double v5, v5, v21

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v0

    .line 272
    .local v5, "c":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFlRoot()F

    move-result v6

    mul-float/2addr v6, v5

    .line 273
    .local v6, "m":F
    nop

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getC()F

    move-result v11

    mul-float/2addr v11, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getAw()F

    move-result v12

    const/high16 v21, 0x40800000    # 4.0f

    add-float v12, v12, v21

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x42480000    # 50.0f

    mul-float/2addr v11, v12

    .line 279
    .local v11, "s":F
    const v12, 0x3fd9999a    # 1.7f

    mul-float/2addr v12, v4

    const v21, 0x3be56042    # 0.007f

    mul-float v21, v21, v4

    const/high16 v22, 0x3f800000    # 1.0f

    add-float v21, v21, v22

    div-float v12, v12, v21

    .line 280
    .local v12, "jstar":F
    const v21, 0x3cbac711    # 0.0228f

    move/from16 v22, v0

    .end local v0    # "alpha":F
    .local v22, "alpha":F
    mul-float v0, v6, v21

    move/from16 v21, v1

    .end local v1    # "u":F
    .local v21, "u":F
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x422f7048

    mul-float/2addr v0, v1

    .line 281
    .local v0, "mstar":F
    move v1, v8

    move/from16 v54, v9

    .end local v8    # "eHue":F
    .end local v9    # "p1":F
    .local v1, "eHue":F
    .local v54, "p1":F
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v8, v0

    .line 282
    .local v8, "astar":F
    move/from16 v55, v10

    .end local v10    # "t":F
    .local v55, "t":F
    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v0

    .line 284
    .local v9, "bstar":F
    new-instance v10, Lcom/google/android/material/color/Cam16;

    move-object/from16 v37, v10

    move/from16 v38, v2

    move/from16 v39, v5

    move/from16 v40, v4

    move/from16 v41, v7

    move/from16 v42, v6

    move/from16 v43, v11

    move/from16 v44, v12

    move/from16 v45, v8

    move/from16 v46, v9

    invoke-direct/range {v37 .. v46}, Lcom/google/android/material/color/Cam16;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method static fromJch(FFF)Lcom/google/android/material/color/Cam16;
    .locals 1
    .param p0, "j"    # F
    .param p1, "c"    # F
    .param p2, "h"    # F

    .line 293
    sget-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/Cam16;->fromJchInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    return-object v0
.end method

.method private static fromJchInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)Lcom/google/android/material/color/Cam16;
    .locals 21
    .param p0, "j"    # F
    .param p1, "c"    # F
    .param p2, "h"    # F
    .param p3, "viewingConditions"    # Lcom/google/android/material/color/ViewingConditions;

    .line 304
    move/from16 v10, p0

    .line 306
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/material/color/ViewingConditions;->getC()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, v1, v0

    float-to-double v2, v10

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 307
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    .line 308
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/material/color/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 309
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/material/color/ViewingConditions;->getFlRoot()F

    move-result v2

    mul-float v11, v0, v2

    .line 310
    .local v11, "q":F
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/material/color/ViewingConditions;->getFlRoot()F

    move-result v0

    mul-float v12, p1, v0

    .line 311
    .local v12, "m":F
    float-to-double v2, v10

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float v13, p1, v0

    .line 312
    .local v13, "alpha":F
    nop

    .line 315
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/material/color/ViewingConditions;->getC()F

    move-result v0

    mul-float/2addr v0, v13

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/material/color/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v14, v0, v1

    .line 317
    .local v14, "s":F
    const v0, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float v15, v0, v1

    .line 318
    .local v15, "hueRadians":F
    const v0, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, v10

    const v1, 0x3be56042    # 0.007f

    mul-float/2addr v1, v10

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    div-float v16, v0, v1

    .line 319
    .local v16, "jstar":F
    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v2, v12

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x422f7048

    mul-float v17, v0, v1

    .line 320
    .local v17, "mstar":F
    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v18, v17, v0

    .line 321
    .local v18, "astar":F
    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v19, v17, v0

    .line 322
    .local v19, "bstar":F
    new-instance v20, Lcom/google/android/material/color/Cam16;

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p1

    move/from16 v3, p0

    move v4, v11

    move v5, v12

    move v6, v14

    move/from16 v7, v16

    move/from16 v8, v18

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/color/Cam16;-><init>(FFFFFFFFF)V

    return-object v20
.end method

.method public static fromUcs(FFF)Lcom/google/android/material/color/Cam16;
    .locals 1
    .param p0, "jstar"    # F
    .param p1, "astar"    # F
    .param p2, "bstar"    # F

    .line 336
    sget-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/Cam16;->fromUcsInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    return-object v0
.end method

.method public static fromUcsInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)Lcom/google/android/material/color/Cam16;
    .locals 11
    .param p0, "jstar"    # F
    .param p1, "astar"    # F
    .param p2, "bstar"    # F
    .param p3, "viewingConditions"    # Lcom/google/android/material/color/ViewingConditions;

    .line 352
    float-to-double v0, p1

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 353
    .local v0, "m":D
    const-wide v2, 0x3f9758e220000000L    # 0.02280000038444996

    mul-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v4

    div-double/2addr v4, v2

    .line 354
    .local v4, "m2":D
    invoke-virtual {p3}, Lcom/google/android/material/color/ViewingConditions;->getFlRoot()F

    move-result v2

    float-to-double v2, v2

    div-double v2, v4, v2

    .line 355
    .local v2, "c":D
    float-to-double v6, p2

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    const-wide v8, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v6, v8

    .line 356
    .local v6, "h":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_0

    .line 357
    const-wide v8, 0x4076800000000000L    # 360.0

    add-double/2addr v6, v8

    .line 359
    :cond_0
    const/high16 v8, 0x42c80000    # 100.0f

    sub-float v8, p0, v8

    const v9, 0x3be56042    # 0.007f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    div-float v8, p0, v9

    .line 360
    .local v8, "j":F
    double-to-float v9, v2

    double-to-float v10, v6

    invoke-static {v8, v9, v10, p3}, Lcom/google/android/material/color/Cam16;->fromJchInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)Lcom/google/android/material/color/Cam16;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method distance(Lcom/google/android/material/color/Cam16;)F
    .locals 9
    .param p1, "other"    # Lcom/google/android/material/color/Cam16;

    .line 70
    invoke-virtual {p0}, Lcom/google/android/material/color/Cam16;->getJStar()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/color/Cam16;->getJStar()F

    move-result v1

    sub-float/2addr v0, v1

    .line 71
    .local v0, "dJ":F
    invoke-virtual {p0}, Lcom/google/android/material/color/Cam16;->getAStar()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/color/Cam16;->getAStar()F

    move-result v2

    sub-float/2addr v1, v2

    .line 72
    .local v1, "dA":F
    invoke-virtual {p0}, Lcom/google/android/material/color/Cam16;->getBStar()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/material/color/Cam16;->getBStar()F

    move-result v3

    sub-float/2addr v2, v3

    .line 73
    .local v2, "dB":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 74
    .local v3, "dEPrime":D
    const-wide v5, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr v5, v7

    .line 75
    .local v5, "dE":D
    double-to-float v7, v5

    return v7
.end method

.method public getAStar()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/google/android/material/color/Cam16;->astar:F

    return v0
.end method

.method public getBStar()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/google/android/material/color/Cam16;->bstar:F

    return v0
.end method

.method public getChroma()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/android/material/color/Cam16;->chroma:F

    return v0
.end method

.method public getHue()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/material/color/Cam16;->hue:F

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 368
    sget-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/Cam16;->viewed(Lcom/google/android/material/color/ViewingConditions;)I

    move-result v0

    return v0
.end method

.method public getJ()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/google/android/material/color/Cam16;->j:F

    return v0
.end method

.method public getJStar()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/google/android/material/color/Cam16;->jstar:F

    return v0
.end method

.method public getM()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/android/material/color/Cam16;->m:F

    return v0
.end method

.method public getQ()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/google/android/material/color/Cam16;->q:F

    return v0
.end method

.method public getS()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/google/android/material/color/Cam16;->s:F

    return v0
.end method

.method viewed(Lcom/google/android/material/color/ViewingConditions;)I
    .locals 31
    .param p1, "viewingConditions"    # Lcom/google/android/material/color/ViewingConditions;

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/Cam16;->getJ()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/Cam16;->getJ()F

    move-result v1

    float-to-double v6, v1

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_1

    .line 380
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 381
    :goto_1
    nop

    .line 383
    .local v0, "alpha":F
    float-to-double v6, v0

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getN()F

    move-result v1

    float-to-double v8, v1

    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v10, v8

    const-wide v8, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 385
    const-wide v8, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 387
    .local v1, "t":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/Cam16;->getHue()F

    move-result v6

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v6, v7

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v6, v7

    .line 389
    .local v6, "hRad":F
    float-to-double v7, v6

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide v9, 0x400e666666666666L    # 3.8

    add-double/2addr v7, v9

    double-to-float v7, v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    .line 390
    .local v7, "eHue":F
    nop

    .line 391
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getAw()F

    move-result v8

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/Cam16;->getJ()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v9, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getC()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getZ()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v8, v4

    .line 394
    .local v8, "ac":F
    const v4, 0x45706276

    mul-float/2addr v4, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getNc()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getNcb()F

    move-result v5

    mul-float/2addr v4, v5

    .line 395
    .local v4, "p1":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getNbb()F

    move-result v5

    div-float v5, v8, v5

    .line 397
    .local v5, "p2":F
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 398
    .local v9, "hSin":F
    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 400
    .local v10, "hCos":F
    const v11, 0x3e9c28f6    # 0.305f

    add-float/2addr v11, v5

    const/high16 v12, 0x41b80000    # 23.0f

    mul-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float/2addr v12, v4

    const/high16 v13, 0x41300000    # 11.0f

    mul-float/2addr v13, v1

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    const/high16 v13, 0x42d80000    # 108.0f

    mul-float/2addr v13, v1

    mul-float/2addr v13, v9

    add-float/2addr v12, v13

    div-float/2addr v11, v12

    .line 401
    .local v11, "gamma":F
    mul-float v12, v11, v10

    .line 402
    .local v12, "a":F
    mul-float v13, v11, v9

    .line 403
    .local v13, "b":F
    const/high16 v14, 0x43e60000    # 460.0f

    mul-float v15, v5, v14

    const v16, 0x43e18000    # 451.0f

    mul-float v16, v16, v12

    add-float v15, v15, v16

    const/high16 v16, 0x43900000    # 288.0f

    mul-float v16, v16, v13

    add-float v15, v15, v16

    const v16, 0x44af6000    # 1403.0f

    div-float v15, v15, v16

    .line 404
    .local v15, "rA":F
    mul-float v17, v5, v14

    const v18, 0x445ec000    # 891.0f

    mul-float v18, v18, v12

    sub-float v17, v17, v18

    const v18, 0x43828000    # 261.0f

    mul-float v18, v18, v13

    sub-float v17, v17, v18

    div-float v17, v17, v16

    .line 405
    .local v17, "gA":F
    mul-float/2addr v14, v5

    const/high16 v18, 0x435c0000    # 220.0f

    mul-float v18, v18, v12

    sub-float v14, v14, v18

    const v18, 0x45c4e000    # 6300.0f

    mul-float v18, v18, v13

    sub-float v14, v14, v18

    div-float v14, v14, v16

    .line 407
    .local v14, "bA":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v20, 0x403b2147ae147ae1L    # 27.13

    mul-double v2, v2, v20

    move/from16 v16, v0

    .end local v0    # "alpha":F
    .local v16, "alpha":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v0

    move/from16 v22, v1

    .end local v1    # "t":F
    .local v22, "t":F
    float-to-double v0, v0

    const-wide/high16 v23, 0x4079000000000000L    # 400.0

    sub-double v0, v23, v0

    div-double/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 408
    .local v0, "rCBase":F
    nop

    .line 409
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFl()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    move v2, v4

    .end local v4    # "p1":F
    .local v2, "p1":F
    float-to-double v3, v0

    .line 411
    move/from16 v27, v5

    move/from16 v26, v6

    .end local v5    # "p2":F
    .end local v6    # "hRad":F
    .local v26, "hRad":F
    .local v27, "p2":F
    const-wide v5, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v1, v3

    .line 412
    .local v1, "rC":F
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    mul-double v3, v3, v20

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    sub-double v5, v23, v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 413
    .local v3, "gCBase":F
    nop

    .line 414
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFl()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v5, v6, v5

    mul-float/2addr v4, v5

    float-to-double v5, v3

    .line 416
    move/from16 v29, v2

    move/from16 v30, v3

    const-wide v2, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v2    # "p1":F
    .end local v3    # "gCBase":F
    .local v29, "p1":F
    .local v30, "gCBase":F
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float/2addr v4, v2

    .line 417
    .local v4, "gC":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    mul-double v2, v2, v20

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    sub-double v23, v23, v5

    div-double v2, v2, v23

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 418
    .local v2, "bCBase":F
    nop

    .line 419
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getFl()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v5, v6, v5

    mul-float/2addr v3, v5

    float-to-double v5, v2

    .line 421
    move/from16 v18, v7

    move/from16 v19, v8

    const-wide v7, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v7    # "eHue":F
    .end local v8    # "ac":F
    .local v18, "eHue":F
    .local v19, "ac":F
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    .line 422
    .local v3, "bC":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getRgbD()[F

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    div-float v5, v1, v5

    .line 423
    .local v5, "rF":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getRgbD()[F

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    div-float v7, v4, v7

    .line 424
    .local v7, "gF":F
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/ViewingConditions;->getRgbD()[F

    move-result-object v20

    const/16 v21, 0x2

    aget v20, v20, v21

    div-float v20, v3, v20

    .line 426
    .local v20, "bF":F
    sget-object v23, Lcom/google/android/material/color/Cam16;->CAM16RGB_TO_XYZ:[[F

    .line 427
    .local v23, "matrix":[[F
    aget-object v24, v23, v6

    aget v24, v24, v6

    mul-float v24, v24, v5

    aget-object v25, v23, v6

    aget v25, v25, v8

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v6

    aget v25, v25, v21

    mul-float v25, v25, v20

    add-float v6, v24, v25

    .line 428
    .local v6, "x":F
    aget-object v24, v23, v8

    const/16 v25, 0x0

    aget v24, v24, v25

    mul-float v24, v24, v5

    aget-object v25, v23, v8

    aget v25, v25, v8

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v8

    aget v25, v25, v21

    mul-float v25, v25, v20

    add-float v8, v24, v25

    .line 429
    .local v8, "y":F
    aget-object v24, v23, v21

    const/16 v25, 0x0

    aget v24, v24, v25

    mul-float v24, v24, v5

    aget-object v25, v23, v21

    const/16 v28, 0x1

    aget v25, v25, v28

    mul-float v25, v25, v7

    add-float v24, v24, v25

    aget-object v25, v23, v21

    aget v21, v25, v21

    mul-float v21, v21, v20

    move/from16 v25, v0

    .end local v0    # "rCBase":F
    .local v25, "rCBase":F
    add-float v0, v24, v21

    .line 431
    .local v0, "z":F
    invoke-static {v6, v8, v0}, Lcom/google/android/material/color/ColorUtils;->intFromXyzComponents(FFF)I

    move-result v21

    return v21
.end method
