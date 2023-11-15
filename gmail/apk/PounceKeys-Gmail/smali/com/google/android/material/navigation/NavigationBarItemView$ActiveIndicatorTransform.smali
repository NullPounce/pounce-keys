.class Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;
.super Ljava/lang/Object;
.source "NavigationBarItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActiveIndicatorTransform"
.end annotation


# static fields
.field private static final ALPHA_FRACTION:F = 0.2f

.field private static final SCALE_X_HIDDEN:F = 0.4f

.field private static final SCALE_X_SHOWN:F = 1.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/navigation/NavigationBarItemView$1;

    .line 1027
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateAlpha(FF)F
    .locals 4
    .param p1, "progress"    # F
    .param p2, "targetValue"    # F

    .line 1044
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1045
    .local v1, "startAlphaFraction":F
    :goto_0
    cmpl-float v2, p2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const v2, 0x3e4ccccd    # 0.2f

    .line 1046
    .local v2, "endAlphaFraction":F
    :goto_1
    invoke-static {v0, v3, v1, v2, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    return v0
.end method

.method protected calculateScaleX(FF)F
    .locals 2
    .param p1, "progress"    # F
    .param p2, "targetValue"    # F

    .line 1052
    const v0, 0x3ecccccd    # 0.4f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method protected calculateScaleY(FF)F
    .locals 1
    .param p1, "progress"    # F
    .param p2, "targetValue"    # F

    .line 1058
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public updateForProgress(FFLandroid/view/View;)V
    .locals 1
    .param p1, "progress"    # F
    .param p2, "targetValue"    # F
    .param p3, "indicator"    # Landroid/view/View;

    .line 1076
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateScaleX(FF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateScaleY(FF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1078
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;->calculateAlpha(FF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1079
    return-void
.end method
