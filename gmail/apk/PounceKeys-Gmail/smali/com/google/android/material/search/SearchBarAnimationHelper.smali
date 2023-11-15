.class Lcom/google/android/material/search/SearchBarAnimationHelper;
.super Ljava/lang/Object;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;
    }
.end annotation


# static fields
.field private static final COLLAPSE_DURATION_MS:J = 0xfaL

.field private static final COLLAPSE_FADE_IN_CHILDREN_DURATION_MS:J = 0x64L

.field private static final EXPAND_DURATION_MS:J = 0x12cL

.field private static final EXPAND_FADE_OUT_CHILDREN_DURATION_MS:J = 0x4bL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_IN_START_DELAY_MS:J = 0x1f4L

.field private static final ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_OUT_START_DELAY_MS:J = 0x2eeL

.field private static final ON_LOAD_ANIM_SECONDARY_DURATION_MS:J = 0xfaL

.field private static final ON_LOAD_ANIM_SECONDARY_START_DELAY_MS:J = 0xfaL


# instance fields
.field private final collapseAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private collapsing:Z

.field private defaultCenterViewAnimator:Landroid/animation/Animator;

.field private final expandAnimationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private expanding:Z

.field private final onLoadAnimationCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private onLoadAnimationFadeInEnabled:Z

.field private runningExpandOrCollapseAnimator:Landroid/animation/Animator;

.field private secondaryViewAnimator:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$iABKJ6kyZ69puyOjwiq34DXz3r0(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/search/SearchBarAnimationHelper;
    .param p1, "x1"    # Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/search/SearchBarAnimationHelper;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/search/SearchBarAnimationHelper;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 46
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/search/SearchBarAnimationHelper;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    return p1
.end method

.method private dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V
    .locals 2
    .param p1, "invocation"    # Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;

    .line 147
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    .line 148
    .local v1, "onLoadAnimationCallback":Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;
    invoke-interface {p1, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;->invoke(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V

    .line 149
    .end local v1    # "onLoadAnimationCallback":Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;
    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 3
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;
    .param p3, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    .line 310
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/SearchBarAnimationHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$6;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getCollapseAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 309
    return-object v0
.end method

.method private getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 11
    .param p1, "centerView"    # Landroid/view/View;

    .line 157
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 158
    .local v1, "fadeInAnimator":Landroid/animation/ValueAnimator;
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 159
    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 160
    nop

    .line 161
    iget-boolean v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_0

    move-wide v9, v5

    goto :goto_0

    :cond_0
    move-wide v9, v7

    .line 160
    :goto_0
    invoke-virtual {v1, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 162
    nop

    .line 163
    iget-boolean v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    if-eqz v3, :cond_1

    const-wide/16 v7, 0x1f4

    .line 162
    :cond_1
    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 165
    new-array v3, v0, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 166
    .local v3, "fadeOutAnimator":Landroid/animation/ValueAnimator;
    new-array v7, v2, [Landroid/view/View;

    aput-object p1, v7, v4

    invoke-static {v7}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 167
    sget-object v7, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 168
    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 169
    const-wide/16 v5, 0x2ee

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 171
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 172
    .local v5, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v4

    aput-object v3, v0, v2

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 173
    return-object v5

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;
    .locals 6
    .param p1, "expandedView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 397
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 398
    .local v0, "isRtl":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v1, "endAnchoredViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 400
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 401
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 402
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 403
    .local v4, "child":Landroid/view/View;
    if-nez v0, :cond_0

    instance-of v5, v4, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v5, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    instance-of v5, v4, Landroidx/appcompat/widget/ActionMenuView;

    if-nez v5, :cond_2

    .line 405
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v4    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method private getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
    .locals 3
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;
    .param p3, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    .line 244
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setDuration(J)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/search/SearchBarAnimationHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper$4;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addListener(Landroid/animation/AnimatorListenerAdapter;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getExpandAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 243
    return-object v0
.end method

.method private getExpandCollapseAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;
    .locals 2
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;
    .param p3, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 341
    new-instance v0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setAdditionalUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    .line 344
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/android/material/appbar/AppBarLayout;->getTop()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->setCollapsedViewOffsetY(I)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    .line 345
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getEndAnchoredViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->addEndAnchoredViews(Ljava/util/Collection;)Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method private getExpandedViewBackgroundUpdateListener(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;

    .line 350
    nop

    .line 351
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->createWithElevationOverlay(Landroid/content/Context;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 352
    .local v0, "expandedViewBackground":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCornerSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 353
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 355
    new-instance v1, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;)V

    return-object v1
.end method

.method private getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;
    .locals 2
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/search/SearchBar;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 390
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    return-object v0
.end method

.method private getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;
    .locals 4
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;

    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object v0

    .line 381
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 382
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 384
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 385
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;
    .locals 4
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;

    .line 365
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeChildren(Lcom/google/android/material/search/SearchBar;)Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 367
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    new-instance v2, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 374
    const-wide/16 v2, 0x4b

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    return-object v1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .param p1, "secondaryActionMenuItemView"    # Landroid/view/View;

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 197
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 198
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "secondaryActionMenuItemView"    # Landroid/view/View;

    .line 178
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 179
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 181
    if-eqz p2, :cond_0

    .line 182
    invoke-direct {p0, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryActionMenuItemAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 184
    :cond_0
    return-object v0
.end method

.method private getTextViewAnimator(Landroid/widget/TextView;)Landroid/animation/Animator;
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 188
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 189
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 190
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 192
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$getExpandedViewBackgroundUpdateListener$1(Lcom/google/android/material/shape/MaterialShapeDrawable;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "expandedViewBackground"    # Lcom/google/android/material/shape/MaterialShapeDrawable;
    .param p1, "expandedView"    # Landroid/view/View;
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 356
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setInterpolation(F)V

    .line 357
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 360
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 361
    return-void
.end method

.method static synthetic lambda$getFadeOutChildrenAnimator$2(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "expandedView"    # Landroid/view/View;
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 373
    return-void
.end method


# virtual methods
.method addCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 332
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method addExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 265
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method addOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)V
    .locals 1
    .param p1, "onLoadAnimationCallback"    # Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    .line 139
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method isCollapsing()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    return v0
.end method

.method isExpanding()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    return v0
.end method

.method isOnLoadAnimationFadeInEnabled()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    return v0
.end method

.method synthetic lambda$startExpandAnimation$0$com-google-android-material-search-SearchBarAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 5
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;
    .param p3, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p4, "skipAnimation"    # Z

    .line 217
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 218
    .local v0, "fadeAndExpandAnimatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeOutChildrenAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    .line 219
    .local v1, "fadeOutChildrenAnimator":Landroid/animation/Animator;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object v2

    .line 221
    .local v2, "expandAnimator":Landroid/animation/Animator;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 222
    new-instance v3, Lcom/google/android/material/search/SearchBarAnimationHelper$3;

    invoke-direct {v3, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$3;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    iget-object v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorListenerAdapter;

    .line 230
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    .end local v4    # "listener":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_0

    .line 232
    :cond_0
    if-eqz p4, :cond_1

    .line 233
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 235
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 237
    iput-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    .line 238
    return-void
.end method

.method removeCollapseAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 336
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeExpandAnimationListener(Landroid/animation/AnimatorListenerAdapter;)Z
    .locals 1
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 269
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expandAnimationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method removeOnLoadAnimationCallback(Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;)Z
    .locals 1
    .param p1, "onLoadAnimationCallback"    # Lcom/google/android/material/search/SearchBar$OnLoadAnimationCallback;

    .line 143
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method setOnLoadAnimationFadeInEnabled(Z)V
    .locals 0
    .param p1, "onLoadAnimationFadeInEnabled"    # Z

    .line 135
    iput-boolean p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->onLoadAnimationFadeInEnabled:Z

    .line 136
    return-void
.end method

.method startCollapseAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 6
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;
    .param p3, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p4, "skipAnimation"    # Z

    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isExpanding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapsing:Z

    .line 284
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 285
    .local v1, "collapseAndFadeAnimatorSet":Landroid/animation/AnimatorSet;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getCollapseAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;

    move-result-object v2

    .line 286
    .local v2, "collapseAnimator":Landroid/animation/Animator;
    invoke-direct {p0, p1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getFadeInChildrenAnimator(Lcom/google/android/material/search/SearchBar;)Landroid/animation/Animator;

    move-result-object v3

    .line 288
    .local v3, "fadeInChildrenAnimator":Landroid/animation/Animator;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v3, v4, v0

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 289
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$5;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->collapseAnimationListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorListenerAdapter;

    .line 297
    .local v4, "listener":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    .end local v4    # "listener":Landroid/animation/AnimatorListenerAdapter;
    goto :goto_0

    .line 299
    :cond_1
    if-eqz p4, :cond_2

    .line 300
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 302
    :cond_2
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 304
    iput-object v1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    .line 305
    return-void
.end method

.method startExpandAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 7
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;
    .param p2, "expandedView"    # Landroid/view/View;
    .param p3, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;
    .param p4, "skipAnimation"    # Z

    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->runningExpandOrCollapseAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 213
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->expanding:Z

    .line 214
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method

.method startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .locals 6
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;

    .line 73
    new-instance v0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/search/SearchBarAnimationHelper;->dispatchOnLoadAnimation(Lcom/google/android/material/search/SearchBarAnimationHelper$OnLoadAnimationInvocation;)V

    .line 74
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 75
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "centerView":Landroid/view/View;
    invoke-static {p1}, Lcom/google/android/material/internal/ToolbarUtils;->getSecondaryActionMenuItemView(Landroidx/appcompat/widget/Toolbar;)Landroid/view/View;

    move-result-object v2

    .line 78
    .local v2, "secondaryActionMenuItemView":Landroid/view/View;
    nop

    .line 79
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getSecondaryViewAnimator(Landroid/widget/TextView;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 80
    .local v3, "secondaryViewAnimator":Landroid/animation/Animator;
    new-instance v4, Lcom/google/android/material/search/SearchBarAnimationHelper$1;

    invoke-direct {v4, p0}, Lcom/google/android/material/search/SearchBarAnimationHelper$1;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iput-object v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 90
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 93
    :cond_0
    instance-of v5, v1, Lcom/google/android/material/animation/AnimatableView;

    if-eqz v5, :cond_1

    .line 94
    move-object v4, v1

    check-cast v4, Lcom/google/android/material/animation/AnimatableView;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3}, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda4;-><init>(Landroid/animation/Animator;)V

    invoke-interface {v4, v5}, Lcom/google/android/material/animation/AnimatableView;->startAnimation(Lcom/google/android/material/animation/AnimatableView$Listener;)V

    goto :goto_0

    .line 95
    :cond_1
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 97
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->getDefaultCenterViewAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v4

    .line 99
    .local v4, "defaultCenterViewAnimator":Landroid/animation/Animator;
    iput-object v4, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    .line 100
    new-instance v5, Lcom/google/android/material/search/SearchBarAnimationHelper$2;

    invoke-direct {v5, p0, v1, v3}, Lcom/google/android/material/search/SearchBarAnimationHelper$2;-><init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 109
    .end local v4    # "defaultCenterViewAnimator":Landroid/animation/Animator;
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 112
    :goto_0
    return-void
.end method

.method stopOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
    .locals 2
    .param p1, "searchBar"    # Lcom/google/android/material/search/SearchBar;

    .line 115
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->secondaryViewAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper;->defaultCenterViewAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/search/SearchBar;->getCenterView()Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, "centerView":Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/material/animation/AnimatableView;

    if-eqz v1, :cond_2

    .line 123
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/animation/AnimatableView;

    invoke-interface {v1}, Lcom/google/android/material/animation/AnimatableView;->stopAnimation()V

    .line 125
    :cond_2
    if-eqz v0, :cond_3

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 128
    :cond_3
    return-void
.end method
