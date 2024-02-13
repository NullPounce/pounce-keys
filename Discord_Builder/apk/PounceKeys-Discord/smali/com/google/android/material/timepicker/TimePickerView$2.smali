.class Lcom/google/android/material/timepicker/TimePickerView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 131
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView$2;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 134
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView$2;->this$0:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerView;->access$100(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    move-result-object v0

    .line 135
    .local v0, "listener":Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;
    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;->onDoubleTap()V

    .line 137
    const/4 v1, 0x1

    return v1

    .line 139
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
