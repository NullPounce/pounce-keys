.class public Landroidx/constraintlayout/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "HyperSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0
    .param p1, "points"    # [[D

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/HyperSpline;->setup([[D)V

    .line 41
    return-void
.end method

.method static calcNaturalCubic(I[D)[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
    .locals 22
    .param p0, "n"    # I
    .param p1, "x"    # [D

    .line 148
    move/from16 v0, p0

    new-array v1, v0, [D

    .line 149
    .local v1, "gamma":[D
    new-array v2, v0, [D

    .line 150
    .local v2, "delta":[D
    new-array v3, v0, [D

    .line 151
    .local v3, "D":[D
    add-int/lit8 v0, v0, -0x1

    .line 153
    .end local p0    # "n":I
    .local v0, "n":I
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    aput-wide v4, v1, v6

    .line 154
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ge v4, v0, :cond_0

    .line 155
    add-int/lit8 v5, v4, -0x1

    aget-wide v9, v1, v5

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    sub-double/2addr v11, v9

    div-double/2addr v7, v11

    aput-wide v7, v1, v4

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v4    # "i":I
    :cond_0
    add-int/lit8 v4, v0, -0x1

    aget-wide v4, v1, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    sub-double v4, v9, v4

    div-double/2addr v7, v4

    aput-wide v7, v1, v0

    .line 159
    const/4 v4, 0x1

    aget-wide v4, p1, v4

    aget-wide v7, p1, v6

    sub-double/2addr v4, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v7

    aget-wide v11, v1, v6

    mul-double/2addr v4, v11

    aput-wide v4, v2, v6

    .line 160
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 161
    add-int/lit8 v5, v4, 0x1

    aget-wide v5, p1, v5

    add-int/lit8 v11, v4, -0x1

    aget-wide v11, p1, v11

    sub-double/2addr v5, v11

    mul-double/2addr v5, v7

    add-int/lit8 v11, v4, -0x1

    aget-wide v11, v2, v11

    sub-double/2addr v5, v11

    aget-wide v11, v1, v4

    mul-double/2addr v5, v11

    aput-wide v5, v2, v4

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    .end local v4    # "i":I
    :cond_1
    aget-wide v4, p1, v0

    add-int/lit8 v6, v0, -0x1

    aget-wide v11, p1, v6

    sub-double/2addr v4, v11

    mul-double/2addr v4, v7

    add-int/lit8 v6, v0, -0x1

    aget-wide v11, v2, v6

    sub-double/2addr v4, v11

    aget-wide v11, v1, v0

    mul-double/2addr v4, v11

    aput-wide v4, v2, v0

    .line 165
    aget-wide v4, v2, v0

    aput-wide v4, v3, v0

    .line 166
    add-int/lit8 v4, v0, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_2

    .line 167
    aget-wide v5, v2, v4

    aget-wide v11, v1, v4

    add-int/lit8 v13, v4, 0x1

    aget-wide v13, v3, v13

    mul-double/2addr v11, v13

    sub-double/2addr v5, v11

    aput-wide v5, v3, v4

    .line 166
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 170
    .end local v4    # "i":I
    :cond_2
    new-array v4, v0, [Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 171
    .local v4, "C":[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 172
    new-instance v6, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-wide v11, p1, v5

    double-to-float v11, v11

    float-to-double v12, v11

    aget-wide v14, v3, v5

    add-int/lit8 v11, v5, 0x1

    aget-wide v16, p1, v11

    aget-wide v18, p1, v5

    sub-double v16, v16, v18

    mul-double v16, v16, v7

    aget-wide v18, v3, v5

    mul-double v18, v18, v9

    sub-double v16, v16, v18

    add-int/lit8 v11, v5, 0x1

    aget-wide v18, v3, v11

    sub-double v16, v16, v18

    aget-wide v18, p1, v5

    add-int/lit8 v11, v5, 0x1

    aget-wide v20, p1, v11

    sub-double v18, v18, v20

    mul-double v18, v18, v9

    aget-wide v20, v3, v5

    add-double v18, v18, v20

    add-int/lit8 v11, v5, 0x1

    aget-wide v20, v3, v11

    add-double v18, v18, v20

    move-object v11, v6

    invoke-direct/range {v11 .. v19}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    aput-object v6, v4, v5

    .line 171
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 175
    .end local v5    # "i":I
    :cond_3
    return-object v4
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;)D
    .locals 13
    .param p1, "curve"    # [Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 121
    const-wide/16 v0, 0x0

    .line 123
    .local v0, "sum":D
    array-length v2, p1

    .line 124
    .local v2, "N":I
    array-length v3, p1

    new-array v3, v3, [D

    .line 125
    .local v3, "old":[D
    const-wide/16 v4, 0x0

    .local v4, "i":D
    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_2

    .line 126
    const-wide/16 v6, 0x0

    .line 127
    .local v6, "s":D
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v9, p1

    if-ge v8, v9, :cond_0

    .line 128
    aget-wide v9, v3, v8

    .line 129
    .local v9, "tmp":D
    aget-object v11, p1, v8

    invoke-virtual {v11, v4, v5}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v11

    aput-wide v11, v3, v8

    sub-double/2addr v9, v11

    .line 130
    mul-double v11, v9, v9

    add-double/2addr v6, v11

    .line 127
    .end local v9    # "tmp":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 132
    .end local v8    # "j":I
    :cond_0
    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-lez v8, :cond_1

    .line 133
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v0, v8

    .line 125
    .end local v6    # "s":D
    :cond_1
    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-double/2addr v4, v6

    goto :goto_0

    .line 137
    .end local v4    # "i":D
    :cond_2
    const-wide/16 v4, 0x0

    .line 138
    .local v4, "s":D
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_2
    array-length v9, p1

    if-ge v8, v9, :cond_3

    .line 139
    aget-wide v9, v3, v8

    .line 140
    .restart local v9    # "tmp":D
    aget-object v11, p1, v8

    invoke-virtual {v11, v6, v7}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v11

    aput-wide v11, v3, v8

    sub-double/2addr v9, v11

    .line 141
    mul-double v11, v9, v9

    add-double/2addr v4, v11

    .line 138
    .end local v9    # "tmp":D
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 143
    .end local v8    # "j":I
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    .line 144
    return-wide v0
.end method

.method public getPos(DI)D
    .locals 9
    .param p1, "p"    # D
    .param p3, "splineNumber"    # I

    .line 111
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr v0, p1

    .line 112
    .local v0, "pos":D
    const-wide/16 v2, 0x0

    .line 113
    .local v2, "sum":D
    const/4 v4, 0x0

    .line 114
    .local v4, "k":I
    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    aget-wide v6, v5, v4

    cmpg-double v8, v6, v0

    if-gez v8, :cond_0

    .line 115
    sub-double/2addr v0, v6

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v6, v6, p3

    aget-object v6, v6, v4

    aget-wide v7, v5, v4

    div-double v7, v0, v7

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v5

    return-wide v5
.end method

.method public getPos(D[D)V
    .locals 10
    .param p1, "p"    # D
    .param p3, "x"    # [D

    .line 87
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr v0, p1

    .line 88
    .local v0, "pos":D
    const-wide/16 v2, 0x0

    .line 89
    .local v2, "sum":D
    const/4 v4, 0x0

    .line 90
    .local v4, "k":I
    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    aget-wide v6, v5, v4

    cmpg-double v5, v6, v0

    if-gez v5, :cond_0

    .line 91
    sub-double/2addr v0, v6

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 93
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p3

    if-ge v5, v6, :cond_1

    .line 94
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v6, v6, v5

    aget-object v6, v6, v4

    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v8, v7, v4

    div-double v7, v0, v8

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v6

    aput-wide v6, p3, v5

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public getPos(D[F)V
    .locals 10
    .param p1, "p"    # D
    .param p3, "x"    # [F

    .line 99
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr v0, p1

    .line 100
    .local v0, "pos":D
    const-wide/16 v2, 0x0

    .line 101
    .local v2, "sum":D
    const/4 v4, 0x0

    .line 102
    .local v4, "k":I
    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    aget-wide v6, v5, v4

    cmpg-double v5, v6, v0

    if-gez v5, :cond_0

    .line 103
    sub-double/2addr v0, v6

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p3

    if-ge v5, v6, :cond_1

    .line 106
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v6, v6, v5

    aget-object v6, v6, v4

    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v8, v7, v4

    div-double v7, v0, v8

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, p3, v5

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 108
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public getVelocity(D[D)V
    .locals 10
    .param p1, "p"    # D
    .param p3, "v"    # [D

    .line 75
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr v0, p1

    .line 76
    .local v0, "pos":D
    const-wide/16 v2, 0x0

    .line 77
    .local v2, "sum":D
    const/4 v4, 0x0

    .line 78
    .local v4, "k":I
    :goto_0
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_0

    aget-wide v6, v5, v4

    cmpg-double v5, v6, v0

    if-gez v5, :cond_0

    .line 79
    sub-double/2addr v0, v6

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, p3

    if-ge v5, v6, :cond_1

    .line 82
    iget-object v6, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v6, v6, v5

    aget-object v6, v6, v4

    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v8, v7, v4

    div-double v7, v0, v8

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->vel(D)D

    move-result-wide v6

    aput-wide v6, p3, v5

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public setup([[D)V
    .locals 7
    .param p1, "points"    # [[D

    .line 47
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    .line 48
    array-length v1, p1

    iput v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mPoints:I

    .line 49
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCtl:[[D

    .line 50
    iget v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    new-array v0, v0, [[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 51
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v0, v1, :cond_1

    .line 52
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mPoints:I

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCtl:[[D

    aget-object v2, v2, v0

    aget-object v3, p1, v1

    aget-wide v4, v3, v0

    aput-wide v4, v2, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    .end local v1    # "p":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "d":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "d":I
    :goto_2
    iget v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v0, v1, :cond_2

    .line 58
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCtl:[[D

    aget-object v2, v2, v0

    array-length v3, v2

    invoke-static {v3, v2}, Landroidx/constraintlayout/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    move-result-object v2

    aput-object v2, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 61
    .end local v0    # "d":I
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mPoints:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    .line 62
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    .line 63
    new-array v0, v1, [Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 64
    .local v0, "temp":[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
    const/4 v1, 0x0

    .restart local v1    # "p":I
    :goto_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 65
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_4
    iget v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v2, v3, :cond_3

    .line 67
    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 70
    .end local v2    # "d":I
    :cond_3
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;)D

    move-result-wide v5

    aput-wide v5, v4, v1

    add-double/2addr v2, v5

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 72
    .end local v1    # "p":I
    :cond_4
    return-void
.end method
