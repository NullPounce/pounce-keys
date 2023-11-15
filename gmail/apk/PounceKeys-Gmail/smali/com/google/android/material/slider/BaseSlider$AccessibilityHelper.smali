.class Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "BaseSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/BaseSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field private final slider:Lcom/google/android/material/slider/BaseSlider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;"
        }
    .end annotation
.end field

.field final virtualViewBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/slider/BaseSlider<",
            "***>;)V"
        }
    .end annotation

    .line 2706
    .local p1, "slider":Lcom/google/android/material/slider/BaseSlider;, "Lcom/google/android/material/slider/BaseSlider<***>;"
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 2703
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    .line 2707
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2708
    return-void
.end method

.method private startOrEndDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "virtualViewId"    # I

    .line 2771
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    .line 2772
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2773
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_slider_range_end:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2776
    :cond_0
    if-nez p1, :cond_1

    .line 2777
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->material_slider_range_start:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2780
    :cond_1
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2713
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    .line 2714
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2715
    return v0

    .line 2712
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2719
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2724
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2725
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2727
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2786
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2787
    return v1

    .line 2790
    :cond_0
    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 2836
    return v1

    .line 2793
    :sswitch_0
    if-eqz p3, :cond_3

    .line 2794
    const-string v2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2798
    :cond_1
    nop

    .line 2799
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 2800
    .local v2, "value":F
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v3, p1, v2}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2801
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v1}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    .line 2802
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2803
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->invalidateVirtualView(I)V

    .line 2804
    return v0

    .line 2806
    :cond_2
    return v1

    .line 2796
    .end local v2    # "value":F
    :cond_3
    :goto_0
    return v1

    .line 2811
    :sswitch_1
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/material/slider/BaseSlider;->access$700(Lcom/google/android/material/slider/BaseSlider;I)F

    move-result v2

    .line 2812
    .local v2, "increment":F
    const/16 v3, 0x2000

    if-ne p2, v3, :cond_4

    .line 2813
    neg-float v2, v2

    .line 2817
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2818
    neg-float v2, v2

    .line 2821
    :cond_5
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v3

    .line 2822
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    nop

    .line 2824
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v2

    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2825
    invoke-virtual {v5}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    .line 2826
    invoke-virtual {v6}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    move-result v6

    .line 2823
    invoke-static {v4, v5, v6}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    .line 2827
    .local v4, "clamped":F
    iget-object v5, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v5, p1, v4}, Lcom/google/android/material/slider/BaseSlider;->access$500(Lcom/google/android/material/slider/BaseSlider;IF)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2828
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v1}, Lcom/google/android/material/slider/BaseSlider;->access$600(Lcom/google/android/material/slider/BaseSlider;)V

    .line 2829
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v1}, Lcom/google/android/material/slider/BaseSlider;->postInvalidate()V

    .line 2830
    invoke-virtual {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->invalidateVirtualView(I)V

    .line 2831
    return v0

    .line 2833
    :cond_6
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x102003d -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 10
    .param p1, "virtualViewId"    # I
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2733
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SET_PROGRESS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 2735
    iget-object v0, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v0}, Lcom/google/android/material/slider/BaseSlider;->getValues()Ljava/util/List;

    move-result-object v0

    .line 2736
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2737
    .local v1, "value":F
    iget-object v2, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v2}, Lcom/google/android/material/slider/BaseSlider;->getValueFrom()F

    move-result v2

    .line 2738
    .local v2, "valueFrom":F
    iget-object v3, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v3}, Lcom/google/android/material/slider/BaseSlider;->getValueTo()F

    move-result v3

    .line 2740
    .local v3, "valueTo":F
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v4}, Lcom/google/android/material/slider/BaseSlider;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2741
    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    .line 2742
    const/16 v4, 0x2000

    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2744
    :cond_0
    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    .line 2745
    const/16 v4, 0x1000

    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2749
    :cond_1
    const/4 v4, 0x1

    invoke-static {v4, v2, v3, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    .line 2750
    const-class v5, Landroid/widget/SeekBar;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2753
    .local v5, "contentDescription":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v6}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2754
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v6}, Lcom/google/android/material/slider/BaseSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    :cond_2
    iget-object v6, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v6, v1}, Lcom/google/android/material/slider/BaseSlider;->access$400(Lcom/google/android/material/slider/BaseSlider;F)Ljava/lang/String;

    move-result-object v6

    .line 2758
    .local v6, "verbalValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    invoke-virtual {v7}, Lcom/google/android/material/slider/BaseSlider;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$string;->material_slider_value:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2759
    .local v7, "verbalValueType":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_3

    .line 2760
    invoke-direct {p0, p1}, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->startOrEndDescription(I)Ljava/lang/String;

    move-result-object v7

    .line 2762
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s, %s"

    filled-new-array {v7, v6}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v4, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2763
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2765
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->slider:Lcom/google/android/material/slider/BaseSlider;

    iget-object v8, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p1, v8}, Lcom/google/android/material/slider/BaseSlider;->updateBoundsForVirtualViewId(ILandroid/graphics/Rect;)V

    .line 2766
    iget-object v4, p0, Lcom/google/android/material/slider/BaseSlider$AccessibilityHelper;->virtualViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2767
    return-void
.end method
