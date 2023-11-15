.class Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;
.super Lcom/google/android/material/timepicker/ClickActionDelegate;
.source "TimePickerClockPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerClockPresenter;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerClockPresenter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resId"    # I

    .line 190
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;->this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/timepicker/ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 194
    invoke-super {p0, p1, p2}, Lcom/google/android/material/timepicker/ClickActionDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 195
    nop

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->material_minute_suffix:I

    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;->this$0:Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 197
    invoke-static {v2}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerClockPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method
