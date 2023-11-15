.class Lcom/google/android/material/timepicker/ClockFaceView$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ClockFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/ClockFaceView;

    .line 156
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 160
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 161
    sget v0, Lcom/google/android/material/R$id;->material_value_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 163
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->access$200(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    .line 166
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    .line 167
    move v3, v0

    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    .line 166
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 175
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 176
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 177
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 16
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 181
    move-object/from16 v0, p0

    const/16 v1, 0x10

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 183
    .local v11, "time":J
    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v13, p1

    invoke-virtual {v13, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 184
    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 185
    .local v1, "x":F
    iget-object v3, v0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v3}, Lcom/google/android/material/timepicker/ClockFaceView;->access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v14, v3

    .line 186
    .local v14, "y":F
    iget-object v3, v0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v3}, Lcom/google/android/material/timepicker/ClockFaceView;->access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    move-result-object v15

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    move v8, v1

    move v9, v14

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    iget-object v3, v0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v3}, Lcom/google/android/material/timepicker/ClockFaceView;->access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    move-result-object v15

    const/4 v7, 0x1

    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 188
    const/4 v3, 0x1

    return v3

    .line 190
    .end local v1    # "x":F
    .end local v11    # "time":J
    .end local v14    # "y":F
    :cond_0
    move-object/from16 v13, p1

    invoke-super/range {p0 .. p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method
