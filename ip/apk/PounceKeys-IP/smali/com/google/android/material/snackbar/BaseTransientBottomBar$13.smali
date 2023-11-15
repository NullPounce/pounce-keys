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

    .line 968
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 977
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onViewShown()V

    .line 978
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 971
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;"
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1400(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/ContentViewCallback;

    move-result-object v0

    const/16 v1, 0x46

    const/16 v2, 0xb4

    invoke-interface {v0, v1, v2}, Lcom/google/android/material/snackbar/ContentViewCallback;->animateContentIn(II)V

    .line 973
    return-void
.end method
