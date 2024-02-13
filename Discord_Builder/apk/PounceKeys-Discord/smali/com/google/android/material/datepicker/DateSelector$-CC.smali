.class public final synthetic Lcom/google/android/material/datepicker/DateSelector$-CC;
.super Ljava/lang/Object;
.source "DateSelector.java"


# direct methods
.method public static synthetic lambda$showKeyboardWithAutoHideBehavior$0([Landroid/widget/EditText;Landroid/view/View;Z)V
    .locals 4
    .param p0, "editTexts"    # [Landroid/widget/EditText;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 114
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 115
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    return-void

    .line 114
    .end local v2    # "editText":Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method public static varargs showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V
    .locals 5
    .param p0, "editTexts"    # [Landroid/widget/EditText;

    .line 108
    array-length v0, p0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;-><init>([Landroid/widget/EditText;)V

    .line 122
    .local v0, "listener":Landroid/view/View$OnFocusChangeListener;
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 123
    .local v4, "editText":Landroid/widget/EditText;
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 122
    .end local v4    # "editText":Landroid/widget/EditText;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_1
    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Landroid/view/View;)V

    .line 127
    return-void
.end method
