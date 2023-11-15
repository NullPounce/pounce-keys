.class public Lcom/google/android/material/tooltip/TooltipDrawable;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "TooltipDrawable.java"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# static fields
.field private static final DEFAULT_STYLE:I

.field private static final DEFAULT_THEME_ATTR:I


# instance fields
.field private arrowSize:I

.field private final attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final context:Landroid/content/Context;

.field private final displayFrame:Landroid/graphics/Rect;

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private labelOpacity:F

.field private layoutMargin:I

.field private locationOnScreenX:I

.field private minHeight:I

.field private minWidth:I

.field private padding:I

.field private text:Ljava/lang/CharSequence;

.field private final textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

.field private final tooltipPivotX:F

.field private tooltipPivotY:F

.field private tooltipScaleX:F

.field private tooltipScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Tooltip:I

    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    .line 70
    sget v0, Lcom/google/android/material/R$attr;->tooltipStyle:I

    sput v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 76
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    .line 80
    new-instance v1, Lcom/google/android/material/tooltip/TooltipDrawable$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/tooltip/TooltipDrawable$1;-><init>(Lcom/google/android/material/tooltip/TooltipDrawable;)V

    iput-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 98
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    .line 107
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    .line 108
    iput v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    .line 109
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotX:F

    .line 110
    iput v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    .line 111
    iput v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    .line 144
    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 145
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v1, Landroid/text/TextPaint;->density:F

    .line 146
    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/tooltip/TooltipDrawable;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/tooltip/TooltipDrawable;
    .param p1, "x1"    # Landroid/view/View;

    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    return-void
.end method

.method private calculatePointerOffset()F
    .locals 3

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "pointerOffset":F
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    goto :goto_0

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    add-int/2addr v1, v2

    int-to-float v0, v1

    .line 475
    :cond_1
    :goto_0
    return v0
.end method

.method private calculateTextCenterFromBaseline()F
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 531
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 514
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextCenterFromBaseline()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 130
    sget v0, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_THEME_ATTR:I

    sget v1, Lcom/google/android/material/tooltip/TooltipDrawable;->DEFAULT_STYLE:I

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/tooltip/TooltipDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 120
    new-instance v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 121
    .local v0, "tooltip":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/tooltip/TooltipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    .line 123
    return-object v0
.end method

.method private createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .locals 7

    .line 479
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    move-result v0

    neg-float v0, v0

    .line 481
    .local v0, "offset":F
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 482
    .local v1, "maxArrowOffset":F
    neg-float v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 483
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 484
    new-instance v2, Lcom/google/android/material/shape/OffsetEdgeTreatment;

    new-instance v3, Lcom/google/android/material/shape/MarkerEdgeTreatment;

    iget v4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/MarkerEdgeTreatment;-><init>(F)V

    invoke-direct {v2, v3, v0}, Lcom/google/android/material/shape/OffsetEdgeTreatment;-><init>(Lcom/google/android/material/shape/EdgeTreatment;F)V

    return-object v2
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 488
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 490
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 494
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculateTextOriginAndAlignment(Landroid/graphics/Rect;)F

    move-result v1

    float-to-int v1, v1

    .line 496
    .local v1, "y":I
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 498
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/TextDrawableHelper;->updateTextPaintDrawState(Landroid/content/Context;)V

    .line 499
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 502
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v8, v2

    int-to-float v9, v1

    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 503
    return-void
.end method

.method private getTextWidth()F
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 507
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextWidth(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 151
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/R$styleable;->Tooltip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 152
    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 155
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_tooltip_arrowSize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    .line 156
    nop

    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 159
    sget v1, Lcom/google/android/material/R$styleable;->Tooltip_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    sget v2, Lcom/google/android/material/R$styleable;->Tooltip_android_textAppearance:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/resources/TextAppearance;

    move-result-object v1

    .line 162
    .local v1, "textAppearance":Lcom/google/android/material/resources/TextAppearance;
    if-eqz v1, :cond_0

    sget v2, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$styleable;->Tooltip_android_textColor:I

    .line 164
    invoke-static {v2, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 168
    iget-object v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    sget v3, Lcom/google/android/material/R$attr;->colorOnBackground:I

    .line 170
    const-class v4, Lcom/google/android/material/tooltip/TooltipDrawable;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v2, v3, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    .line 171
    .local v2, "onBackground":I
    iget-object v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    .line 173
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    .line 172
    const v7, 0x1010031

    invoke-static {v3, v7, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "background":I
    nop

    .line 177
    const/16 v5, 0xe5

    invoke-static {v3, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    .line 178
    const/16 v7, 0x99

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    .line 176
    invoke-static {v5, v7}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v5

    .line 179
    .local v5, "backgroundTintDefault":I
    sget v7, Lcom/google/android/material/R$styleable;->Tooltip_backgroundTint:I

    .line 181
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 180
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 179
    invoke-virtual {p0, v7}, Lcom/google/android/material/tooltip/TooltipDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object v7, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    sget v8, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 186
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-static {v7, v8, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    .line 184
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 183
    invoke-virtual {p0, v4}, Lcom/google/android/material/tooltip/TooltipDrawable;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 188
    sget v4, Lcom/google/android/material/R$styleable;->Tooltip_android_padding:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 189
    sget v4, Lcom/google/android/material/R$styleable;->Tooltip_android_minWidth:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 190
    sget v4, Lcom/google/android/material/R$styleable;->Tooltip_android_minHeight:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 191
    sget v4, Lcom/google/android/material/R$styleable;->Tooltip_android_layout_margin:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    return-void
.end method

.method private updateLocationOnScreen(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 462
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 463
    .local v0, "locationOnScreen":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 464
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->locationOnScreenX:I

    .line 465
    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 466
    return-void
.end method


# virtual methods
.method public detachView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 393
    if-nez p1, :cond_0

    .line 394
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 397
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 415
    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->calculatePointerOffset()F

    move-result v0

    .line 419
    .local v0, "translateX":F
    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->arrowSize:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    .line 423
    .local v1, "translateY":F
    iget v2, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    iget v3, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 423
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 429
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 432
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 435
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->drawText(Landroid/graphics/Canvas;)V

    .line 437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 438
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 401
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getTextWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getLayoutMargin()I
    .locals 1

    .line 335
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/TextDrawableHelper;->getTextAppearance()Lcom/google/android/material/resources/TextAppearance;

    move-result-object v0

    return-object v0
.end method

.method public getTextPadding()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 442
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 446
    nop

    .line 447
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->createMarkerEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    .line 446
    invoke-virtual {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 448
    return-void
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 453
    invoke-super {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

.method public onTextSizeChange()V
    .locals 0

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    .line 459
    return-void
.end method

.method public setLayoutMargin(I)V
    .locals 0
    .param p1, "layoutMargin"    # I

    .line 346
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->layoutMargin:I

    .line 347
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    .line 348
    return-void
.end method

.method public setMinHeight(I)V
    .locals 0
    .param p1, "minHeight"    # I

    .line 302
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minHeight:I

    .line 303
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    .line 304
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0
    .param p1, "minWidth"    # I

    .line 280
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->minWidth:I

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    .line 282
    return-void
.end method

.method public setRelativeToView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 379
    if-nez p1, :cond_0

    .line 380
    return-void

    .line 382
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/tooltip/TooltipDrawable;->updateLocationOnScreen(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->attachedViewLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 385
    return-void
.end method

.method public setRevealFraction(F)V
    .locals 3
    .param p1, "fraction"    # F

    .line 365
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipPivotY:F

    .line 366
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleX:F

    .line 367
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->tooltipScaleY:F

    .line 368
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e428f5c    # 0.19f

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->labelOpacity:F

    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    .line 370
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iput-object p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->text:Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextWidthDirty(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    .line 230
    :cond_0
    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V
    .locals 2
    .param p1, "textAppearance"    # Lcom/google/android/material/resources/TextAppearance;

    .line 259
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->textDrawableHelper:Lcom/google/android/material/internal/TextDrawableHelper;

    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/internal/TextDrawableHelper;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    .line 260
    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 2
    .param p1, "id"    # I

    .line 249
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;)V

    .line 250
    return-void
.end method

.method public setTextPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 324
    iput p1, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->padding:I

    .line 325
    invoke-virtual {p0}, Lcom/google/android/material/tooltip/TooltipDrawable;->invalidateSelf()V

    .line 326
    return-void
.end method

.method public setTextResource(I)V
    .locals 1
    .param p1, "id"    # I

    .line 214
    iget-object v0, p0, Lcom/google/android/material/tooltip/TooltipDrawable;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method
