.class Lcom/google/android/material/shape/ShapePath$LineShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineShadowOperation"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .locals 0
    .param p1, "operation"    # Lcom/google/android/material/shape/ShapePath$PathLineOperation;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 426
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 428
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 429
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    .line 430
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "shadowRenderer"    # Lcom/google/android/material/shadow/ShadowRenderer;
    .param p3, "shadowElevation"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .line 438
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    .line 439
    .local v0, "height":F
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v1, v2

    .line 440
    .local v1, "width":F
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 442
    .local v2, "rect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 443
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 444
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 445
    iget-object v3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p4, v3, v2, p3}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    .line 446
    return-void
.end method

.method getAngle()F
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

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
