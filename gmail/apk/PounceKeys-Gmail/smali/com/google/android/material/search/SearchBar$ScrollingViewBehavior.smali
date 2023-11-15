.class public Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.source "SearchBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# instance fields
.field private initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 807
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>()V

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;->initialized:Z

    .line 807
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 810
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;->initialized:Z

    .line 811
    return-void
.end method

.method private setAppBarLayoutTransparent(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 1
    .param p1, "appBarLayout"    # Lcom/google/android/material/appbar/AppBarLayout;

    .line 826
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    .line 829
    nop

    .line 834
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setTargetElevation(F)V

    .line 836
    return-void
.end method


# virtual methods
.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 816
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    .line 817
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;->initialized:Z

    if-nez v1, :cond_0

    instance-of v1, p3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_0

    .line 818
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;->initialized:Z

    .line 819
    move-object v1, p3

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 820
    .local v1, "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    invoke-direct {p0, v1}, Lcom/google/android/material/search/SearchBar$ScrollingViewBehavior;->setAppBarLayoutTransparent(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 822
    .end local v1    # "appBarLayout":Lcom/google/android/material/appbar/AppBarLayout;
    :cond_0
    return v0
.end method

.method protected shouldHeaderOverlapScrollingChild()Z
    .locals 1

    .line 840
    const/4 v0, 0x1

    return v0
.end method
