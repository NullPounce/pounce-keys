.class Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;)V
    .locals 0

    .line 1750
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 9
    .param p1, "layout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p2, "verticalOffset"    # I

    .line 1754
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput p2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 1756
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1758
    .local v0, "insetTop":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v3

    .local v3, "z":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1759
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v4, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1760
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 1761
    .local v5, "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v6

    .line 1763
    .local v6, "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    iget v7, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 1769
    :pswitch_0
    neg-int v7, p2

    int-to-float v7, v7

    iget v8, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 1770
    goto :goto_2

    .line 1765
    :pswitch_1
    neg-int v7, p2

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1766
    invoke-virtual {v8, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v1, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v7

    .line 1765
    invoke-virtual {v6, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 1767
    nop

    .line 1758
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;
    .end local v6    # "offsetHelper":Lcom/google/android/material/appbar/ViewOffsetHelper;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1777
    .end local v2    # "i":I
    .end local v3    # "z":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1779
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 1780
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1784
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    .line 1785
    .local v1, "height":I
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 1786
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    sub-int/2addr v2, v0

    .line 1787
    .local v2, "expandRange":I
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    move-result v3

    sub-int v3, v1, v3

    .line 1788
    .local v3, "scrimRange":I
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    int-to-float v5, v3

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 1789
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1788
    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeStartFraction(F)V

    .line 1790
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget v5, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCurrentOffsetY(I)V

    .line 1791
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v4, v4, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1792
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
