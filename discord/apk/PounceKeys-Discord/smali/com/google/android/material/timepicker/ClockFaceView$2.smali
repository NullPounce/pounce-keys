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

    .line 153
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 157
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 158
    sget v0, Lcom/google/android/material/R$id;->material_value_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 159
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v1}, Lcom/google/android/material/timepicker/ClockFaceView;->access$200(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    .line 163
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v6

    .line 164
    move v3, v0

    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v1

    .line 163
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 173
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 174
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 15
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 178
    move-object v0, p0

    const/16 v1, 0x10

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 180
    .local v11, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 181
    .local v1, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float v13, v3, v5

    .line 182
    .local v13, "y":F
    iget-object v3, v0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v3}, Lcom/google/android/material/timepicker/ClockFaceView;->access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    move-result-object v14

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 183
    move-wide v3, v11

    move-wide v5, v11

    move v8, v1

    move v9, v13

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 182
    invoke-virtual {v14, v3}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 184
    iget-object v3, v0, Lcom/google/android/material/timepicker/ClockFaceView$2;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-static {v3}, Lcom/google/android/material/timepicker/ClockFaceView;->access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    move-result-object v14

    const/4 v7, 0x1

    .line 185
    move-wide v3, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    .line 184
    invoke-virtual {v14, v3}, Lcom/google/android/material/timepicker/ClockHandView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    const/4 v3, 0x1

    return v3

    .line 188
    .end local v1    # "x":F
    .end local v11    # "eventTime":J
    .end local v13    # "y":F
    :cond_0
    invoke-super/range {p0 .. p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method
