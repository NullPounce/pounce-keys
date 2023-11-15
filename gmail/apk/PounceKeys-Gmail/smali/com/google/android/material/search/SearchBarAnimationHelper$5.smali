.class Lcom/google/android/material/search/SearchBarAnimationHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchBarAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/SearchBarAnimationHelper;->startCollapseAnimation(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/search/SearchBarAnimationHelper;

    .line 290
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 293
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$5;->this$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/search/SearchBarAnimationHelper;->access$202(Lcom/google/android/material/search/SearchBarAnimationHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 294
    return-void
.end method
