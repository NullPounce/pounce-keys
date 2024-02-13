.class Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;
.super Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mCache:[F

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p2, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;-><init>()V

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    .line 323
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    .line 325
    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "value"    # F
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "value"    # Landroidx/constraintlayout/widget/ConstraintAttribute;
    .param p3, "period"    # F
    .param p4, "shape"    # I
    .param p5, "offset"    # F

    .line 354
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 355
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v2, 0x1

    aput p5, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 356
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveShape:I

    .line 357
    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .param p3, "time"    # J
    .param p5, "cache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 361
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    move/from16 v4, p2

    float-to-double v5, v4

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v3, v5, v6, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 362
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    aget v5, v3, v5

    .line 363
    .local v5, "period":F
    array-length v6, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v3, v3, v6

    .line 364
    .local v3, "offset":F
    iget-wide v8, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    sub-long v8, v1, v8

    .line 365
    .local v8, "delta_time":J
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    float-to-double v10, v6

    long-to-double v12, v8

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v12, v14

    float-to-double v14, v5

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v10, v12

    double-to-float v6, v10

    iput v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    .line 366
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_time:J

    .line 367
    iget v6, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->last_cycle:F

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->calcWave(F)F

    move-result v6

    .line 368
    .local v6, "wave":F
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 369
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    array-length v12, v12

    if-ge v11, v12, :cond_1

    .line 370
    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v13, v13, v11

    float-to-double v13, v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_0

    move v13, v7

    goto :goto_1

    :cond_0
    move v13, v10

    :goto_1
    or-int/2addr v12, v13

    iput-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 371
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    aget v13, v13, v11

    mul-float/2addr v13, v6

    add-float/2addr v13, v3

    aput v13, v12, v11

    .line 369
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 373
    .end local v11    # "i":I
    :cond_1
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    move-object/from16 v12, p1

    invoke-virtual {v10, v12, v11}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 374
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-eqz v10, :cond_2

    .line 375
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    .line 377
    :cond_2
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mContinue:Z

    return v7
.end method

.method public setup(I)V
    .locals 14
    .param p1, "curveType"    # I

    .line 328
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 329
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v1

    .line 330
    .local v1, "dimensionality":I
    new-array v3, v0, [D

    .line 331
    .local v3, "time":[D
    add-int/lit8 v4, v1, 0x2

    new-array v4, v4, [F

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    .line 332
    new-array v4, v1, [F

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCache:[F

    .line 333
    add-int/lit8 v4, v1, 0x2

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 334
    .local v4, "values":[[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 335
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 336
    .local v6, "key":I
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 337
    .local v7, "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 338
    .local v8, "waveProp":[F
    int-to-double v9, v6

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v9, v11

    aput-wide v9, v3, v5

    .line 339
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 340
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mTempValues:[F

    array-length v11, v10

    if-ge v9, v11, :cond_0

    .line 341
    aget-object v11, v4, v5

    aget v10, v10, v9

    float-to-double v12, v10

    aput-wide v12, v11, v9

    .line 340
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 343
    .end local v9    # "k":I
    :cond_0
    aget-object v9, v4, v5

    aget v10, v8, v2

    float-to-double v10, v10

    aput-wide v10, v9, v1

    .line 344
    aget-object v9, v4, v5

    add-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    aget v11, v8, v11

    float-to-double v11, v11

    aput-wide v11, v9, v10

    .line 334
    .end local v6    # "key":I
    .end local v7    # "ca":Landroidx/constraintlayout/widget/ConstraintAttribute;
    .end local v8    # "waveProp":[F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 346
    .end local v5    # "i":I
    :cond_1
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 347
    return-void
.end method
