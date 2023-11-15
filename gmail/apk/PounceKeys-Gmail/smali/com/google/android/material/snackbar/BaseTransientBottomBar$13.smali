.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1006
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1016
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    .line 1017
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1009
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1600(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1010
    invoke-static {v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1400(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1500(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 1011
    invoke-static {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1500(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I

    move-result v2

    .line 1009
    invoke-interface {v0, v1, v2}, Lcom/google/android/material/snackbar/ContentViewCallback;->animateContentIn(II)V

    .line 1012
    return-void
.end method
