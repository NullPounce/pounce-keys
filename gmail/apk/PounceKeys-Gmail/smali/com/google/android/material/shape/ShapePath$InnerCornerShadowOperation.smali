.class Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InnerCornerShadowOperation"
.end annotation


# instance fields
.field private final operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .locals 0
    .param p1, "operation1"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p2, "operation2"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .line 465
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 467
    iput-object p2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 468
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    .line 469
    iput p4, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    .line 470
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 23
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getSweepAngle()F

    move-result v13

    .line 476
    .local v13, "sweepAngle":F
    const/4 v14, 0x0

    cmpl-float v2, v13, v14

    if-lez v2, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v2

    iget v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v4

    iget v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 482
    .local v8, "length1":D
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v2

    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v3}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v4

    iget-object v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v5}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 483
    .local v6, "length2":D
    int-to-double v2, v11

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v15, v2

    .line 484
    .local v15, "arcRadius":F
    float-to-double v2, v15

    neg-float v4, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v4, v4, v16

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double v3, v2, v4

    .line 486
    .local v3, "retractLength":D
    cmpl-double v2, v8, v3

    if-lez v2, :cond_1

    .line 487
    new-instance v2, Landroid/graphics/RectF;

    move-wide/from16 v17, v6

    .end local v6    # "length2":D
    .local v17, "length2":D
    sub-double v5, v8, v3

    double-to-float v5, v5

    invoke-direct {v2, v14, v14, v5, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 488
    .local v2, "rect1":Landroid/graphics/RectF;
    iget-object v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 489
    iget-object v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    iget v7, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 490
    iget-object v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 491
    iget-object v5, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v12, v5, v2, v11}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    goto :goto_0

    .line 486
    .end local v2    # "rect1":Landroid/graphics/RectF;
    .end local v17    # "length2":D
    .restart local v6    # "length2":D
    :cond_1
    move-wide/from16 v17, v6

    .line 494
    .end local v6    # "length2":D
    .restart local v17    # "length2":D
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    mul-float v2, v15, v16

    mul-float v6, v15, v16

    invoke-direct {v5, v14, v14, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 495
    .local v5, "rect":Landroid/graphics/RectF;
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 496
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v6}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v6

    iget-object v7, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v7}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 497
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 498
    iget-object v2, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    neg-double v6, v3

    move-wide/from16 v19, v8

    .end local v8    # "length1":D
    .local v19, "length1":D
    float-to-double v8, v15

    sub-double/2addr v6, v8

    double-to-float v6, v6

    const/high16 v7, -0x40000000    # -2.0f

    mul-float/2addr v7, v15

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 499
    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    float-to-int v7, v15

    const/4 v2, 0x2

    new-array v9, v2, [F

    move-object/from16 v22, v9

    float-to-double v8, v15

    add-double/2addr v8, v3

    double-to-float v2, v8

    const/4 v8, 0x0

    aput v2, v22, v8

    const/4 v2, 0x1

    mul-float v16, v16, v15

    aput v16, v22, v2

    move-object/from16 v2, p2

    move-wide v8, v3

    .end local v3    # "retractLength":D
    .local v8, "retractLength":D
    move-object/from16 v3, p4

    move-object v4, v6

    move-wide/from16 v16, v17

    .end local v17    # "length2":D
    .local v16, "length2":D
    move v6, v7

    const/high16 v7, 0x43e10000    # 450.0f

    move/from16 v21, v15

    move-wide/from16 v18, v19

    move-wide v14, v8

    .end local v8    # "retractLength":D
    .end local v15    # "arcRadius":F
    .end local v19    # "length1":D
    .local v14, "retractLength":D
    .local v18, "length1":D
    .local v21, "arcRadius":F
    move v8, v13

    move-object/from16 v9, v22

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/material/shadow/ShadowRenderer;->drawInnerCornerShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF[F)V

    .line 508
    cmpl-double v2, v16, v14

    if-lez v2, :cond_2

    .line 509
    new-instance v2, Landroid/graphics/RectF;

    sub-double v6, v16, v14

    double-to-float v3, v6

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 510
    .local v2, "rect2":Landroid/graphics/RectF;
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 511
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget-object v4, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v4}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v4

    iget-object v6, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v6}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 512
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 513
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    double-to-float v4, v14

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 514
    iget-object v3, v0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v12, v3, v2, v11}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 516
    .end local v2    # "rect2":Landroid/graphics/RectF;
    :cond_2
    return-void
.end method

.method getEndAngle()F
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 524
    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation2:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v2}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 523
    return v0
.end method

.method getStartAngle()F
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->operation1:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->startX:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method getSweepAngle()F
    .locals 3

    .line 533
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getEndAngle()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$InnerCornerShadowOperation;->getStartAngle()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    .line 534
    .local v0, "shadowAngle":F
    const/high16 v2, 0x43340000    # 180.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 535
    return v0

    .line 537
    :cond_0
    sub-float v1, v0, v1

    return v1
.end method
