.class public final Lcom/google/android/material/color/utilities/Cam16;
.super Ljava/lang/Object;
.source "Cam16.java"


# static fields
.field static final CAM16RGB_TO_XYZ:[[D

.field static final XYZ_TO_CAM16RGB:[[D


# instance fields
.field private final astar:D

.field private final bstar:D

.field private final chroma:D

.field private final hue:D

.field private final j:D

.field private final jstar:D

.field private final m:D

.field private final q:D

.field private final s:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    sput-object v1, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 51
    new-array v1, v0, [D

    fill-array-data v1, :array_3

    new-array v2, v0, [D

    fill-array-data v2, :array_4

    new-array v0, v0, [D

    fill-array-data v0, :array_5

    filled-new-array {v1, v2, v0}, [[D

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    return-void

    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data

    :array_3
    .array-data 8
        0x3ffdcb079afef467L    # 1.8620678
        -0x400fd1e697792de9L    # -1.0112547
        0x3fc3188d6a8c3ae1L    # 0.14918678
    .end array-data

    :array_4
    .array-data 8
        0x3fd8cd3c1de87346L    # 0.38752654
        0x3fe3e2e5bddf7419L    # 0.62144744
        -0x407d9f0ccb1490dcL    # -0.00897398
    .end array-data

    :array_5
    .array-data 8
        -0x406fc73eee525892L    # -0.0158415
        -0x405e8770215031c7L    # -0.03412294
        0x3ff0cca7787f6d9eL    # 1.0499644
    .end array-data
.end method

.method private constructor <init>(DDDDDDDDD)V
    .locals 15
    .param p1, "hue"    # D
    .param p3, "chroma"    # D
    .param p5, "j"    # D
    .param p7, "q"    # D
    .param p9, "m"    # D
    .param p11, "s"    # D
    .param p13, "jstar"    # D
    .param p15, "astar"    # D
    .param p17, "bstar"    # D

    .line 171
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    .line 173
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    .line 174
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lcom/google/android/material/color/utilities/Cam16;->j:D

    .line 175
    move-wide/from16 v7, p7

    iput-wide v7, v0, Lcom/google/android/material/color/utilities/Cam16;->q:D

    .line 176
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/google/android/material/color/utilities/Cam16;->m:D

    .line 177
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/google/android/material/color/utilities/Cam16;->s:D

    .line 178
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/google/android/material/color/utilities/Cam16;->jstar:D

    .line 179
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->astar:D

    .line 180
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/material/color/utilities/Cam16;->bstar:D

    .line 181
    return-void
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/Cam16;
    .locals 1
    .param p0, "argb"    # I

    .line 189
    sget-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    invoke-static {p0, v0}, Lcom/google/android/material/color/utilities/Cam16;->fromIntInViewingConditions(ILcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    return-object v0
.end method

.method static fromIntInViewingConditions(ILcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 106
    .param p0, "argb"    # I
    .param p1, "viewingConditions"    # Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 204
    move/from16 v0, p0

    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    .line 205
    .local v1, "red":I
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    .line 206
    .local v2, "green":I
    and-int/lit16 v3, v0, 0xff

    .line 207
    .local v3, "blue":I
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v4

    .line 208
    .local v4, "redL":D
    invoke-static {v2}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v6

    .line 209
    .local v6, "greenL":D
    invoke-static {v3}, Lcom/google/android/material/color/utilities/ColorUtils;->linearized(I)D

    move-result-wide v8

    .line 210
    .local v8, "blueL":D
    const-wide v10, 0x3fda63c2e8477c96L    # 0.41233895

    mul-double/2addr v10, v4

    const-wide v12, 0x3fd6e341ae4b2c79L    # 0.35762064

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    const-wide v12, 0x3fc71af7273e5d5eL    # 0.18051042

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    .line 211
    .local v10, "x":D
    const-wide v12, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v12, v4

    const-wide v14, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    const-wide v14, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    .line 212
    .local v12, "y":D
    const-wide v14, 0x3f93c8fde0401c25L    # 0.01932141

    mul-double/2addr v14, v4

    const-wide v16, 0x3fbe818525c434ceL    # 0.11916382

    mul-double v16, v16, v6

    add-double v14, v14, v16

    const-wide v16, 0x3fee693974c0c730L    # 0.95034478

    mul-double v16, v16, v8

    add-double v14, v14, v16

    .line 215
    .local v14, "z":D
    sget-object v16, Lcom/google/android/material/color/utilities/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 216
    .local v16, "matrix":[[D
    const/16 v17, 0x0

    aget-object v18, v16, v17

    aget-wide v19, v18, v17

    mul-double v19, v19, v10

    aget-object v18, v16, v17

    const/16 v21, 0x1

    aget-wide v22, v18, v21

    mul-double v22, v22, v12

    add-double v19, v19, v22

    aget-object v18, v16, v17

    const/16 v22, 0x2

    aget-wide v23, v18, v22

    mul-double v23, v23, v14

    add-double v19, v19, v23

    .line 217
    .local v19, "rT":D
    aget-object v18, v16, v21

    aget-wide v23, v18, v17

    mul-double v23, v23, v10

    aget-object v18, v16, v21

    aget-wide v25, v18, v21

    mul-double v25, v25, v12

    add-double v23, v23, v25

    aget-object v18, v16, v21

    aget-wide v25, v18, v22

    mul-double v25, v25, v14

    add-double v23, v23, v25

    .line 218
    .local v23, "gT":D
    aget-object v18, v16, v22

    aget-wide v25, v18, v17

    mul-double v25, v25, v10

    aget-object v18, v16, v22

    aget-wide v27, v18, v21

    mul-double v27, v27, v12

    add-double v25, v25, v27

    aget-object v18, v16, v22

    aget-wide v27, v18, v22

    mul-double v27, v27, v14

    add-double v25, v25, v27

    .line 221
    .local v25, "bT":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    move-result-object v18

    aget-wide v17, v18, v17

    mul-double v17, v17, v19

    .line 222
    .local v17, "rD":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    move-result-object v27

    aget-wide v28, v27, v21

    mul-double v28, v28, v23

    .line 223
    .local v28, "gD":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    move-result-object v21

    aget-wide v30, v21, v22

    mul-double v30, v30, v25

    .line 226
    .local v30, "bD":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    move-result-wide v21

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    mul-double v21, v21, v32

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    move/from16 v27, v1

    .end local v1    # "red":I
    .local v27, "red":I
    div-double v0, v21, v32

    move/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "green":I
    .end local v3    # "blue":I
    .local v21, "green":I
    .local v22, "blue":I
    const-wide v2, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 227
    .local v0, "rAF":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    move-result-wide v34

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v36

    mul-double v34, v34, v36

    move-wide/from16 v36, v4

    .end local v4    # "redL":D
    .local v36, "redL":D
    div-double v4, v34, v32

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 228
    .local v4, "gAF":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    move-result-wide v34

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    mul-double v34, v34, v38

    move-wide/from16 v38, v6

    .end local v6    # "greenL":D
    .local v38, "greenL":D
    div-double v6, v34, v32

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 229
    .local v2, "bAF":D
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    const-wide/high16 v34, 0x4079000000000000L    # 400.0

    mul-double v6, v6, v34

    mul-double/2addr v6, v0

    const-wide v40, 0x403b2147ae147ae1L    # 27.13

    add-double v42, v0, v40

    div-double v6, v6, v42

    .line 230
    .local v6, "rA":D
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->signum(D)D

    move-result-wide v42

    mul-double v42, v42, v34

    mul-double v42, v42, v4

    add-double v44, v4, v40

    div-double v42, v42, v44

    .line 231
    .local v42, "gA":D
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->signum(D)D

    move-result-wide v44

    mul-double v44, v44, v34

    mul-double v44, v44, v2

    add-double v40, v2, v40

    div-double v44, v44, v40

    .line 234
    .local v44, "bA":D
    const-wide/high16 v34, 0x4026000000000000L    # 11.0

    mul-double v40, v6, v34

    const-wide/high16 v46, -0x3fd8000000000000L    # -12.0

    mul-double v46, v46, v42

    add-double v40, v40, v46

    add-double v40, v40, v44

    move-wide/from16 v46, v0

    .end local v0    # "rAF":D
    .local v46, "rAF":D
    div-double v0, v40, v34

    .line 236
    .local v0, "a":D
    add-double v34, v6, v42

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v48, v44, v40

    sub-double v34, v34, v48

    const-wide/high16 v48, 0x4022000000000000L    # 9.0

    move-wide/from16 v50, v2

    .end local v2    # "bAF":D
    .local v50, "bAF":D
    div-double v2, v34, v48

    .line 239
    .local v2, "b":D
    const-wide/high16 v34, 0x4034000000000000L    # 20.0

    mul-double v48, v6, v34

    mul-double v52, v42, v34

    add-double v48, v48, v52

    const-wide/high16 v52, 0x4035000000000000L    # 21.0

    mul-double v52, v52, v44

    add-double v48, v48, v52

    div-double v48, v48, v34

    .line 240
    .local v48, "u":D
    const-wide/high16 v52, 0x4044000000000000L    # 40.0

    mul-double v52, v52, v6

    mul-double v54, v42, v34

    add-double v52, v52, v54

    add-double v52, v52, v44

    div-double v52, v52, v34

    .line 243
    .local v52, "p2":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v34

    .line 244
    .local v34, "atan2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v54

    .line 246
    .local v54, "atanDegrees":D
    const-wide/16 v56, 0x0

    cmpg-double v56, v54, v56

    const-wide v57, 0x4076800000000000L    # 360.0

    if-gez v56, :cond_0

    .line 247
    add-double v59, v54, v57

    goto :goto_0

    .line 248
    :cond_0
    cmpl-double v56, v54, v57

    if-ltz v56, :cond_1

    sub-double v59, v54, v57

    goto :goto_0

    :cond_1
    move-wide/from16 v59, v54

    :goto_0
    nop

    .line 249
    .local v59, "hue":D
    invoke-static/range {v59 .. v60}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v80

    .line 252
    .local v80, "hueRadians":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNbb()D

    move-result-wide v61

    mul-double v82, v52, v61

    .line 255
    .local v82, "ac":D
    nop

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    move-result-wide v61

    move-wide/from16 v84, v4

    .end local v4    # "gAF":D
    .local v84, "gAF":D
    div-double v4, v82, v61

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    move-result-wide v61

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getZ()D

    move-result-wide v63

    move-wide/from16 v86, v6

    .end local v6    # "rA":D
    .local v86, "rA":D
    mul-double v6, v61, v63

    .line 257
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v32

    .line 260
    .local v4, "j":D
    nop

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    move-result-wide v6

    const-wide/high16 v61, 0x4010000000000000L    # 4.0

    div-double v6, v61, v6

    div-double v63, v4, v32

    .line 263
    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v63

    mul-double v6, v6, v63

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    move-result-wide v63

    add-double v63, v63, v61

    mul-double v6, v6, v63

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    move-result-wide v63

    mul-double v6, v6, v63

    .line 268
    .local v6, "q":D
    const-wide v63, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v56, v59, v63

    if-gez v56, :cond_2

    add-double v57, v59, v57

    goto :goto_1

    :cond_2
    move-wide/from16 v57, v59

    :goto_1
    move-wide/from16 v56, v57

    .line 269
    .local v56, "huePrime":D
    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v63

    add-double v63, v63, v40

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->cos(D)D

    move-result-wide v40

    const-wide v63, 0x400e666666666666L    # 3.8

    add-double v40, v40, v63

    const-wide/high16 v63, 0x3fd0000000000000L    # 0.25

    mul-double v40, v40, v63

    .line 270
    .local v40, "eHue":D
    const-wide v63, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double v63, v63, v40

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNc()D

    move-result-wide v65

    mul-double v63, v63, v65

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNcb()D

    move-result-wide v65

    mul-double v88, v63, v65

    .line 271
    .local v88, "p1":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v63

    mul-double v63, v63, v88

    const-wide v65, 0x3fd3851eb851eb85L    # 0.305

    add-double v65, v48, v65

    move-wide/from16 v90, v0

    .end local v0    # "a":D
    .local v90, "a":D
    div-double v0, v63, v65

    .line 272
    .local v0, "t":D
    nop

    .line 273
    move-wide/from16 v92, v2

    .end local v2    # "b":D
    .local v92, "b":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getN()D

    move-result-wide v2

    move-wide/from16 v94, v8

    .end local v8    # "blueL":D
    .local v94, "blueL":D
    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v8, v2

    const-wide v2, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v2, v8

    .line 275
    .local v2, "alpha":D
    div-double v8, v4, v32

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v2

    .local v8, "c":D
    move-wide/from16 v64, v8

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    move-result-wide v32

    mul-double v32, v32, v8

    .local v32, "m":D
    move-wide/from16 v70, v32

    .line 277
    nop

    .line 278
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    move-result-wide v66

    mul-double v66, v66, v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    move-result-wide v68

    add-double v68, v68, v61

    div-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v61

    const-wide/high16 v66, 0x4049000000000000L    # 50.0

    mul-double v96, v61, v66

    .local v96, "s":D
    move-wide/from16 v72, v96

    .line 281
    const-wide v61, 0x3ffb333333333334L    # 1.7000000000000002

    mul-double v61, v61, v4

    const-wide v66, 0x3f7cac083126e979L    # 0.007

    mul-double v66, v66, v4

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v68

    div-double v98, v61, v66

    .local v98, "jstar":D
    move-wide/from16 v74, v98

    .line 282
    const-wide v61, 0x3f9758e219652bd4L    # 0.0228

    mul-double v61, v61, v32

    invoke-static/range {v61 .. v62}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v61

    const-wide v66, 0x4045ee08fb823ee0L    # 43.859649122807014

    mul-double v100, v61, v66

    .line 283
    .local v100, "mstar":D
    invoke-static/range {v80 .. v81}, Ljava/lang/Math;->cos(D)D

    move-result-wide v61

    mul-double v102, v100, v61

    .local v102, "astar":D
    move-wide/from16 v76, v102

    .line 284
    invoke-static/range {v80 .. v81}, Ljava/lang/Math;->sin(D)D

    move-result-wide v61

    mul-double v104, v100, v61

    .local v104, "bstar":D
    move-wide/from16 v78, v104

    .line 286
    new-instance v58, Lcom/google/android/material/color/utilities/Cam16;

    move-object/from16 v61, v58

    move-wide/from16 v62, v59

    move-wide/from16 v66, v4

    move-wide/from16 v68, v6

    invoke-direct/range {v61 .. v79}, Lcom/google/android/material/color/utilities/Cam16;-><init>(DDDDDDDDD)V

    return-object v58
.end method

.method static fromJch(DDD)Lcom/google/android/material/color/utilities/Cam16;
    .locals 7
    .param p0, "j"    # D
    .param p2, "c"    # D
    .param p4, "h"    # D

    .line 295
    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    return-object v0
.end method

.method private static fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 38
    .param p0, "j"    # D
    .param p2, "c"    # D
    .param p4, "h"    # D
    .param p6, "viewingConditions"    # Lcom/google/android/material/color/utilities/ViewingConditions;

    move-wide/from16 v5, p0

    move-wide/from16 v3, p2

    move-wide/from16 v1, p4

    .line 306
    nop

    .line 308
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    move-result-wide v7

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    div-double v7, v11, v7

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double v9, p0, v13

    .line 309
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    .line 310
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    move-result-wide v9

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    .line 311
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    move-result-wide v9

    mul-double v19, v7, v9

    .local v19, "q":D
    move-wide/from16 v7, v19

    .line 312
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    move-result-wide v9

    mul-double v21, p2, v9

    .local v21, "m":D
    move-wide/from16 v9, v21

    .line 313
    div-double v13, p0, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    div-double v23, p2, v13

    .line 314
    .local v23, "alpha":D
    nop

    .line 315
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    move-result-wide v13

    mul-double v13, v13, v23

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    move-result-wide v15

    add-double/2addr v15, v11

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    mul-double v25, v11, v13

    .local v25, "s":D
    move-wide/from16 v11, v25

    .line 317
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v27

    .line 318
    .local v27, "hueRadians":D
    const-wide v13, 0x3ffb333333333334L    # 1.7000000000000002

    mul-double v13, v13, p0

    const-wide v15, 0x3f7cac083126e979L    # 0.007

    mul-double v15, v15, p0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v15, v15, v17

    div-double v29, v13, v15

    .local v29, "jstar":D
    move-wide/from16 v13, v29

    .line 319
    const-wide v15, 0x3f9758e219652bd4L    # 0.0228

    mul-double v15, v15, v21

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v15

    const-wide v17, 0x4045ee08fb823ee0L    # 43.859649122807014

    mul-double v31, v15, v17

    .line 320
    .local v31, "mstar":D
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v33, v31, v15

    .local v33, "astar":D
    move-wide/from16 v15, v33

    .line 321
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v35, v31, v17

    .local v35, "bstar":D
    move-wide/from16 v17, v35

    .line 322
    new-instance v37, Lcom/google/android/material/color/utilities/Cam16;

    move-object/from16 v0, v37

    invoke-direct/range {v0 .. v18}, Lcom/google/android/material/color/utilities/Cam16;-><init>(DDDDDDDDD)V

    return-object v37
.end method

.method public static fromUcs(DDD)Lcom/google/android/material/color/utilities/Cam16;
    .locals 7
    .param p0, "jstar"    # D
    .param p2, "astar"    # D
    .param p4, "bstar"    # D

    .line 336
    sget-object v6, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/material/color/utilities/Cam16;->fromUcsInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    return-object v0
.end method

.method public static fromUcsInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;
    .locals 19
    .param p0, "jstar"    # D
    .param p2, "astar"    # D
    .param p4, "bstar"    # D
    .param p6, "viewingConditions"    # Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 352
    invoke-static/range {p2 .. p5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    .line 353
    .local v0, "m":D
    const-wide v2, 0x3f9758e219652bd4L    # 0.0228

    mul-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->expm1(D)D

    move-result-wide v4

    div-double/2addr v4, v2

    .line 354
    .local v4, "m2":D
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFlRoot()D

    move-result-wide v2

    div-double v2, v4, v2

    .line 355
    .local v2, "c":D
    move-wide/from16 v13, p2

    move-wide/from16 v10, p4

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->atan2(DD)D

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

    move-wide v15, v6

    goto :goto_0

    .line 356
    :cond_0
    move-wide v15, v6

    .line 359
    .end local v6    # "h":D
    .local v15, "h":D
    :goto_0
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    sub-double v6, p0, v6

    const-wide v8, 0x3f7cac083126e979L    # 0.007

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    div-double v17, p0, v8

    .line 360
    .local v17, "j":D
    move-wide/from16 v6, v17

    move-wide v8, v2

    move-wide v10, v15

    move-object/from16 v12, p6

    invoke-static/range {v6 .. v12}, Lcom/google/android/material/color/utilities/Cam16;->fromJchInViewingConditions(DDDLcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method distance(Lcom/google/android/material/color/utilities/Cam16;)D
    .locals 12
    .param p1, "other"    # Lcom/google/android/material/color/utilities/Cam16;

    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 77
    .local v0, "dJ":D
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 78
    .local v2, "dA":D
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 79
    .local v4, "dB":D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 80
    .local v6, "dEPrime":D
    const-wide v8, 0x3fe428f5c28f5c29L    # 0.63

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr v8, v10

    .line 81
    .local v8, "dE":D
    return-wide v8
.end method

.method public getAstar()D
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->astar:D

    return-wide v0
.end method

.method public getBstar()D
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->bstar:D

    return-wide v0
.end method

.method public getChroma()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->chroma:D

    return-wide v0
.end method

.method public getHue()D
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->hue:D

    return-wide v0
.end method

.method public getJ()D
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->j:D

    return-wide v0
.end method

.method public getJstar()D
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->jstar:D

    return-wide v0
.end method

.method public getM()D
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->m:D

    return-wide v0
.end method

.method public getQ()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->q:D

    return-wide v0
.end method

.method public getS()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Cam16;->s:D

    return-wide v0
.end method

.method public toInt()I
    .locals 1

    .line 368
    sget-object v0, Lcom/google/android/material/color/utilities/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/utilities/ViewingConditions;

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/Cam16;->viewed(Lcom/google/android/material/color/utilities/ViewingConditions;)I

    move-result v0

    return v0
.end method

.method viewed(Lcom/google/android/material/color/utilities/ViewingConditions;)I
    .locals 63
    .param p1, "viewingConditions"    # Lcom/google/android/material/color/utilities/ViewingConditions;

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    move-result-wide v6

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v0, v6

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v0, v2

    .line 381
    .local v0, "alpha":D
    :goto_1
    nop

    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getN()D

    move-result-wide v6

    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v8, v6

    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double v6, v0, v6

    .line 382
    const-wide v8, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 384
    .local v6, "t":D
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 386
    .local v8, "hRad":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x400e666666666666L    # 3.8

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v10, v12

    .line 387
    .local v10, "eHue":D
    nop

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getAw()D

    move-result-wide v12

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->getJ()D

    move-result-wide v14

    div-double/2addr v14, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getC()D

    move-result-wide v18

    div-double v16, v16, v18

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getZ()D

    move-result-wide v18

    div-double v4, v16, v18

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v12, v4

    .line 390
    .local v12, "ac":D
    const-wide v4, 0x40ae0c4ec4ec4ec5L    # 3846.153846153846

    mul-double/2addr v4, v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNc()D

    move-result-wide v14

    mul-double/2addr v4, v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNcb()D

    move-result-wide v14

    mul-double/2addr v4, v14

    .line 391
    .local v4, "p1":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getNbb()D

    move-result-wide v14

    div-double v14, v12, v14

    .line 393
    .local v14, "p2":D
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 394
    .local v16, "hSin":D
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 396
    .local v18, "hCos":D
    const-wide v22, 0x3fd3851eb851eb85L    # 0.305

    add-double v22, v14, v22

    const-wide/high16 v24, 0x4037000000000000L    # 23.0

    mul-double v22, v22, v24

    mul-double v22, v22, v6

    mul-double v24, v24, v4

    const-wide/high16 v26, 0x4026000000000000L    # 11.0

    mul-double v26, v26, v6

    mul-double v26, v26, v18

    add-double v24, v24, v26

    const-wide/high16 v26, 0x405b000000000000L    # 108.0

    mul-double v26, v26, v6

    mul-double v26, v26, v16

    add-double v24, v24, v26

    div-double v22, v22, v24

    .line 397
    .local v22, "gamma":D
    mul-double v24, v22, v18

    .line 398
    .local v24, "a":D
    mul-double v26, v22, v16

    .line 399
    .local v26, "b":D
    const-wide v28, 0x407cc00000000000L    # 460.0

    mul-double v30, v14, v28

    const-wide v32, 0x407c300000000000L    # 451.0

    mul-double v32, v32, v24

    add-double v30, v30, v32

    const-wide/high16 v32, 0x4072000000000000L    # 288.0

    mul-double v32, v32, v26

    add-double v30, v30, v32

    const-wide v32, 0x4095ec0000000000L    # 1403.0

    div-double v30, v30, v32

    .line 400
    .local v30, "rA":D
    mul-double v34, v14, v28

    const-wide v36, 0x408bd80000000000L    # 891.0

    mul-double v36, v36, v24

    sub-double v34, v34, v36

    const-wide v36, 0x4070500000000000L    # 261.0

    mul-double v36, v36, v26

    sub-double v34, v34, v36

    div-double v34, v34, v32

    .line 401
    .local v34, "gA":D
    mul-double v28, v28, v14

    const-wide v36, 0x406b800000000000L    # 220.0

    mul-double v36, v36, v24

    sub-double v28, v28, v36

    const-wide v36, 0x40b89c0000000000L    # 6300.0

    mul-double v36, v36, v26

    sub-double v28, v28, v36

    div-double v28, v28, v32

    .line 403
    .local v28, "bA":D
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    const-wide v36, 0x403b2147ae147ae1L    # 27.13

    mul-double v32, v32, v36

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    const-wide/high16 v40, 0x4079000000000000L    # 400.0

    sub-double v38, v40, v38

    move-wide/from16 v42, v0

    .end local v0    # "alpha":D
    .local v42, "alpha":D
    div-double v0, v32, v38

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 404
    .local v0, "rCBase":D
    nop

    .line 405
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->signum(D)D

    move-result-wide v32

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    move-result-wide v38

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v38, v20, v38

    mul-double v32, v32, v38

    const-wide v2, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v44

    mul-double v32, v32, v44

    .line 406
    .local v32, "rC":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v44

    mul-double v44, v44, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v46

    sub-double v46, v40, v46

    div-double v2, v44, v46

    move-wide/from16 v44, v0

    const-wide/16 v0, 0x0

    .end local v0    # "rCBase":D
    .local v44, "rCBase":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 407
    .local v2, "gCBase":D
    nop

    .line 408
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    move-result-wide v46

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v46, v20, v46

    mul-double v0, v0, v46

    move-wide/from16 v46, v4

    const-wide v4, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v4    # "p1":D
    .local v46, "p1":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v50

    mul-double v0, v0, v50

    .line 409
    .local v0, "gC":D
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double v4, v4, v36

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v36

    sub-double v40, v40, v36

    div-double v4, v4, v40

    move-wide/from16 v36, v2

    const-wide/16 v2, 0x0

    .end local v2    # "gCBase":D
    .local v36, "gCBase":D
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 410
    .local v2, "bCBase":D
    nop

    .line 411
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getFl()D

    move-result-wide v38

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    div-double v20, v20, v38

    mul-double v4, v4, v20

    move-wide/from16 v20, v6

    const-wide v6, 0x40030c30c30c30c3L    # 2.380952380952381

    .end local v6    # "t":D
    .local v20, "t":D
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 412
    .local v4, "bC":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    move-result-object v6

    const/4 v7, 0x0

    aget-wide v38, v6, v7

    div-double v38, v32, v38

    .line 413
    .local v38, "rF":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    move-result-object v6

    const/16 v40, 0x1

    aget-wide v48, v6, v40

    div-double v48, v0, v48

    .line 414
    .local v48, "gF":D
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/ViewingConditions;->getRgbD()[D

    move-result-object v6

    const/16 v41, 0x2

    aget-wide v50, v6, v41

    div-double v50, v4, v50

    .line 416
    .local v50, "bF":D
    sget-object v6, Lcom/google/android/material/color/utilities/Cam16;->CAM16RGB_TO_XYZ:[[D

    .line 417
    .local v6, "matrix":[[D
    aget-object v52, v6, v7

    aget-wide v53, v52, v7

    mul-double v53, v53, v38

    aget-object v52, v6, v7

    aget-wide v55, v52, v40

    mul-double v55, v55, v48

    add-double v53, v53, v55

    aget-object v52, v6, v7

    aget-wide v55, v52, v41

    mul-double v55, v55, v50

    add-double v53, v53, v55

    .line 418
    .local v53, "x":D
    aget-object v52, v6, v40

    aget-wide v55, v52, v7

    mul-double v55, v55, v38

    aget-object v52, v6, v40

    aget-wide v57, v52, v40

    mul-double v57, v57, v48

    add-double v55, v55, v57

    aget-object v52, v6, v40

    aget-wide v57, v52, v41

    mul-double v57, v57, v50

    add-double v55, v55, v57

    .line 419
    .local v55, "y":D
    aget-object v52, v6, v41

    aget-wide v57, v52, v7

    mul-double v57, v57, v38

    aget-object v7, v6, v41

    aget-wide v59, v7, v40

    mul-double v59, v59, v48

    add-double v57, v57, v59

    aget-object v7, v6, v41

    aget-wide v40, v7, v41

    mul-double v40, v40, v50

    add-double v40, v57, v40

    .line 421
    .local v40, "z":D
    move-wide/from16 v57, v53

    move-wide/from16 v59, v55

    move-wide/from16 v61, v40

    invoke-static/range {v57 .. v62}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromXyz(DDD)I

    move-result v7

    return v7
.end method
