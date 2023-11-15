.class Lcom/google/android/material/search/SearchBarAnimationHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBarAnimationHelper;->getExpandAnimator(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field final synthetic val$searchBar:Lcom/google/android/material/search/SearchBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/search/SearchBarAnimationHelper;

    .line 246
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    iput-object p2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$4;->val$searchBar:Lcom/google/android/material/search/SearchBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 254
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$4;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->access$102(Lcom/google/android/material/search/SearchBarAnimationHelper;Z)Z

    .line 255
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 249
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$4;->val$searchBar:Lcom/google/android/material/search/SearchBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/search/SearchBar;->setVisibility(I)V

    .line 250
    return-void
.end method
