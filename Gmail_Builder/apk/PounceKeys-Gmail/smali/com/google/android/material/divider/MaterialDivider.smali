.class public Lcom/google/android/material/divider/MaterialDivider;
.super Landroid/view/View;
.source "MaterialDivider.java"


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private color:I

.field private final dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private insetEnd:I

.field private insetStart:I

.field private thickness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialDivider:I

    sput v0, Lcom/google/android/material/divider/MaterialDivider;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/divider/MaterialDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    sget v0, Lcom/google/android/material/R$attr;->materialDividerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/divider/MaterialDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    sget v4, Lcom/google/android/material/divider/MaterialDivider;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 70
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 72
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialDivider:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 73
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerThickness:I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->material_divider_thickness:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    .line 79
    sget v1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetStart:I

    .line 80
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    .line 81
    sget v1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetEnd:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    .line 82
    sget v1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerColor:I

    .line 83
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 82
    invoke-virtual {p0, v1}, Lcom/google/android/material/divider/MaterialDivider;->setDividerColor(I)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    return v0
.end method

.method public getDividerThickness()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 109
    .local v0, "isRtl":Z
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    .line 110
    .local v2, "left":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getWidth()I

    move-result v3

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    :goto_2
    sub-int/2addr v3, v4

    .line 111
    .local v3, "right":I
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v2, v1, v3, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    .line 112
    iget-object v1, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 92
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 94
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 95
    .local v0, "heightMode":I
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getMeasuredHeight()I

    move-result v1

    .line 96
    .local v1, "newThickness":I
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    if-nez v0, :cond_2

    .line 97
    :cond_0
    iget v2, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    if-lez v2, :cond_1

    if-eq v1, v2, :cond_1

    .line 98
    iget v1, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/divider/MaterialDivider;->setMeasuredDimension(II)V

    .line 102
    :cond_2
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 226
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    if-eq v0, p1, :cond_0

    .line 227
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    .line 228
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->invalidate()V

    .line 231
    :cond_0
    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1, "colorId"    # I

    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerColor(I)V

    .line 242
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .locals 0
    .param p1, "insetEnd"    # I

    .line 193
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    .line 194
    return-void
.end method

.method public setDividerInsetEndResource(I)V
    .locals 1
    .param p1, "insetEndId"    # I

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerInsetEnd(I)V

    .line 205
    return-void
.end method

.method public setDividerInsetStart(I)V
    .locals 0
    .param p1, "insetStart"    # I

    .line 160
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    .line 161
    return-void
.end method

.method public setDividerInsetStartResource(I)V
    .locals 1
    .param p1, "insetStartId"    # I

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerInsetStart(I)V

    .line 172
    return-void
.end method

.method public setDividerThickness(I)V
    .locals 1
    .param p1, "thickness"    # I

    .line 124
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    if-eq v0, p1, :cond_0

    .line 125
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->requestLayout()V

    .line 128
    :cond_0
    return-void
.end method

.method public setDividerThicknessResource(I)V
    .locals 1
    .param p1, "thicknessId"    # I

    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDivider;->setDividerThickness(I)V

    .line 140
    return-void
.end method
