.class abstract Lcom/google/android/material/textfield/EndIconDelegate;
.super Ljava/lang/Object;
.source "EndIconDelegate.java"


# instance fields
.field final context:Landroid/content/Context;

.field final endIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field final endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

.field final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 1
    .param p1, "endLayout"    # Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    iput-object p1, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->context:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 53
    return-void
.end method


# virtual methods
.method afterEditTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 180
    return-void
.end method

.method beforeEditTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 173
    return-void
.end method

.method getIconContentDescriptionResId()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method getIconDrawableResId()I
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method getOnIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method getTouchExplorationStateChangeListener()Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    .locals 1

    .line 162
    const/4 v0, 0x0

    return-object v0
.end method

.method isBoxBackgroundModeSupported(I)Z
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method isIconActivable()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method isIconActivated()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method isIconCheckable()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method isIconChecked()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method onEditTextAttached(Landroid/widget/EditText;)V
    .locals 0
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 166
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 186
    return-void
.end method

.method onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 192
    return-void
.end method

.method onSuffixVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 131
    return-void
.end method

.method final refreshIconState()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/android/material/textfield/EndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshIconState(Z)V

    .line 196
    return-void
.end method

.method setUp()V
    .locals 0

    .line 56
    return-void
.end method

.method shouldTintIconOnError()Z
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method tearDown()V
    .locals 0

    .line 60
    return-void
.end method
