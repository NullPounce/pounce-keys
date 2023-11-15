.class Lcom/google/android/material/sidesheet/SheetDialog$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/sidesheet/SheetDialog;->wrapInSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/sidesheet/SheetDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/sidesheet/SheetDialog;

    .line 247
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog$1;, "Lcom/google/android/material/sidesheet/SheetDialog$1;"
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 251
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog$1;, "Lcom/google/android/material/sidesheet/SheetDialog$1;"
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    iget-boolean v0, v0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    if-eqz v0, :cond_0

    .line 253
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    goto :goto_0

    .line 256
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    .line 258
    :goto_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 262
    .local p0, "this":Lcom/google/android/material/sidesheet/SheetDialog$1;, "Lcom/google/android/material/sidesheet/SheetDialog$1;"
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    iget-boolean v0, v0, Lcom/google/android/material/sidesheet/SheetDialog;->cancelable:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
