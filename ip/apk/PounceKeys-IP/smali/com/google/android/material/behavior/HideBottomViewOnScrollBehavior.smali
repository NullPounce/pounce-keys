.class public Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$ScrollState;,
        Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field protected static final ENTER_ANIMATION_DURATION:I = 0xe1

.field protected static final EXIT_ANIMATION_DURATION:I = 0xaf

.field public static final STATE_SCROLLED_DOWN:I = 0x1

.field public static final STATE_SCROLLED_UP:I = 0x2


# instance fields
.field private additionalHiddenOffsetY:I

.field private currentAnimator:Landroid/view/ViewPropertyAnimator;

.field private currentState:I

.field private height:I

.field private final onScrollStateChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 91
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 87
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 88
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 87
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 88
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 95
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .line 44
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p2, "targetY"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    nop

    .line 242
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 244
    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    .line 253
    return-void
.end method

.method private updateCurrentState(Landroid/view/View;I)V
    .locals 3
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 233
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 234
    .local v1, "listener":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;
    iget v2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;->onStateChanged(Landroid/view/View;I)V

    .line 235
    .end local v1    # "listener":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;
    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 261
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public clearOnScrollStateChangedListeners()V
    .locals 1

    .line 275
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 276
    return-void
.end method

.method public isScrolledDown()Z
    .locals 2

    .line 192
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isScrolledUp()Z
    .locals 2

    .line 151
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    nop

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    .local v0, "paramsCompat":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-lez p5, :cond_0

    .line 143
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    goto :goto_0

    .line 144
    :cond_0
    if-gez p5, :cond_1

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 270
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public setAdditionalHiddenOffsetY(Landroid/view/View;I)V
    .locals 2
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 115
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 118
    :cond_0
    return-void
.end method

.method public slideDown(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;Z)V

    .line 201
    return-void
.end method

.method public slideDown(Landroid/view/View;Z)V
    .locals 8
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 218
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    .line 219
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    add-int/2addr v0, v1

    .line 220
    .local v0, "targetTranslationY":I
    if-eqz p2, :cond_2

    .line 221
    const-wide/16 v5, 0xaf

    sget-object v7, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 227
    :cond_2
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 229
    :goto_0
    return-void
.end method

.method public slideUp(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;Z)V

    .line 160
    return-void
.end method

.method public slideUp(Landroid/view/View;Z)V
    .locals 7
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 177
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "targetTranslationY":I
    if-eqz p2, :cond_2

    .line 180
    const-wide/16 v4, 0xe1

    sget-object v6, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 186
    :cond_2
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 188
    :goto_0
    return-void
.end method
