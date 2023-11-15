.class Lcom/google/android/material/textfield/IndicatorViewController$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "IndicatorViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/IndicatorViewController;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/IndicatorViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/textfield/IndicatorViewController;

    .line 552
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$2;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accessibilityNodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 556
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 557
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$2;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-static {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->access$300(Lcom/google/android/material/textfield/IndicatorViewController;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 558
    .local v0, "editText":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    .line 561
    :cond_0
    return-void
.end method
