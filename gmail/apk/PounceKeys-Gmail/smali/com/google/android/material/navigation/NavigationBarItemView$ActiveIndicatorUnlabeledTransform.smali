.class Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;
.super Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;
.source "NavigationBarItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActiveIndicatorUnlabeledTransform"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1089
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorTransform;-><init>(Lcom/google/android/material/navigation/NavigationBarItemView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/navigation/NavigationBarItemView$1;

    .line 1089
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;-><init>()V

    return-void
.end method


# virtual methods
.method protected calculateScaleY(FF)F
    .locals 1
    .param p1, "progress"    # F
    .param p2, "targetValue"    # F

    .line 1093
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/navigation/NavigationBarItemView$ActiveIndicatorUnlabeledTransform;->calculateScaleX(FF)F

    move-result v0

    return v0
.end method
