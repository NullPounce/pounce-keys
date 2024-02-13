.class public Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "MonotonicCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private mT:[D

.field private mTangent:[[D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 23
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 30
    array-length v3, v1

    .line 31
    .local v3, "N":I
    const/4 v4, 0x0

    aget-object v4, v2, v4

    array-length v4, v4

    .line 32
    .local v4, "dim":I
    add-int/lit8 v5, v3, -0x1

    filled-new-array {v5, v4}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 33
    .local v5, "slope":[[D
    filled-new-array {v3, v4}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 34
    .local v6, "tangent":[[D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 35
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    add-int/lit8 v9, v3, -0x1

    if-ge v8, v9, :cond_1

    .line 36
    add-int/lit8 v9, v8, 0x1

    aget-wide v9, v1, v9

    aget-wide v11, v1, v8

    sub-double/2addr v9, v11

    .line 37
    .local v9, "dt":D
    aget-object v11, v5, v8

    add-int/lit8 v12, v8, 0x1

    aget-object v12, v2, v12

    aget-wide v13, v12, v7

    aget-object v12, v2, v8

    aget-wide v15, v12, v7

    sub-double/2addr v13, v15

    div-double/2addr v13, v9

    aput-wide v13, v11, v7

    .line 38
    if-nez v8, :cond_0

    .line 39
    aget-object v11, v6, v8

    aget-object v12, v5, v8

    aget-wide v13, v12, v7

    aput-wide v13, v11, v7

    goto :goto_2

    .line 41
    :cond_0
    aget-object v11, v6, v8

    add-int/lit8 v12, v8, -0x1

    aget-object v12, v5, v12

    aget-wide v13, v12, v7

    aget-object v12, v5, v8

    aget-wide v15, v12, v7

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v13, v15

    aput-wide v13, v11, v7

    .line 35
    .end local v9    # "dt":D
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 44
    .end local v8    # "i":I
    :cond_1
    add-int/lit8 v8, v3, -0x1

    aget-object v8, v6, v8

    add-int/lit8 v9, v3, -0x2

    aget-object v9, v5, v9

    aget-wide v10, v9, v7

    aput-wide v10, v8, v7

    .line 34
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 47
    .end local v7    # "j":I
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    add-int/lit8 v8, v3, -0x1

    if-ge v7, v8, :cond_6

    .line 48
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v4, :cond_5

    .line 49
    aget-object v9, v5, v7

    aget-wide v10, v9, v8

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-nez v9, :cond_3

    .line 50
    aget-object v9, v6, v7

    aput-wide v12, v9, v8

    .line 51
    add-int/lit8 v9, v7, 0x1

    aget-object v9, v6, v9

    aput-wide v12, v9, v8

    goto :goto_5

    .line 53
    :cond_3
    aget-object v9, v6, v7

    aget-wide v10, v9, v8

    aget-object v9, v5, v7

    aget-wide v12, v9, v8

    div-double/2addr v10, v12

    .line 54
    .local v10, "a":D
    add-int/lit8 v9, v7, 0x1

    aget-object v9, v6, v9

    aget-wide v12, v9, v8

    aget-object v9, v5, v7

    aget-wide v14, v9, v8

    div-double/2addr v12, v14

    .line 55
    .local v12, "b":D
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    .line 56
    .local v14, "h":D
    const-wide/high16 v16, 0x4022000000000000L    # 9.0

    cmpl-double v9, v14, v16

    if-lez v9, :cond_4

    .line 57
    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    div-double v16, v16, v14

    .line 58
    .local v16, "t":D
    aget-object v9, v6, v7

    mul-double v18, v16, v10

    aget-object v20, v5, v7

    aget-wide v21, v20, v8

    mul-double v18, v18, v21

    aput-wide v18, v9, v8

    .line 59
    add-int/lit8 v9, v7, 0x1

    aget-object v9, v6, v9

    mul-double v18, v16, v12

    aget-object v20, v5, v7

    aget-wide v21, v20, v8

    mul-double v18, v18, v21

    aput-wide v18, v9, v8

    .line 48
    .end local v10    # "a":D
    .end local v12    # "b":D
    .end local v14    # "h":D
    .end local v16    # "t":D
    :cond_4
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 47
    .end local v8    # "j":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 64
    .end local v7    # "i":I
    :cond_6
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    .line 65
    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 66
    iput-object v6, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    .line 67
    return-void
.end method

.method private static diff(DDDDDD)D
    .locals 8
    .param p0, "h"    # D
    .param p2, "x"    # D
    .param p4, "y1"    # D
    .param p6, "y2"    # D
    .param p8, "t1"    # D
    .param p10, "t2"    # D

    .line 247
    mul-double v0, p2, p2

    .line 248
    .local v0, "x2":D
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    mul-double/2addr v2, v0

    mul-double/2addr v2, p6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double v6, p2, v4

    mul-double/2addr v6, p6

    add-double/2addr v2, v6

    mul-double v6, v0, v4

    mul-double/2addr v6, p4

    add-double/2addr v2, v6

    mul-double/2addr v4, p2

    mul-double/2addr v4, p4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double v6, p0, v4

    mul-double v6, v6, p10

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p0

    mul-double v4, v4, p10

    mul-double/2addr v4, p2

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    mul-double/2addr v4, p2

    sub-double/2addr v2, v4

    mul-double v4, p0, p8

    add-double/2addr v2, v4

    return-wide v2
.end method

.method private static interpolate(DDDDDD)D
    .locals 12
    .param p0, "h"    # D
    .param p2, "x"    # D
    .param p4, "y1"    # D
    .param p6, "y2"    # D
    .param p8, "t1"    # D
    .param p10, "t2"    # D

    .line 234
    mul-double v0, p2, p2

    .line 235
    .local v0, "x2":D
    mul-double v2, v0, p2

    .line 236
    .local v2, "x3":D
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v4, v2

    mul-double v4, v4, p6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, v0, v6

    mul-double v8, v8, p6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, v2, v8

    mul-double v10, v10, p4

    add-double/2addr v4, v10

    mul-double/2addr v6, v0

    mul-double v6, v6, p4

    sub-double/2addr v4, v6

    add-double v4, v4, p4

    mul-double v6, p0, p10

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, p0, p8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double v6, p0, p10

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    mul-double v6, p0, v8

    mul-double v6, v6, p8

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    mul-double v6, p0, p8

    mul-double/2addr v6, p2

    add-double/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public getPos(DI)D
    .locals 28
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 148
    .local v2, "n":I
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_0

    .line 149
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v3, v1, p3

    return-wide v3

    .line 151
    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v1, v3

    cmpl-double v1, p1, v3

    if-ltz v1, :cond_1

    .line 152
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    aget-wide v3, v1, p3

    return-wide v3

    .line 155
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_4

    .line 156
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v4, v3, v1

    cmpl-double v6, p1, v4

    if-nez v6, :cond_2

    .line 157
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, p3

    return-wide v4

    .line 159
    :cond_2
    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v3, v6

    cmpg-double v6, p1, v6

    if-gez v6, :cond_3

    .line 160
    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v3, v6

    sub-double/2addr v6, v4

    .line 161
    .local v6, "h":D
    sub-double v3, p1, v4

    div-double/2addr v3, v6

    .line 162
    .local v3, "x":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v8, v5, v1

    aget-wide v20, v8, p3

    .line 163
    .local v20, "y1":D
    add-int/lit8 v8, v1, 0x1

    aget-object v5, v5, v8

    aget-wide v22, v5, p3

    .line 164
    .local v22, "y2":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v8, v5, v1

    aget-wide v24, v8, p3

    .line 165
    .local v24, "t1":D
    add-int/lit8 v8, v1, 0x1

    aget-object v5, v5, v8

    aget-wide v26, v5, p3

    .line 166
    .local v26, "t2":D
    move-wide v8, v6

    move-wide v10, v3

    move-wide/from16 v12, v20

    move-wide/from16 v14, v22

    move-wide/from16 v16, v24

    move-wide/from16 v18, v26

    invoke-static/range {v8 .. v19}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v8

    return-wide v8

    .line 155
    .end local v3    # "x":D
    .end local v6    # "h":D
    .end local v20    # "y1":D
    .end local v22    # "y2":D
    .end local v24    # "t1":D
    .end local v26    # "t2":D
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_4
    const-wide/16 v3, 0x0

    return-wide v3
.end method

.method public getPos(D[D)V
    .locals 29
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 72
    .local v2, "n":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 73
    .local v3, "dim":I
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_1

    .line 74
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 75
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v1

    aput-wide v6, p3, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "j":I
    :cond_0
    return-void

    .line 79
    :cond_1
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_3

    .line 80
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 81
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    aget-wide v5, v4, v1

    aput-wide v5, p3, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "j":I
    :cond_2
    return-void

    .line 86
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_7

    .line 87
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v5, v4, v1

    cmpl-double v4, p1, v5

    if-nez v4, :cond_4

    .line 88
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 89
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 92
    .end local v4    # "j":I
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    cmpg-double v5, p1, v5

    if-gez v5, :cond_6

    .line 93
    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    aget-wide v7, v4, v1

    sub-double/2addr v5, v7

    .line 94
    .local v5, "h":D
    sub-double v7, p1, v7

    div-double/2addr v7, v5

    .line 95
    .local v7, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v3, :cond_5

    .line 96
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v10, v9, v1

    aget-wide v21, v10, v4

    .line 97
    .local v21, "y1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    aget-wide v23, v9, v4

    .line 98
    .local v23, "y2":D
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v10, v9, v1

    aget-wide v25, v10, v4

    .line 99
    .local v25, "t1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    aget-wide v27, v9, v4

    .line 100
    .local v27, "t2":D
    move-wide v9, v5

    move-wide v11, v7

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    invoke-static/range {v9 .. v20}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v9

    aput-wide v9, p3, v4

    .line 95
    .end local v21    # "y1":D
    .end local v23    # "y2":D
    .end local v25    # "t1":D
    .end local v27    # "t2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 102
    .end local v4    # "j":I
    :cond_5
    return-void

    .line 86
    .end local v5    # "h":D
    .end local v7    # "x":D
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public getPos(D[F)V
    .locals 29
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 110
    .local v2, "n":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 111
    .local v3, "dim":I
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_1

    .line 112
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 113
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v1

    double-to-float v5, v6

    aput v5, p3, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "j":I
    :cond_0
    return-void

    .line 117
    :cond_1
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_3

    .line 118
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 119
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    aget-wide v5, v4, v1

    double-to-float v4, v5

    aput v4, p3, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    .end local v1    # "j":I
    :cond_2
    return-void

    .line 124
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_7

    .line 125
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v5, v4, v1

    cmpl-double v4, p1, v5

    if-nez v4, :cond_4

    .line 126
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 127
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v4

    double-to-float v5, v6

    aput v5, p3, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 130
    .end local v4    # "j":I
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    cmpg-double v5, p1, v5

    if-gez v5, :cond_6

    .line 131
    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    aget-wide v7, v4, v1

    sub-double/2addr v5, v7

    .line 132
    .local v5, "h":D
    sub-double v7, p1, v7

    div-double/2addr v7, v5

    .line 133
    .local v7, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v3, :cond_5

    .line 134
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v10, v9, v1

    aget-wide v21, v10, v4

    .line 135
    .local v21, "y1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    aget-wide v23, v9, v4

    .line 136
    .local v23, "y2":D
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v10, v9, v1

    aget-wide v25, v10, v4

    .line 137
    .local v25, "t1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    aget-wide v27, v9, v4

    .line 138
    .local v27, "t2":D
    move-wide v9, v5

    move-wide v11, v7

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    invoke-static/range {v9 .. v20}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v9

    double-to-float v9, v9

    aput v9, p3, v4

    .line 133
    .end local v21    # "y1":D
    .end local v23    # "y2":D
    .end local v25    # "t1":D
    .end local v27    # "t2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 140
    .end local v4    # "j":I
    :cond_5
    return-void

    .line 124
    .end local v5    # "h":D
    .end local v7    # "x":D
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public getSlope(DI)D
    .locals 30
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 204
    .local v2, "n":I
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 205
    aget-wide v3, v1, v3

    .end local p1    # "t":D
    .local v3, "t":D
    goto :goto_0

    .line 206
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v1, v3

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_1

    .line 207
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v1, v3

    .end local p1    # "t":D
    .restart local v3    # "t":D
    goto :goto_0

    .line 206
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_1
    move-wide/from16 v3, p1

    .line 209
    .end local p1    # "t":D
    .restart local v3    # "t":D
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_3

    .line 210
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v5, v6

    cmpg-double v6, v3, v6

    if-gtz v6, :cond_2

    .line 211
    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v5, v6

    aget-wide v8, v5, v1

    sub-double/2addr v6, v8

    .line 212
    .local v6, "h":D
    sub-double v8, v3, v8

    div-double/2addr v8, v6

    .line 213
    .local v8, "x":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v10, v5, v1

    aget-wide v22, v10, p3

    .line 214
    .local v22, "y1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v5, v5, v10

    aget-wide v24, v5, p3

    .line 215
    .local v24, "y2":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v10, v5, v1

    aget-wide v26, v10, p3

    .line 216
    .local v26, "t1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v5, v5, v10

    aget-wide v28, v5, p3

    .line 217
    .local v28, "t2":D
    move-wide v10, v6

    move-wide v12, v8

    move-wide/from16 v14, v22

    move-wide/from16 v16, v24

    move-wide/from16 v18, v26

    move-wide/from16 v20, v28

    invoke-static/range {v10 .. v21}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v10

    div-double/2addr v10, v6

    return-wide v10

    .line 209
    .end local v6    # "h":D
    .end local v8    # "x":D
    .end local v22    # "y1":D
    .end local v24    # "y2":D
    .end local v26    # "t1":D
    .end local v28    # "t2":D
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    .end local v1    # "i":I
    :cond_3
    const-wide/16 v5, 0x0

    return-wide v5
.end method

.method public getSlope(D[D)V
    .locals 31
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 176
    .local v2, "n":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 177
    .local v3, "dim":I
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_0

    .line 178
    aget-wide v4, v1, v4

    .end local p1    # "t":D
    .local v4, "t":D
    goto :goto_0

    .line 179
    .end local v4    # "t":D
    .restart local p1    # "t":D
    :cond_0
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_1

    .line 180
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    .end local p1    # "t":D
    .restart local v4    # "t":D
    goto :goto_0

    .line 179
    .end local v4    # "t":D
    .restart local p1    # "t":D
    :cond_1
    move-wide/from16 v4, p1

    .line 183
    .end local p1    # "t":D
    .restart local v4    # "t":D
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_4

    .line 184
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v7, v1, 0x1

    aget-wide v7, v6, v7

    cmpg-double v7, v4, v7

    if-gtz v7, :cond_3

    .line 185
    add-int/lit8 v7, v1, 0x1

    aget-wide v7, v6, v7

    aget-wide v9, v6, v1

    sub-double/2addr v7, v9

    .line 186
    .local v7, "h":D
    sub-double v9, v4, v9

    div-double/2addr v9, v7

    .line 187
    .local v9, "x":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_2

    .line 188
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v12, v11, v1

    aget-wide v23, v12, v6

    .line 189
    .local v23, "y1":D
    add-int/lit8 v12, v1, 0x1

    aget-object v11, v11, v12

    aget-wide v25, v11, v6

    .line 190
    .local v25, "y2":D
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v12, v11, v1

    aget-wide v27, v12, v6

    .line 191
    .local v27, "t1":D
    add-int/lit8 v12, v1, 0x1

    aget-object v11, v11, v12

    aget-wide v29, v11, v6

    .line 192
    .local v29, "t2":D
    move-wide v11, v7

    move-wide v13, v9

    move-wide/from16 v15, v23

    move-wide/from16 v17, v25

    move-wide/from16 v19, v27

    move-wide/from16 v21, v29

    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v11

    div-double/2addr v11, v7

    aput-wide v11, p3, v6

    .line 187
    .end local v23    # "y1":D
    .end local v25    # "y2":D
    .end local v27    # "t1":D
    .end local v29    # "t2":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 194
    .end local v6    # "j":I
    :cond_2
    goto :goto_3

    .line 183
    .end local v7    # "h":D
    .end local v9    # "x":D
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    return-object v0
.end method
