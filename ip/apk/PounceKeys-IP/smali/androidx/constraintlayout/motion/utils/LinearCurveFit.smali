.class public Landroidx/constraintlayout/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 21
    .param p1, "time"    # [D
    .param p2, "y"    # [[D

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 28
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    iput-wide v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 31
    array-length v3, v1

    .line 32
    .local v3, "N":I
    const/4 v4, 0x0

    aget-object v5, v2, v4

    array-length v5, v5

    .line 33
    .local v5, "dim":I
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 34
    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 35
    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "sum":D
    const-wide/16 v8, 0x0

    .local v8, "lastx":D
    const-wide/16 v10, 0x0

    .line 38
    .local v10, "lasty":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v1

    if-ge v12, v13, :cond_1

    .line 39
    aget-object v13, v2, v12

    aget-wide v14, v13, v4

    .line 40
    .local v14, "px":D
    aget-object v13, v2, v12

    aget-wide v16, v13, v4

    .line 41
    .local v16, "py":D
    if-lez v12, :cond_0

    .line 42
    move/from16 v18, v5

    .end local v5    # "dim":I
    .local v18, "dim":I
    sub-double v4, v14, v8

    move-wide/from16 v19, v14

    .end local v14    # "px":D
    .local v19, "px":D
    sub-double v13, v16, v10

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    goto :goto_1

    .line 41
    .end local v18    # "dim":I
    .end local v19    # "px":D
    .restart local v5    # "dim":I
    .restart local v14    # "px":D
    :cond_0
    move/from16 v18, v5

    move-wide/from16 v19, v14

    .line 44
    .end local v5    # "dim":I
    .end local v14    # "px":D
    .restart local v18    # "dim":I
    .restart local v19    # "px":D
    :goto_1
    move-wide/from16 v8, v19

    .line 45
    move-wide/from16 v10, v16

    .line 38
    .end local v16    # "py":D
    .end local v19    # "px":D
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v18

    const/4 v4, 0x0

    goto :goto_0

    .end local v18    # "dim":I
    .restart local v5    # "dim":I
    :cond_1
    move/from16 v18, v5

    .line 47
    .end local v5    # "dim":I
    .end local v12    # "i":I
    .restart local v18    # "dim":I
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    goto :goto_2

    .line 35
    .end local v6    # "sum":D
    .end local v8    # "lastx":D
    .end local v10    # "lasty":D
    .end local v18    # "dim":I
    .restart local v5    # "dim":I
    :cond_2
    move/from16 v18, v5

    .line 49
    .end local v5    # "dim":I
    .restart local v18    # "dim":I
    :goto_2
    return-void
.end method

.method private getLength2D(D)D
    .locals 36
    .param p1, "t"    # D

    .line 58
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 59
    return-wide v2

    .line 61
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v4, v1

    .line 62
    .local v4, "n":I
    const/4 v5, 0x0

    aget-wide v6, v1, v5

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_1

    .line 63
    return-wide v2

    .line 65
    :cond_1
    add-int/lit8 v6, v4, -0x1

    aget-wide v6, v1, v6

    cmpl-double v1, p1, v6

    if-ltz v1, :cond_2

    .line 66
    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    return-wide v1

    .line 68
    :cond_2
    const-wide/16 v6, 0x0

    .line 69
    .local v6, "sum":D
    const-wide/16 v8, 0x0

    .local v8, "last_x":D
    const-wide/16 v10, 0x0

    .line 71
    .local v10, "last_y":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v12, v4, -0x1

    if-ge v1, v12, :cond_6

    .line 72
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v12, v12, v1

    aget-wide v13, v12, v5

    .line 73
    .local v13, "px":D
    const/4 v15, 0x1

    aget-wide v16, v12, v15

    .line 74
    .local v16, "py":D
    if-lez v1, :cond_3

    .line 75
    sub-double v2, v13, v8

    move-wide/from16 v20, v8

    .end local v8    # "last_x":D
    .local v20, "last_x":D
    sub-double v8, v16, v10

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    add-double/2addr v6, v2

    goto :goto_1

    .line 74
    .end local v20    # "last_x":D
    .restart local v8    # "last_x":D
    :cond_3
    move-wide/from16 v20, v8

    .line 77
    .end local v8    # "last_x":D
    .restart local v20    # "last_x":D
    :goto_1
    move-wide v8, v13

    .line 78
    .end local v20    # "last_x":D
    .restart local v8    # "last_x":D
    move-wide/from16 v10, v16

    .line 79
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v20, v2, v1

    cmpl-double v3, p1, v20

    if-nez v3, :cond_4

    .line 80
    return-wide v6

    .line 82
    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-wide v22, v2, v3

    cmpg-double v3, p1, v22

    if-gez v3, :cond_5

    .line 83
    add-int/lit8 v3, v1, 0x1

    aget-wide v18, v2, v3

    sub-double v18, v18, v20

    .line 84
    .local v18, "h":D
    sub-double v2, p1, v20

    div-double v2, v2, v18

    .line 85
    .local v2, "x":D
    iget-object v12, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v20, v12, v1

    aget-wide v21, v20, v5

    .line 86
    .local v21, "x1":D
    add-int/lit8 v23, v1, 0x1

    aget-object v23, v12, v23

    aget-wide v24, v23, v5

    .line 87
    .local v24, "x2":D
    aget-wide v26, v20, v15

    .line 88
    .local v26, "y1":D
    add-int/lit8 v5, v1, 0x1

    aget-object v5, v12, v5

    aget-wide v28, v5, v15

    .line 90
    .local v28, "y2":D
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    sub-double v32, v30, v2

    mul-double v32, v32, v26

    mul-double v34, v28, v2

    add-double v32, v32, v34

    move v12, v4

    .end local v4    # "n":I
    .local v12, "n":I
    sub-double v4, v16, v32

    .line 91
    .end local v16    # "py":D
    .local v4, "py":D
    sub-double v30, v30, v2

    mul-double v30, v30, v21

    mul-double v15, v24, v2

    add-double v30, v30, v15

    sub-double v13, v13, v30

    .line 92
    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    add-double/2addr v6, v15

    .line 94
    return-wide v6

    .line 82
    .end local v2    # "x":D
    .end local v12    # "n":I
    .end local v18    # "h":D
    .end local v21    # "x1":D
    .end local v24    # "x2":D
    .end local v26    # "y1":D
    .end local v28    # "y2":D
    .local v4, "n":I
    .restart local v16    # "py":D
    :cond_5
    move v12, v4

    .line 71
    .end local v4    # "n":I
    .end local v13    # "px":D
    .end local v16    # "py":D
    .restart local v12    # "n":I
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    .end local v12    # "n":I
    .restart local v4    # "n":I
    :cond_6
    const-wide/16 v1, 0x0

    return-wide v1
.end method


# virtual methods
.method public getPos(DI)D
    .locals 17
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    .line 174
    .local v2, "n":I
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_0

    .line 175
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v3, v1, p3

    return-wide v3

    .line 177
    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v1, v3

    cmpl-double v1, p1, v3

    if-ltz v1, :cond_1

    .line 178
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    aget-wide v3, v1, p3

    return-wide v3

    .line 181
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_4

    .line 182
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v3, v1

    cmpl-double v6, p1, v4

    if-nez v6, :cond_2

    .line 183
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, p3

    return-wide v4

    .line 185
    :cond_2
    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v3, v6

    cmpg-double v6, p1, v6

    if-gez v6, :cond_3

    .line 186
    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v3, v6

    sub-double/2addr v6, v4

    .line 187
    .local v6, "h":D
    sub-double v3, p1, v4

    div-double/2addr v3, v6

    .line 188
    .local v3, "x":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v8, v5, v1

    aget-wide v9, v8, p3

    .line 189
    .local v9, "y1":D
    add-int/lit8 v8, v1, 0x1

    aget-object v5, v5, v8

    aget-wide v11, v5, p3

    .line 190
    .local v11, "y2":D
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v3

    mul-double/2addr v13, v9

    mul-double v15, v11, v3

    add-double/2addr v13, v15

    return-wide v13

    .line 181
    .end local v3    # "x":D
    .end local v6    # "h":D
    .end local v9    # "y1":D
    .end local v11    # "y2":D
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_4
    const-wide/16 v3, 0x0

    return-wide v3
.end method

.method public getPos(D[D)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    .line 102
    .local v2, "n":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 103
    .local v3, "dim":I
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_1

    .line 104
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 105
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v1

    aput-wide v6, p3, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "j":I
    :cond_0
    return-void

    .line 109
    :cond_1
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_3

    .line 110
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 111
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    aget-wide v5, v4, v1

    aput-wide v5, p3, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "j":I
    :cond_2
    return-void

    .line 116
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_7

    .line 117
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v1

    cmpl-double v4, p1, v5

    if-nez v4, :cond_4

    .line 118
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 119
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 122
    .end local v4    # "j":I
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    cmpg-double v5, p1, v5

    if-gez v5, :cond_6

    .line 123
    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    aget-wide v7, v4, v1

    sub-double/2addr v5, v7

    .line 124
    .local v5, "h":D
    sub-double v7, p1, v7

    div-double/2addr v7, v5

    .line 125
    .local v7, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v3, :cond_5

    .line 126
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v10, v9, v1

    aget-wide v11, v10, v4

    .line 127
    .local v11, "y1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    aget-wide v13, v9, v4

    .line 129
    .local v13, "y2":D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    mul-double/2addr v9, v11

    mul-double v15, v13, v7

    add-double/2addr v9, v15

    aput-wide v9, p3, v4

    .line 125
    .end local v11    # "y1":D
    .end local v13    # "y2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 131
    .end local v4    # "j":I
    :cond_5
    return-void

    .line 116
    .end local v5    # "h":D
    .end local v7    # "x":D
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public getPos(D[F)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    .line 138
    .local v2, "n":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 139
    .local v3, "dim":I
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_1

    .line 140
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 141
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v4

    aget-wide v6, v5, v1

    double-to-float v5, v6

    aput v5, p3, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "j":I
    :cond_0
    return-void

    .line 145
    :cond_1
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_3

    .line 146
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 147
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    aget-wide v5, v4, v1

    double-to-float v4, v5

    aput v4, p3, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v1    # "j":I
    :cond_2
    return-void

    .line 152
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_7

    .line 153
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v1

    cmpl-double v4, p1, v5

    if-nez v4, :cond_4

    .line 154
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 155
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v4

    double-to-float v5, v6

    aput v5, p3, v4

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 158
    .end local v4    # "j":I
    :cond_4
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    cmpg-double v5, p1, v5

    if-gez v5, :cond_6

    .line 159
    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v4, v5

    aget-wide v7, v4, v1

    sub-double/2addr v5, v7

    .line 160
    .local v5, "h":D
    sub-double v7, p1, v7

    div-double/2addr v7, v5

    .line 161
    .local v7, "x":D
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_4
    if-ge v4, v3, :cond_5

    .line 162
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v10, v9, v1

    aget-wide v11, v10, v4

    .line 163
    .local v11, "y1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v9, v9, v10

    aget-wide v13, v9, v4

    .line 165
    .local v13, "y2":D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v7

    mul-double/2addr v9, v11

    mul-double v15, v13, v7

    add-double/2addr v9, v15

    double-to-float v9, v9

    aput v9, p3, v4

    .line 161
    .end local v11    # "y1":D
    .end local v13    # "y2":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 167
    .end local v4    # "j":I
    :cond_5
    return-void

    .line 152
    .end local v5    # "h":D
    .end local v7    # "x":D
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public getSlope(DI)D
    .locals 17
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    .line 225
    .local v2, "n":I
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 226
    aget-wide v3, v1, v3

    .end local p1    # "t":D
    .local v3, "t":D
    goto :goto_0

    .line 227
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v1, v3

    cmpl-double v3, p1, v3

    if-ltz v3, :cond_1

    .line 228
    add-int/lit8 v3, v2, -0x1

    aget-wide v3, v1, v3

    .end local p1    # "t":D
    .restart local v3    # "t":D
    goto :goto_0

    .line 227
    .end local v3    # "t":D
    .restart local p1    # "t":D
    :cond_1
    move-wide/from16 v3, p1

    .line 230
    .end local p1    # "t":D
    .restart local v3    # "t":D
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_3

    .line 231
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v5, v6

    cmpg-double v6, v3, v6

    if-gtz v6, :cond_2

    .line 232
    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v5, v6

    aget-wide v8, v5, v1

    sub-double/2addr v6, v8

    .line 233
    .local v6, "h":D
    sub-double v8, v3, v8

    div-double/2addr v8, v6

    .line 234
    .local v8, "x":D
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v10, v5, v1

    aget-wide v11, v10, p3

    .line 235
    .local v11, "y1":D
    add-int/lit8 v10, v1, 0x1

    aget-object v5, v5, v10

    aget-wide v13, v5, p3

    .line 236
    .local v13, "y2":D
    sub-double v15, v13, v11

    div-double/2addr v15, v6

    return-wide v15

    .line 230
    .end local v6    # "h":D
    .end local v8    # "x":D
    .end local v11    # "y1":D
    .end local v13    # "y2":D
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1    # "i":I
    :cond_3
    const-wide/16 v5, 0x0

    return-wide v5
.end method

.method public getSlope(D[D)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 198
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v2, v1

    .line 199
    .local v2, "n":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 200
    .local v3, "dim":I
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_0

    .line 201
    aget-wide v4, v1, v4

    .end local p1    # "t":D
    .local v4, "t":D
    goto :goto_0

    .line 202
    .end local v4    # "t":D
    .restart local p1    # "t":D
    :cond_0
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_1

    .line 203
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    .end local p1    # "t":D
    .restart local v4    # "t":D
    goto :goto_0

    .line 202
    .end local v4    # "t":D
    .restart local p1    # "t":D
    :cond_1
    move-wide/from16 v4, p1

    .line 206
    .end local p1    # "t":D
    .restart local v4    # "t":D
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_4

    .line 207
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v7, v1, 0x1

    aget-wide v7, v6, v7

    cmpg-double v7, v4, v7

    if-gtz v7, :cond_3

    .line 208
    add-int/lit8 v7, v1, 0x1

    aget-wide v7, v6, v7

    aget-wide v9, v6, v1

    sub-double/2addr v7, v9

    .line 209
    .local v7, "h":D
    sub-double v9, v4, v9

    div-double/2addr v9, v7

    .line 210
    .local v9, "x":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_2

    .line 211
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v12, v11, v1

    aget-wide v13, v12, v6

    .line 212
    .local v13, "y1":D
    add-int/lit8 v12, v1, 0x1

    aget-object v11, v11, v12

    aget-wide v15, v11, v6

    .line 214
    .local v15, "y2":D
    sub-double v11, v15, v13

    div-double/2addr v11, v7

    aput-wide v11, p3, v6

    .line 210
    .end local v13    # "y1":D
    .end local v15    # "y2":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 216
    .end local v6    # "j":I
    :cond_2
    goto :goto_3

    .line 206
    .end local v7    # "h":D
    .end local v9    # "x":D
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    return-object v0
.end method
