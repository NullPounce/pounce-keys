.class Lcom/google/android/material/timepicker/RadialViewGroup;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "RadialViewGroup.java"


# static fields
.field private static final SKIP_TAG:Ljava/lang/String; = "skip"


# instance fields
.field private background:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private radius:I

.field private final updateLayoutParametersRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->material_radial_view_group:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->createBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget-object v0, Lcom/google/android/material/R$styleable;->RadialViewGroup:[I

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->RadialViewGroup_materialCircleRadius:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    .line 70
    new-instance v1, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V

    iput-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 75
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 76
    new-instance v1, Lcom/google/android/material/shape/RelativeCornerSize;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(Lcom/google/android/material/shape/CornerSize;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 78
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method private static shouldSkipView(Landroid/view/View;)Z
    .locals 2
    .param p0, "child"    # Landroid/view/View;

    .line 157
    const-string v0, "skip"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateLayoutParamsAsync()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 106
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParametersRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParamsAsync()V

    .line 94
    return-void
.end method

.method public getRadius()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 114
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    .line 116
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 98
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParamsAsync()V

    .line 101
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 84
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->background:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 85
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 147
    iput p1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    .line 148
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    .line 149
    return-void
.end method

.method protected updateLayoutParams()V
    .locals 9

    .line 120
    const/4 v0, 0x1

    .line 121
    .local v0, "skippedChildren":I
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildCount()I

    move-result v1

    .line 122
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 123
    invoke-virtual {p0, v2}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, "childAt":Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/material/timepicker/RadialViewGroup;->shouldSkipView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 122
    .end local v3    # "childAt":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 131
    .local v2, "constraintSet":Landroidx/constraintlayout/widget/ConstraintSet;
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, "currentAngle":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 134
    invoke-virtual {p0, v4}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 135
    .local v5, "childAt":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/google/android/material/R$id;->circle_center:I

    if-eq v6, v7, :cond_3

    invoke-static {v5}, Lcom/google/android/material/timepicker/RadialViewGroup;->shouldSkipView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/google/android/material/R$id;->circle_center:I

    iget v8, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->radius:I

    invoke-virtual {v2, v6, v7, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainCircle(IIIF)V

    .line 140
    sub-int v6, v1, v0

    int-to-float v6, v6

    const/high16 v7, 0x43b40000    # 360.0f

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 133
    .end local v5    # "childAt":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 143
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 144
    return-void
.end method
