.class public Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"


# instance fields
.field private drawBottomInsetForeground:Z

.field private drawLeftInsetForeground:Z

.field private drawRightInsetForeground:Z

.field private drawTopInsetForeground:Z

.field insetForeground:Landroid/graphics/drawable/Drawable;

.field insets:Landroid/graphics/Rect;

.field private tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawTopInsetForeground:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawBottomInsetForeground:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawLeftInsetForeground:Z

    .line 49
    iput-boolean v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawRightInsetForeground:Z

    .line 63
    sget-object v3, Lcom/google/android/material/R$styleable;->ScrimInsetsFrameLayout:[I

    sget v5, Lcom/google/android/material/R$style;->Widget_Design_ScrimInsetsFrameLayout:I

    const/4 v1, 0x0

    new-array v6, v1, [I

    .line 64
    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 70
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->ScrimInsetsFrameLayout_insetForeground:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 74
    new-instance v0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout$1;-><init>(Lcom/google/android/material/internal/ScrimInsetsFrameLayout;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 119
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->getWidth()I

    move-result v0

    .line 122
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->getHeight()I

    move-result v1

    .line 123
    .local v1, "height":I
    iget-object v2, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 125
    .local v2, "sc":I
    invoke-virtual {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    iget-boolean v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawTopInsetForeground:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v4, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 130
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 131
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawBottomInsetForeground:Z

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 138
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawLeftInsetForeground:Z

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v1, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 144
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 145
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawRightInsetForeground:Z

    if-eqz v3, :cond_3

    .line 150
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v1, v6

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 151
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 152
    iget-object v3, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    :cond_3
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 157
    .end local v2    # "sc":I
    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 161
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 162
    iget-object v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 165
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 169
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 170
    iget-object v0, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 173
    :cond_0
    return-void
.end method

.method protected onInsetsChanged(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 175
    return-void
.end method

.method public setDrawBottomInsetForeground(Z)V
    .locals 0
    .param p1, "drawBottomInsetForeground"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawBottomInsetForeground:Z

    .line 107
    return-void
.end method

.method public setDrawLeftInsetForeground(Z)V
    .locals 0
    .param p1, "drawLeftInsetForeground"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawLeftInsetForeground:Z

    .line 111
    return-void
.end method

.method public setDrawRightInsetForeground(Z)V
    .locals 0
    .param p1, "drawRightInsetForeground"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawRightInsetForeground:Z

    .line 115
    return-void
.end method

.method public setDrawTopInsetForeground(Z)V
    .locals 0
    .param p1, "drawTopInsetForeground"    # Z

    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->drawTopInsetForeground:Z

    .line 103
    return-void
.end method

.method public setScrimInsetForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object p1, p0, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Landroid/graphics/drawable/Drawable;

    .line 99
    return-void
.end method
