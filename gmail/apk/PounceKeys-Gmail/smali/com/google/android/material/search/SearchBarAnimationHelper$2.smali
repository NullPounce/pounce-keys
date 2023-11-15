.class Lcom/google/android/material/search/SearchBarAnimationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBarAnimationHelper;->startOnLoadAnimation(Lcom/google/android/material/search/SearchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field final synthetic val$centerView:Landroid/view/View;

.field final synthetic val$secondaryViewAnimator:Landroid/animation/Animator;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/search/SearchBarAnimationHelper;

    .line 101
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    iput-object p2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$centerView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$secondaryViewAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 104
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$centerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$2;->val$secondaryViewAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 106
    return-void
.end method
