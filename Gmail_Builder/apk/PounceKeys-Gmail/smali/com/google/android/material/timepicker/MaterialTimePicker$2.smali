.class Lcom/google/android/material/timepicker/MaterialTimePicker$2;
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

    .line 298
    iput-object p1, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$2;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$2;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->access$1000(Lcom/google/android/material/timepicker/MaterialTimePicker;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnClickListener;

    .line 302
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 303
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/MaterialTimePicker$2;->this$0:Lcom/google/android/material/timepicker/MaterialTimePicker;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/MaterialTimePicker;->dismiss()V

    .line 305
    return-void
.end method
