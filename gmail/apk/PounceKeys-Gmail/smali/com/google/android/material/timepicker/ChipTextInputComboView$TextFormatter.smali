.class Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "ChipTextInputComboView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/ChipTextInputComboView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextFormatter"
.end annotation


# static fields
.field private static final DEFAULT_TEXT:Ljava/lang/String; = "00"


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/ChipTextInputComboView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/timepicker/ChipTextInputComboView;
    .param p2, "x1"    # Lcom/google/android/material/timepicker/ChipTextInputComboView$1;

    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "00"

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->access$200(Lcom/google/android/material/timepicker/ChipTextInputComboView;)Lcom/google/android/material/chip/Chip;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v2, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->access$100(Lcom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->access$100(Lcom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "formattedText":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->access$200(Lcom/google/android/material/timepicker/ChipTextInputComboView;)Lcom/google/android/material/chip/Chip;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;->this$0:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-static {v3, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->access$100(Lcom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method
