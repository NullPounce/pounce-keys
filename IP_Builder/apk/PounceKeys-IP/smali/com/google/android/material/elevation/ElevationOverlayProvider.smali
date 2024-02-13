.class public Lcom/google/android/material/elevation/ElevationOverlayProvider;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# static fields
.field private static final FORMULA_MULTIPLIER:F = 4.5f

.field private static final FORMULA_OFFSET:F = 2.0f

.field private static final OVERLAY_ACCENT_COLOR_ALPHA:I


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlayAccentColor:I

.field private final elevationOverlayColor:I

.field private final elevationOverlayEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->OVERLAY_ACCENT_COLOR_ALPHA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayEnabled:I

    .line 46
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v3

    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayColor:I

    .line 47
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v4

    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayAccentColor:I

    .line 48
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v5

    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 49
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v6

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 45
    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(ZIIIF)V

    .line 51
    return-void
.end method

.method public constructor <init>(ZIIIF)V
    .locals 0
    .param p1, "elevationOverlayEnabled"    # Z
    .param p2, "elevationOverlayColor"    # I
    .param p3, "elevationOverlayAccentColor"    # I
    .param p4, "colorSurface"    # I
    .param p5, "displayDensity"    # F

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    .line 60
    iput p2, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    .line 61
    iput p3, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayAccentColor:I

    .line 62
    iput p4, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    .line 63
    iput p5, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    .line 64
    return-void
.end method

.method private isThemeSurfaceColor(I)Z
    .locals 2
    .param p1, "color"    # I

    .line 193
    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public calculateOverlayAlpha(F)I
    .locals 2
    .param p1, "elevation"    # F

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public calculateOverlayAlphaFraction(F)F
    .locals 3
    .param p1, "elevation"    # F

    .line 158
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->displayDensity:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_1

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    div-float v0, p1, v0

    .line 162
    .local v0, "elevationDp":F
    float-to-double v1, v0

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40900000    # 4.5f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 164
    .local v1, "alphaFraction":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2

    .line 159
    .end local v0    # "elevationDp":F
    .end local v1    # "alphaFraction":F
    :cond_1
    :goto_0
    return v1
.end method

.method public compositeOverlay(IF)I
    .locals 6
    .param p1, "backgroundColor"    # I
    .param p2, "elevation"    # F

    .line 132
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->calculateOverlayAlphaFraction(F)F

    move-result v0

    .line 133
    .local v0, "overlayAlphaFraction":F
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 134
    .local v1, "backgroundAlpha":I
    const/16 v2, 0xff

    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 135
    .local v2, "backgroundColorOpaque":I
    iget v3, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    .line 136
    invoke-static {v2, v3, v0}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    .line 137
    .local v3, "overlayColorOpaque":I
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    iget v4, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayAccentColor:I

    if-eqz v4, :cond_0

    .line 138
    sget v5, Lcom/google/android/material/elevation/ElevationOverlayProvider;->OVERLAY_ACCENT_COLOR_ALPHA:I

    .line 139
    invoke-static {v4, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 140
    .local v4, "overlayAccentColor":I
    invoke-static {v3, v4}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v3

    .line 142
    .end local v4    # "overlayAccentColor":I
    :cond_0
    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    return v4
.end method

.method public compositeOverlay(IFLandroid/view/View;)I
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "elevation"    # F
    .param p3, "overlayView"    # Landroid/view/View;

    .line 120
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    add-float/2addr p2, v0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    move-result v0

    return v0
.end method

.method public compositeOverlayIfNeeded(IF)I
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "elevation"    # F

    .line 109
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeSurfaceColor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    move-result v0

    return v0

    .line 112
    :cond_0
    return p1
.end method

.method public compositeOverlayIfNeeded(IFLandroid/view/View;)I
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "elevation"    # F
    .param p3, "overlayView"    # Landroid/view/View;

    .line 97
    invoke-virtual {p0, p3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    add-float/2addr p2, v0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result v0

    return v0
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(F)I
    .locals 1
    .param p1, "elevation"    # F

    .line 85
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    move-result v0

    return v0
.end method

.method public compositeOverlayWithThemeSurfaceColorIfNeeded(FLandroid/view/View;)I
    .locals 1
    .param p1, "elevation"    # F
    .param p2, "overlayView"    # Landroid/view/View;

    .line 75
    invoke-virtual {p0, p2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    add-float/2addr p1, v0

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayWithThemeSurfaceColorIfNeeded(F)I

    move-result v0

    return v0
.end method

.method public getParentAbsoluteElevation(Landroid/view/View;)F
    .locals 1
    .param p1, "overlayView"    # Landroid/view/View;

    .line 189
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getThemeElevationOverlayColor()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayColor:I

    return v0
.end method

.method public getThemeSurfaceColor()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->colorSurface:I

    return v0
.end method

.method public isThemeElevationOverlayEnabled()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/google/android/material/elevation/ElevationOverlayProvider;->elevationOverlayEnabled:Z

    return v0
.end method
