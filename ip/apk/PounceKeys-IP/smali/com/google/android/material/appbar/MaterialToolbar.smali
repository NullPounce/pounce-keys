.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "MaterialToolbar.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private logoAdjustViewBounds:Ljava/lang/Boolean;

.field private logoScaleType:Landroid/widget/ImageView$ScaleType;

.field private navigationIconTint:Ljava/lang/Integer;

.field private subtitleCentered:Z

.field private titleCentered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_Toolbar:I

    sput v0, Lcom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/material/appbar/MaterialToolbar;->LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    sget v0, Lcom/google/android/material/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 101
    sget v4, Lcom/google/android/material/appbar/MaterialToolbar;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialToolbar:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 106
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 110
    sget v1, Lcom/google/android/material/R$styleable;->MaterialToolbar_navigationIconTint:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    .line 113
    :cond_0
    sget v1, Lcom/google/android/material/R$styleable;->MaterialToolbar_titleCentered:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 114
    sget v1, Lcom/google/android/material/R$styleable;->MaterialToolbar_subtitleCentered:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 116
    sget v1, Lcom/google/android/material/R$styleable;->MaterialToolbar_logoScaleType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 117
    .local v1, "index":I
    if-ltz v1, :cond_1

    sget-object v2, Lcom/google/android/material/appbar/MaterialToolbar;->LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 118
    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    .line 121
    :cond_1
    sget v2, Lcom/google/android/material/R$styleable;->MaterialToolbar_logoAdjustViewBounds:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    sget v2, Lcom/google/android/material/R$styleable;->MaterialToolbar_logoAdjustViewBounds:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    .line 125
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->initBackground(Landroid/content/Context;)V

    .line 128
    return-void
.end method

.method private calculateTitleBoundLimits(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;
    .locals 8
    .param p1, "titleTextView"    # Landroid/widget/TextView;
    .param p2, "subtitleTextView"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

    move-result v0

    .line 164
    .local v0, "width":I
    div-int/lit8 v1, v0, 0x2

    .line 165
    .local v1, "midpoint":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingLeft()I

    move-result v2

    .line 166
    .local v2, "leftLimit":I
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingRight()I

    move-result v3

    sub-int v3, v0, v3

    .line 168
    .local v3, "rightLimit":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 169
    invoke-virtual {p0, v4}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 170
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    if-eq v5, p1, :cond_1

    if-eq v5, p2, :cond_1

    .line 171
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-ge v6, v1, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 172
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    .line 174
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-le v6, v1, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v6

    if-ge v6, v3, :cond_1

    .line 175
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 168
    .end local v5    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private initBackground(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 365
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 366
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 371
    .local v1, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 372
    .local v2, "backgroundColor":I
    :goto_0
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 373
    invoke-virtual {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 374
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 375
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 376
    return-void
.end method

.method private layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V
    .locals 9
    .param p1, "titleView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p2, "titleBoundLimits":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

    move-result v0

    .line 186
    .local v0, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 188
    .local v1, "titleWidth":I
    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    .line 189
    .local v2, "titleLeft":I
    add-int v3, v2, v1

    .line 191
    .local v3, "titleRight":I
    iget-object v4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 192
    .local v4, "leftOverlap":I
    iget-object v6, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v3, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 193
    .local v5, "rightOverlap":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 195
    .local v6, "overlap":I
    if-lez v6, :cond_0

    .line 196
    add-int/2addr v2, v6

    .line 197
    sub-int/2addr v3, v6

    .line 198
    sub-int v1, v3, v2

    .line 199
    nop

    .line 200
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v8

    .line 199
    invoke-virtual {p1, v7, v8}, Landroid/view/View;->measure(II)V

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p1, v2, v7, v3, v8}, Landroid/view/View;->layout(IIII)V

    .line 205
    return-void
.end method

.method private maybeCenterTitleViews()V
    .locals 4

    .line 139
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    if-nez v0, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getTitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;

    move-result-object v0

    .line 144
    .local v0, "titleTextView":Landroid/widget/TextView;
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getSubtitleTextView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/TextView;

    move-result-object v1

    .line 145
    .local v1, "subtitleTextView":Landroid/widget/TextView;
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 146
    return-void

    .line 149
    :cond_1
    nop

    .line 150
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->calculateTitleBoundLimits(Landroid/widget/TextView;Landroid/widget/TextView;)Landroid/util/Pair;

    move-result-object v2

    .line 152
    .local v2, "titleBoundLimits":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 153
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    .line 156
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 157
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    .line 159
    :cond_3
    return-void
.end method

.method private maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "navigationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 380
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 382
    .local v0, "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 383
    return-object v0

    .line 385
    .end local v0    # "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p1
.end method

.method private updateLogoImageView()V
    .locals 2

    .line 208
    invoke-static {p0}, Lcom/google/android/material/internal/ToolbarUtils;->getLogoImageView(Landroidx/appcompat/widget/Toolbar;)Landroid/widget/ImageView;

    move-result-object v0

    .line 210
    .local v0, "logoImageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 218
    :cond_1
    return-void
.end method


# virtual methods
.method public clearNavigationIconTint()V
    .locals 3

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 297
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 298
    .local v1, "navigationIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 300
    .local v2, "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 301
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 303
    .end local v2    # "wrappedNavigationIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public getLogoScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getNavigationIconTint()Ljava/lang/Integer;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    return-object v0
.end method

.method public isLogoAdjustViewBounds()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubtitleCentered()Z
    .locals 1

    .line 361
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    return v0
.end method

.method public isTitleCentered()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 257
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 259
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 260
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 132
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 134
    invoke-direct {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->maybeCenterTitleViews()V

    .line 135
    invoke-direct {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->updateLogoImageView()V

    .line 136
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 265
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    .line 267
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 268
    return-void
.end method

.method public setLogoAdjustViewBounds(Z)V
    .locals 1
    .param p1, "logoAdjustViewBounds"    # Z

    .line 249
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 250
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    .line 251
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    .line 253
    :cond_1
    return-void
.end method

.method public setLogoScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "logoScaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 232
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 233
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    .line 236
    :cond_0
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 272
    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->maybeTintNavigationIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 273
    return-void
.end method

.method public setNavigationIconTint(I)V
    .locals 1
    .param p1, "navigationIconTint"    # I

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 283
    .local v0, "navigationIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 287
    :cond_0
    return-void
.end method

.method public setSubtitleCentered(Z)V
    .locals 1
    .param p1, "subtitleCentered"    # Z

    .line 348
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    if-eq v0, p1, :cond_0

    .line 349
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 350
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    .line 352
    :cond_0
    return-void
.end method

.method public setTitleCentered(Z)V
    .locals 1
    .param p1, "titleCentered"    # Z

    .line 324
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    if-eq v0, p1, :cond_0

    .line 325
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 326
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->requestLayout()V

    .line 328
    :cond_0
    return-void
.end method
