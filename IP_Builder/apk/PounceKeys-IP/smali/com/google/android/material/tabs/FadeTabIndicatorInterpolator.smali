.class Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;
.super Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.source "FadeTabIndicatorInterpolator.java"


# static fields
.field private static final FADE_THRESHOLD:F = 0.5f


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "tabLayout"    # Lcom/google/android/material/tabs/TabLayout;
    .param p2, "startTitle"    # Landroid/view/View;
    .param p3, "endTitle"    # Landroid/view/View;
    .param p4, "offset"    # F
    .param p5, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 43
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p4, v0

    if-gez v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, p3

    .line 44
    .local v1, "tab":Landroid/view/View;
    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    .line 45
    .local v2, "bounds":Landroid/graphics/RectF;
    cmpg-float v3, p4, v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-gez v3, :cond_1

    .line 46
    invoke-static {v4, v5, v5, v0, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {v5, v4, v0, v4, p4}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    :goto_1
    nop

    .line 49
    .local v0, "alpha":F
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    .line 51
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    .line 53
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 49
    invoke-virtual {p5, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {p5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 56
    return-void
.end method
