.class public final Lcom/google/android/material/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .locals 7
    .param p0, "view"    # Lcom/google/android/material/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "endRadius"    # F

    .line 57
    sget-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    new-instance v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    filled-new-array {v2}, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v2

    .line 58
    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 63
    .local v0, "revealInfoAnimator":Landroid/animation/Animator;
    nop

    .line 66
    invoke-interface {p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    .line 67
    .local v1, "revealInfo":Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    if-eqz v1, :cond_0

    .line 71
    iget v2, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 72
    .local v2, "startRadius":F
    move-object v3, p0

    check-cast v3, Landroid/view/View;

    float-to-int v4, p1

    float-to-int v5, p2

    .line 73
    invoke-static {v3, v4, v5, v2, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v3

    .line 75
    .local v3, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 76
    .local v4, "set":Landroid/animation/AnimatorSet;
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 77
    return-object v4

    .line 68
    .end local v2    # "startRadius":F
    .end local v3    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFFF)Landroid/animation/Animator;
    .locals 5
    .param p0, "view"    # Lcom/google/android/material/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .line 97
    sget-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    new-instance v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    new-instance v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v3, p1, p2, p4}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    filled-new-array {v2, v3}, [Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v2

    .line 98
    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 104
    .local v0, "revealInfoAnimator":Landroid/animation/Animator;
    nop

    .line 105
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    float-to-int v2, p1

    float-to-int v3, p2

    .line 106
    invoke-static {v1, v2, v3, p3, p4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v1

    .line 108
    .local v1, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 110
    return-object v2
.end method

.method public static createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "view"    # Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 123
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    return-object v0
.end method
