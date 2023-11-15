.class public Landroidx/constraintlayout/helper/widget/Layer;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Layer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Layer"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z

.field protected mComputedCenterX:F

.field protected mComputedCenterY:F

.field protected mComputedMaxX:F

.field protected mComputedMaxY:F

.field protected mComputedMinX:F

.field protected mComputedMinY:F

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGroupRotateAngle:F

.field mNeedBounds:Z

.field private mRotationCenterX:F

.field private mRotationCenterY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mShiftX:F

.field private mShiftY:F

.field mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 21
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    .line 27
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    .line 28
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    .line 30
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    .line 31
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    .line 32
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    .line 33
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    .line 37
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    .line 27
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    .line 28
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    .line 30
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    .line 31
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    .line 32
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    .line 33
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    .line 37
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    .line 22
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    .line 23
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    .line 25
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    .line 27
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    .line 28
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    .line 30
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    .line 31
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    .line 32
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    .line 33
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    .line 37
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    .line 52
    return-void
.end method

.method private reCacheViews()V
    .locals 4

    .line 240
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-nez v0, :cond_1

    .line 244
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_2

    array-length v0, v0

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-eq v0, v1, :cond_3

    .line 248
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    .line 250
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v0, v1, :cond_4

    .line 251
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    aget v1, v1, v0

    .line 252
    .local v1, "id":I
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 250
    .end local v1    # "id":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private transform()V
    .locals 18

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    if-nez v1, :cond_1

    .line 310
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/Layer;->reCacheViews()V

    .line 312
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    .line 314
    iget v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 315
    .local v1, "rad":D
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 316
    .local v3, "sin":F
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 317
    .local v4, "cos":F
    iget v5, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    mul-float v6, v5, v4

    .line 318
    .local v6, "m11":F
    iget v7, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    neg-float v8, v7

    mul-float/2addr v8, v3

    .line 319
    .local v8, "m12":F
    mul-float/2addr v5, v3

    .line 320
    .local v5, "m21":F
    mul-float/2addr v7, v4

    .line 322
    .local v7, "m22":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v10, v0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v9, v10, :cond_2

    .line 323
    iget-object v10, v0, Landroidx/constraintlayout/helper/widget/Layer;->mViews:[Landroid/view/View;

    aget-object v10, v10, v9

    .line 324
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    .line 325
    .local v11, "x":I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    .line 326
    .local v12, "y":I
    int-to-float v13, v11

    iget v14, v0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    sub-float/2addr v13, v14

    .line 327
    .local v13, "dx":F
    int-to-float v14, v12

    iget v15, v0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    sub-float/2addr v14, v15

    .line 328
    .local v14, "dy":F
    mul-float v15, v6, v13

    mul-float v16, v8, v14

    add-float v15, v15, v16

    sub-float/2addr v15, v13

    move-wide/from16 v16, v1

    .end local v1    # "rad":D
    .local v16, "rad":D
    iget v1, v0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    add-float/2addr v15, v1

    .line 329
    .local v15, "shiftx":F
    mul-float v1, v5, v13

    mul-float v2, v7, v14

    add-float/2addr v1, v2

    sub-float/2addr v1, v14

    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    add-float/2addr v1, v2

    .line 331
    .local v1, "shifty":F
    invoke-virtual {v10, v15}, Landroid/view/View;->setTranslationX(F)V

    .line 332
    invoke-virtual {v10, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleY(F)V

    .line 334
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setScaleX(F)V

    .line 335
    iget v2, v0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-virtual {v10, v2}, Landroid/view/View;->setRotation(F)V

    .line 322
    .end local v1    # "shifty":F
    .end local v10    # "view":Landroid/view/View;
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "dx":F
    .end local v14    # "dy":F
    .end local v15    # "shiftx":F
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v1, v16

    goto :goto_0

    .line 337
    .end local v9    # "i":I
    .end local v16    # "rad":D
    .local v1, "rad":D
    :cond_2
    return-void
.end method


# virtual methods
.method protected calcCenters()V
    .locals 8

    .line 257
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mNeedBounds:Z

    if-nez v0, :cond_1

    .line 261
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    return-void

    .line 265
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 299
    :cond_2
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    .line 300
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    goto/16 :goto_4

    .line 266
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/helper/widget/Layer;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "views":[Landroid/view/View;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 269
    .local v2, "minx":I
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 270
    .local v3, "miny":I
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 271
    .local v4, "maxx":I
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 273
    .local v1, "maxy":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v5, v6, :cond_4

    .line 274
    aget-object v6, v0, v5

    .line 275
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 276
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 277
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 278
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 273
    .end local v6    # "view":Landroid/view/View;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 281
    .end local v5    # "i":I
    :cond_4
    int-to-float v5, v4

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    .line 282
    int-to-float v5, v1

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    .line 283
    int-to-float v5, v2

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    .line 284
    int-to-float v5, v3

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    .line 286
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 287
    add-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    goto :goto_2

    .line 289
    :cond_5
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    .line 291
    :goto_2
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 292
    add-int v5, v3, v1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    goto :goto_3

    .line 295
    :cond_6
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    iput v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    .line 298
    .end local v0    # "views":[Landroid/view/View;
    .end local v1    # "maxy":I
    .end local v2    # "minx":I
    .end local v3    # "miny":I
    .end local v4    # "maxx":I
    :goto_3
    nop

    .line 303
    :goto_4
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mUseViewMeasure:Z

    .line 61
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 64
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 66
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    .line 67
    iput-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    goto :goto_1

    .line 68
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v3, v4, :cond_1

    .line 69
    iput-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    .line 64
    .end local v3    # "attr":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 77
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    .line 78
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_3

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getVisibility()I

    move-result v0

    .line 81
    .local v0, "visibility":I
    const/4 v1, 0x0

    .line 82
    .local v1, "elevation":F
    nop

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getElevation()F

    move-result v1

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mCount:I

    if-ge v2, v3, :cond_3

    .line 86
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mIds:[I

    aget v3, v3, v2

    .line 87
    .local v3, "id":I
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v4

    .line 88
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 89
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyVisibilityOnAttach:Z

    if-eqz v5, :cond_1

    .line 90
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_1
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mApplyElevationOnAttach:Z

    if-eqz v5, :cond_2

    .line 93
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_2

    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 85
    .end local v3    # "id":I
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "visibility":I
    .end local v1    # "elevation":F
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 208
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    .line 209
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    .line 210
    return-void
.end method

.method public setPivotX(F)V
    .locals 0
    .param p1, "pivotX"    # F

    .line 159
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterX:F

    .line 160
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 161
    return-void
.end method

.method public setPivotY(F)V
    .locals 0
    .param p1, "pivotY"    # F

    .line 170
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mRotationCenterY:F

    .line 171
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 172
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "angle"    # F

    .line 127
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    .line 128
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 129
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .line 137
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleX:F

    .line 138
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 139
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .line 148
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mScaleY:F

    .line 149
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 150
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0
    .param p1, "dx"    # F

    .line 180
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftX:F

    .line 181
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 183
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0
    .param p1, "dy"    # F

    .line 190
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mShiftY:F

    .line 191
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 192
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 199
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    .line 200
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->applyLayoutFeatures()V

    .line 201
    return-void
.end method

.method public updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 7
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 218
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->reCacheViews()V

    .line 220
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterX:F

    .line 221
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedCenterY:F

    .line 222
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 223
    .local v0, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 224
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 225
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 226
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->calcCenters()V

    .line 227
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinX:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 228
    .local v2, "left":I
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMinY:F

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 229
    .local v3, "top":I
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxX:F

    float-to-int v4, v4

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 230
    .local v4, "right":I
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Layer;->mComputedMaxY:F

    float-to-int v5, v5

    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 231
    .local v5, "bottom":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroidx/constraintlayout/helper/widget/Layer;->layout(IIII)V

    .line 233
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    .line 234
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Layer;->transform()V

    .line 237
    :cond_0
    return-void
.end method

.method public updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2
    .param p1, "container"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 109
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 110
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Layer;->getRotation()F

    move-result v0

    .line 111
    .local v0, "rotate":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 112
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    goto :goto_0

    .line 116
    :cond_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Layer;->mGroupRotateAngle:F

    .line 118
    :cond_1
    :goto_0
    return-void
.end method
