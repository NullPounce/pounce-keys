.class Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandCollapseAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->getCollapseAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    .line 90
    iput-object p1, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;->this$0:Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 93
    iget-object v0, p0, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper$2;->this$0:Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;

    invoke-static {v0}, Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;->access$000(Lcom/google/android/material/internal/ExpandCollapseAnimationHelper;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void
.end method
