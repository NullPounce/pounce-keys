.class Lcom/google/android/material/slider/BaseSlider$1;
.super Ljava/lang/Object;
.source "BaseSlider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/slider/BaseSlider;->createLabelAnimator(Z)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/slider/BaseSlider;


# direct methods
.method constructor <init>(Lcom/google/android/material/slider/BaseSlider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/slider/BaseSlider;

    .line 2160
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider$1;, "Lcom/google/android/material/slider/BaseSlider$1;"
    iput-object p1, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 2163
    .local p0, "this":Lcom/google/android/material/slider/BaseSlider$1;, "Lcom/google/android/material/slider/BaseSlider$1;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2164
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v1}, Lcom/google/android/material/slider/BaseSlider;->access$000(Lcom/google/android/material/slider/BaseSlider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tooltip/TooltipDrawable;

    .line 2165
    .local v2, "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    invoke-virtual {v2, v0}, Lcom/google/android/material/tooltip/TooltipDrawable;->setRevealFraction(F)V

    .line 2166
    .end local v2    # "label":Lcom/google/android/material/tooltip/TooltipDrawable;
    goto :goto_0

    .line 2168
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/slider/BaseSlider$1;->this$0:Lcom/google/android/material/slider/BaseSlider;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2169
    return-void
.end method
