.class public Lcom/google/android/material/imageview/ShapeableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ShapeableImageView.java"

# interfaces
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final UNDEFINED_PADDING:I = -0x80000000


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private bottomContentPadding:I

.field private final clearPaint:Landroid/graphics/Paint;

.field private final destination:Landroid/graphics/RectF;

.field private endContentPadding:I

.field private hasAdjustedPaddingAfterLayoutDirectionResolved:Z

.field private leftContentPadding:I

.field private maskPath:Landroid/graphics/Path;

.field private final maskRect:Landroid/graphics/RectF;

.field private final path:Landroid/graphics/Path;

.field private final pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

.field private rightContentPadding:I

.field private shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startContentPadding:I

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeWidth:F

.field private topContentPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ShapeableImageView:I

    sput v0, Lcom/google/android/material/imageview/ShapeableImageView;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 96
    sget v0, Lcom/google/android/material/imageview/ShapeableImageView;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    nop

    .line 65
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 70
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 100
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 105
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    .line 106
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    .line 107
    sget-object v2, Lcom/google/android/material/R$styleable;->ShapeableImageView:[I

    .line 108
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 111
    .local v2, "attributes":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/android/material/imageview/ShapeableImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 113
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeColor:I

    .line 114
    invoke-static {p1, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 117
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_strokeWidth:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 120
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPadding:I

    .line 121
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 122
    .local v1, "contentPadding":I
    iput v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 123
    iput v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 124
    iput v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 125
    iput v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 128
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingLeft:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 130
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingTop:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 132
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingRight:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 134
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingBottom:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 138
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingStart:I

    const/high16 v5, -0x80000000

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 140
    sget v4, Lcom/google/android/material/R$styleable;->ShapeableImageView_contentPaddingEnd:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 143
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    .line 146
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    nop

    .line 149
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 150
    nop

    .line 151
    new-instance v0, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;

    invoke-direct {v0, p0}, Lcom/google/android/material/imageview/ShapeableImageView$OutlineProvider;-><init>(Lcom/google/android/material/imageview/ShapeableImageView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/imageview/ShapeableImageView;

    .line 58
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/imageview/ShapeableImageView;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/imageview/ShapeableImageView;

    .line 58
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/material/imageview/ShapeableImageView;Lcom/google/android/material/shape/MaterialShapeDrawable;)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/imageview/ShapeableImageView;
    .param p1, "x1"    # Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 58
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/imageview/ShapeableImageView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/imageview/ShapeableImageView;

    .line 58
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    return-object v0
.end method

.method private drawStroke(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 481
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 482
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 486
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 489
    .local v0, "colorForState":I
    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 490
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 491
    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 493
    :cond_1
    return-void
.end method

.method private isContentPaddingRelative()Z
    .locals 2

    .line 252
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRtl()Z
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateShapeMask(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 469
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    .line 470
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    .line 469
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 471
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->pathProvider:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->destination:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 474
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 476
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 477
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 478
    return-void
.end method


# virtual methods
.method public getContentPaddingBottom()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    return v0
.end method

.method public final getContentPaddingEnd()I
    .locals 2

    .line 273
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 274
    return v0

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    :goto_0
    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 2

    .line 287
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isContentPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    if-eq v0, v1, :cond_0

    .line 289
    return v0

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    if-eq v0, v1, :cond_1

    .line 291
    return v0

    .line 295
    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 2

    .line 305
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isContentPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    if-eq v0, v1, :cond_0

    .line 307
    return v0

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    if-eq v0, v1, :cond_1

    .line 309
    return v0

    .line 313
    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    return v0
.end method

.method public final getContentPaddingStart()I
    .locals 2

    .line 324
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 325
    return v0

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    :goto_0
    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    .line 338
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 2

    .line 391
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .line 402
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingLeft()I
    .locals 2

    .line 413
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingRight()I
    .locals 2

    .line 424
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .line 435
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPaddingTop()I
    .locals 2

    .line 446
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 559
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 188
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->maskPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->drawStroke(Landroid/graphics/Canvas;)V

    .line 191
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 157
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 158
    iget-boolean v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    if-eqz v0, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isLayoutDirectionResolved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->hasAdjustedPaddingAfterLayoutDirectionResolved:Z

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isPaddingRelative()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isContentPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    nop

    .line 180
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v0

    .line 181
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v1

    .line 182
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v2

    .line 183
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    .line 179
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/imageview/ShapeableImageView;->setPadding(IIII)V

    .line 184
    return-void

    .line 171
    :cond_3
    :goto_0
    nop

    .line 172
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    move-result v0

    .line 173
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v1

    .line 174
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    move-result v2

    .line 175
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    .line 171
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/material/imageview/ShapeableImageView;->setPaddingRelative(IIII)V

    .line 176
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

    .line 197
    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 209
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->startContentPadding:I

    .line 210
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->endContentPadding:I

    .line 214
    nop

    .line 215
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 216
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 217
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 218
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    .line 214
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    .line 220
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 221
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 222
    iput p3, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 223
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 224
    return-void
.end method

.method public setContentPaddingRelative(IIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 239
    nop

    .line 240
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 241
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 242
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    .line 243
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getPaddingBottom()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    sub-int/2addr v3, v4

    add-int/2addr v3, p4

    .line 239
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPaddingRelative(IIII)V

    .line 245
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->leftContentPadding:I

    .line 246
    iput p2, p0, Lcom/google/android/material/imageview/ShapeableImageView;->topContentPadding:I

    .line 247
    invoke-direct {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    iput v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->rightContentPadding:I

    .line 248
    iput p4, p0, Lcom/google/android/material/imageview/ShapeableImageView;->bottomContentPadding:I

    .line 249
    return-void
.end method

.method public setPadding(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 357
    nop

    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    .line 359
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    .line 360
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingRight()I

    move-result v2

    add-int/2addr v2, p3

    .line 361
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    move-result v3

    add-int/2addr v3, p4

    .line 357
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPadding(IIII)V

    .line 362
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 376
    nop

    .line 377
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingStart()I

    move-result v0

    add-int/2addr v0, p1

    .line 378
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingTop()I

    move-result v1

    add-int/2addr v1, p2

    .line 379
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingEnd()I

    move-result v2

    add-int/2addr v2, p3

    .line 380
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContentPaddingBottom()I

    move-result v3

    add-int/2addr v3, p4

    .line 376
    invoke-super {p0, v0, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setPaddingRelative(IIII)V

    .line 381
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 451
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 452
    iget-object v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->shadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->updateShapeMask(II)V

    .line 456
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    .line 457
    nop

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidateOutline()V

    .line 460
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "strokeColor"    # Landroid/content/res/ColorStateList;

    .line 563
    iput-object p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeColor:Landroid/content/res/ColorStateList;

    .line 564
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    .line 565
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1, "strokeColorResourceId"    # I

    .line 505
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 506
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .line 530
    iget v0, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 531
    iput p1, p0, Lcom/google/android/material/imageview/ShapeableImageView;->strokeWidth:F

    .line 532
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->invalidate()V

    .line 534
    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1, "strokeWidthResourceId"    # I

    .line 546
    invoke-virtual {p0}, Lcom/google/android/material/imageview/ShapeableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/imageview/ShapeableImageView;->setStrokeWidth(F)V

    .line 547
    return-void
.end method
