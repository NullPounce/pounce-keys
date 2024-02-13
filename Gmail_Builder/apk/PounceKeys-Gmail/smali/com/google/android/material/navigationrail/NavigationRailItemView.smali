.class final Lcom/google/android/material/navigationrail/NavigationRailItemView;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source "NavigationRailItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getItemDefaultMarginResId()I
    .locals 1

    .line 61
    sget v0, Lcom/google/android/material/R$dimen;->mtrl_navigation_rail_icon_margin:I

    return v0
.end method

.method protected getItemLayoutResId()I
    .locals 1

    .line 55
    sget v0, Lcom/google/android/material/R$layout;->mtrl_navigation_rail_item:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 40
    invoke-super {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->onMeasure(II)V

    .line 42
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 44
    .local v0, "preferredHeight":I
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->getMeasuredHeight()I

    move-result v1

    .line 45
    .local v1, "measuredHeight":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 48
    .local v2, "bestHeight":I
    invoke-virtual {p0}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->getMeasuredWidthAndState()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/navigationrail/NavigationRailItemView;->setMeasuredDimension(II)V

    .line 50
    .end local v0    # "preferredHeight":I
    .end local v1    # "measuredHeight":I
    .end local v2    # "bestHeight":I
    :cond_0
    return-void
.end method
