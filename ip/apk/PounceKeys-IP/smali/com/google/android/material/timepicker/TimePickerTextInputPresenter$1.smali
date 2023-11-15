.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "TimePickerTextInputPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 58
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 62
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "minute":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-static {v1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "minute":I
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 71
    :goto_0
    return-void
.end method
