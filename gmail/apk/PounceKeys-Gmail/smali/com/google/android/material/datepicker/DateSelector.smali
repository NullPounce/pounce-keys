.class public interface abstract Lcom/google/android/material/datepicker/DateSelector;
.super Ljava/lang/Object;
.source "DateSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method public static synthetic lambda$showKeyboardWithAutoHideBehavior$0([Landroid/widget/EditText;Landroid/view/View;Z)V
    .locals 4
    .param p0, "editTexts"    # [Landroid/widget/EditText;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 137
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 138
    .local v2, "editText":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    return-void

    .line 137
    .end local v2    # "editText":Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public static varargs showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V
    .locals 5
    .param p0, "editTexts"    # [Landroid/widget/EditText;

    .line 131
    array-length v0, p0

    if-nez v0, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;-><init>([Landroid/widget/EditText;)V

    .line 145
    .local v0, "listener":Landroid/view/View$OnFocusChangeListener;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 146
    .local v4, "editText":Landroid/widget/EditText;
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    .end local v4    # "editText":Landroid/widget/EditText;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_1
    aget-object v1, p0, v2

    invoke-static {v1}, Lcom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Landroid/view/View;)V

    .line 150
    return-void
.end method


# virtual methods
.method public abstract getDefaultThemeResId(Landroid/content/Context;)I
.end method

.method public abstract getDefaultTitleResId()I
.end method

.method public abstract getError()Ljava/lang/String;
.end method

.method public abstract getSelectedDays()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedRanges()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getSelection()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isSelectionComplete()Z
.end method

.method public abstract onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract select(J)V
.end method

.method public abstract setSelection(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract setTextInputFormat(Ljava/text/SimpleDateFormat;)V
.end method
