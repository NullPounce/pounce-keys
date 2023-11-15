.class public Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;
    }
.end annotation


# instance fields
.field private waitingForDismissAllowingStateLoss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "contentLayoutId"    # I

    .line 44
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>(I)V

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 32
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    return-void
.end method

.method private dismissAfterAnimation()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    .line 106
    :goto_0
    return-void
.end method

.method private dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 3
    .param p2, "allowingStateLoss"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    .line 87
    .local p1, "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    .line 89
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->removeDefaultCallback()V

    .line 95
    :cond_1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 96
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 98
    :goto_0
    return-void
.end method

.method private tryDismissWithAnimation(Z)Z
    .locals 4
    .param p1, "allowingStateLoss"    # Z

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 73
    .local v0, "baseDialog":Landroid/app/Dialog;
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v1, :cond_0

    .line 74
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 75
    .local v1, "dialog":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    .line 76
    .local v2, "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    invoke-virtual {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getDismissWithAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissWithAnimation(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 78
    const/4 v3, 0x1

    return v3

    .line 82
    .end local v1    # "dialog":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .end local v2    # "behavior":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    .line 58
    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
