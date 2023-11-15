.class public Lcom/google/android/material/shape/ShapePath$PathCubicOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathCubicOperation"
.end annotation


# instance fields
.field private controlX1:F

.field private controlX2:F

.field private controlY1:F

.field private controlY2:F

.field private endX:F

.field private endY:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F
    .param p5, "endX"    # F
    .param p6, "endY"    # F

    .line 779
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    .line 780
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlX1(F)V

    .line 781
    invoke-direct {p0, p2}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlY1(F)V

    .line 782
    invoke-direct {p0, p3}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlX2(F)V

    .line 783
    invoke-direct {p0, p4}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setControlY2(F)V

    .line 784
    invoke-direct {p0, p5}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setEndX(F)V

    .line 785
    invoke-direct {p0, p6}, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->setEndY(F)V

    .line 786
    return-void
.end method

.method private getControlX1()F
    .locals 1

    .line 798
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    return v0
.end method

.method private getControlX2()F
    .locals 1

    .line 814
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    return v0
.end method

.method private getControlY1()F
    .locals 1

    .line 806
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    return v0
.end method

.method private getControlY2()F
    .locals 1

    .line 822
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    return v0
.end method

.method private getEndX()F
    .locals 1

    .line 830
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    return v0
.end method

.method private getEndY()F
    .locals 1

    .line 838
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    return v0
.end method

.method private setControlX1(F)V
    .locals 0
    .param p1, "controlX1"    # F

    .line 802
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    .line 803
    return-void
.end method

.method private setControlX2(F)V
    .locals 0
    .param p1, "controlX2"    # F

    .line 818
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    .line 819
    return-void
.end method

.method private setControlY1(F)V
    .locals 0
    .param p1, "controlY1"    # F

    .line 810
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    .line 811
    return-void
.end method

.method private setControlY2(F)V
    .locals 0
    .param p1, "controlY2"    # F

    .line 826
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY2:F

    .line 827
    return-void
.end method

.method private setEndX(F)V
    .locals 0
    .param p1, "endX"    # F

    .line 834
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    .line 835
    return-void
.end method

.method private setEndY(F)V
    .locals 0
    .param p1, "endY"    # F

    .line 842
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    .line 843
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 790
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->matrix:Landroid/graphics/Matrix;

    .line 791
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 792
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 793
    iget v2, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX1:F

    iget v3, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY1:F

    iget v4, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlX2:F

    iget v5, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->controlY2:F

    iget v6, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endX:F

    iget v7, p0, Lcom/google/android/material/shape/ShapePath$PathCubicOperation;->endY:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 794
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 795
    return-void
.end method
