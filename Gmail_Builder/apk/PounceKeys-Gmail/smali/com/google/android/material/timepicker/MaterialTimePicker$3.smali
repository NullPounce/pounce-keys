.class Lcom/google/android/material/timepicker/MaterialTimePicker$3;
.super Ljava/lang/Object;
.source "MaterialTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/MaterialTimePicker;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/MaterialTimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/MaterialTimePicker;

    .line 316
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$3;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 319
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$3;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$1100(Lcom/google/android/material/timepicker/MaterialTimePicker;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$1102(Lcom/google/android/material/timepicker/MaterialTimePicker;I)I

    .line 320
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$3;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$1200(Lcom/google/android/material/timepicker/MaterialTimePicker;)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$1300(Lcom/google/android/material/timepicker/MaterialTimePicker;Lcom/google/android/material/button/MaterialButton;)V

    .line 321
    return-void
.end method
