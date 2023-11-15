.class public final Lcom/google/android/material/shape/RelativeCornerSize;
.super Ljava/lang/Object;
.source "RelativeCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final percent:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "percent"    # F

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 60
    return-void
.end method

.method public static createFromCornerSize(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/RelativeCornerSize;
    .locals 3
    .param p0, "bounds"    # Landroid/graphics/RectF;
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 45
    instance-of v0, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/shape/RelativeCornerSize;

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    invoke-interface {p1, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    invoke-static {p0}, Lcom/google/android/material/shape/RelativeCornerSize;->getMaxCornerSize(Landroid/graphics/RectF;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    .line 45
    :goto_0
    return-object v0
.end method

.method private static getMaxCornerSize(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/RectF;

    .line 51
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 76
    return v0

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 79
    return v2

    .line 81
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/shape/RelativeCornerSize;

    .line 82
    .local v1, "that":Lcom/google/android/material/shape/RelativeCornerSize;
    iget v3, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    iget v4, v1, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 70
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    invoke-static {p1}, Lcom/google/android/material/shape/RelativeCornerSize;->getMaxCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 87
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
