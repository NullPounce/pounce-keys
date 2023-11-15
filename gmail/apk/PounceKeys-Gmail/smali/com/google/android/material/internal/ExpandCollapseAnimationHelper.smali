.class public Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
.super Ljava/lang/Object;
.source "ExpandCollapseAnimationHelper.java"


# instance fields
.field private additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final collapsedView:Landroid/view/View;

.field private collapsedViewOffsetY:I

.field private duration:J

.field private final endAnchoredViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final expandedView:Landroid/view/View;

.field private expandedViewOffsetY:I

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "collapsedView"    # Landroid/view/View;
    .param p2, "expandedView"    # Landroid/view/View;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    .line 44
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    return-object v0
.end method

.method private addListeners(Landroid/animation/Animator;Ljava/util/List;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/List<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/AnimatorListenerAdapter;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorListenerAdapter;

    .line 205
    .local v1, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    .end local v1    # "listener":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private getAnimatorSet(Z)Landroid/animation/AnimatorSet;
    .locals 4
    .param p1, "expand"    # Z

    .line 152
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 153
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandCollapseAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandedViewChildrenAlphaAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getEndAnchoredViewsTranslateAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 153
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 157
    return-object v0
.end method

.method private getEndAnchoredViewsTranslateAnimator(Z)Landroid/animation/Animator;
    .locals 6
    .param p1, "expand"    # Z

    .line 190
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 191
    .local v0, "leftDelta":I
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 192
    .local v1, "rightDelta":I
    add-int v2, v0, v1

    .line 194
    .local v2, "fromTranslationX":I
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 195
    .local v3, "animator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/material/internal/MultiViewUpdateListener;->translationXListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 196
    iget-wide v4, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 197
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 198
    invoke-static {p1, v4}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    .line 197
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    return-object v3
.end method

.method private getExpandCollapseAnimator(Z)Landroid/animation/Animator;
    .locals 6
    .param p1, "expand"    # Z

    .line 161
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedView:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedViewOffsetY:I

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 162
    .local v0, "fromBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    iget v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedViewOffsetY:I

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object v1

    .line 163
    .local v1, "toBounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 165
    .local v2, "bounds":Landroid/graphics/Rect;
    new-instance v3, Lcom/google/android/material/internal/RectEvaluator;

    invoke-direct {v3, v2}, Lcom/google/android/material/internal/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    .line 166
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 167
    .local v3, "animator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object v4, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    :cond_0
    iget-wide v4, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 173
    invoke-static {p1, v4}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v4

    .line 172
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    return-object v3
.end method

.method private getExpandedViewChildrenAlphaAnimator(Z)Landroid/animation/Animator;
    .locals 4
    .param p1, "expand"    # Z

    .line 179
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->getChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "expandedViewChildren":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 181
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 182
    iget-wide v2, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 183
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 184
    invoke-static {p1, v2}, Lcom/google/android/material/internal/ReversableAnimatedValueInterpolator;->of(ZLandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addEndAnchoredViews(Ljava/util/Collection;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;"
        }
    .end annotation

    .line 125
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-object p0
.end method

.method public varargs addEndAnchoredViews([Landroid/view/View;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1
    .param p1, "views"    # [Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->endAnchoredViews:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 119
    return-object p0
.end method

.method public addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 1
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 111
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-object p0
.end method

.method public getCollapseAnimator()Landroid/animation/Animator;
    .locals 2

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 89
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListeners(Landroid/animation/Animator;Ljava/util/List;)V

    .line 98
    return-object v0
.end method

.method public getExpandAnimator()Landroid/animation/Animator;
    .locals 2

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 74
    .local v0, "animator":Landroid/animation/Animator;
    new-instance v1, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$1;-><init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->listeners:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListeners(Landroid/animation/Animator;Ljava/util/List;)V

    .line 83
    return-object v0
.end method

.method synthetic lambda$getExpandCollapseAnimator$0$com-google-android-material-internal-ExpandCollapseAnimationHelper(Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 167
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/google/android/material/internal/ViewUtils;->setBoundsFromRect(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAdditionalUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0
    .param p1, "additionalUpdateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 133
    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->additionalUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 134
    return-object p0
.end method

.method public setCollapsedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0
    .param p1, "collapsedViewOffsetY"    # I

    .line 140
    iput p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->collapsedViewOffsetY:I

    .line 141
    return-object p0
.end method

.method public setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0
    .param p1, "duration"    # J

    .line 104
    iput-wide p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->duration:J

    .line 105
    return-object p0
.end method

.method public setExpandedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 0
    .param p1, "expandedViewOffsetY"    # I

    .line 147
    iput p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->expandedViewOffsetY:I

    .line 148
    return-object p0
.end method
