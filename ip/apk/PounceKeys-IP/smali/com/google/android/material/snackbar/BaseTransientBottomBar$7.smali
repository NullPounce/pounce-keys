.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->setUpBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
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

    .line 808
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;"
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 811
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 812
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    .line 815
    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 819
    .local p0, "this":Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;, "Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;"
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 823
    :pswitch_0
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->pauseTimeout(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 824
    goto :goto_0

    .line 827
    :pswitch_1
    invoke-static {}, Lcom/google/android/material/snackbar/SnackbarManager;->getInstance()Lcom/google/android/material/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;->this$0:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->managerCallback:Lcom/google/android/material/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/SnackbarManager;->restoreTimeoutIfPaused(Lcom/google/android/material/snackbar/SnackbarManager$Callback;)V

    .line 828
    nop

    .line 832
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
