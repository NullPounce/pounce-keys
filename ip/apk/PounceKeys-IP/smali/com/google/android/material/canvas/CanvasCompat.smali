.class public Lcom/google/android/material/canvas/CanvasCompat;
.super Ljava/lang/Object;
.source "CanvasCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "alpha"    # I

    .line 58
    nop

    .line 59
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    return v0
.end method

.method public static saveLayerAlpha(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)I
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/RectF;
    .param p2, "alpha"    # I

    .line 45
    nop

    .line 46
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result v0

    return v0
.end method
