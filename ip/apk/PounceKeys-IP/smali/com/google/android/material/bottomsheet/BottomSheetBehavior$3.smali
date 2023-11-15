.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$shouldHandleGestureInsets:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1506
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;"
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 1511
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;"
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1512
    .local v0, "systemBarInsets":Landroidx/core/graphics/Insets;
    nop

    .line 1513
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 1515
    .local v1, "mandatoryGestureInsets":Landroidx/core/graphics/Insets;
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1517
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 1519
    .local v2, "isRtl":Z
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 1520
    .local v3, "bottomPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 1521
    .local v4, "leftPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 1523
    .local v5, "rightPadding":I
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1526
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$502(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1527
    iget v6, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    iget-object v7, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result v7

    add-int v3, v6, v7

    .line 1530
    :cond_0
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1531
    if-eqz v2, :cond_1

    iget v6, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    goto :goto_0

    :cond_1
    iget v6, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    :goto_0
    move v4, v6

    .line 1532
    iget v6, v0, Landroidx/core/graphics/Insets;->left:I

    add-int/2addr v4, v6

    .line 1535
    :cond_2
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1536
    if-eqz v2, :cond_3

    iget v6, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    goto :goto_1

    :cond_3
    iget v6, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    :goto_1
    move v5, v6

    .line 1537
    iget v6, v0, Landroidx/core/graphics/Insets;->right:I

    add-int/2addr v5, v6

    .line 1540
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1541
    .local v6, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v7, 0x0

    .line 1543
    .local v7, "marginUpdated":Z
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v0, Landroidx/core/graphics/Insets;->left:I

    if-eq v8, v9, :cond_5

    .line 1544
    iget v8, v0, Landroidx/core/graphics/Insets;->left:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1545
    const/4 v7, 0x1

    .line 1548
    :cond_5
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v9, v0, Landroidx/core/graphics/Insets;->right:I

    if-eq v8, v9, :cond_6

    .line 1549
    iget v8, v0, Landroidx/core/graphics/Insets;->right:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1550
    const/4 v7, 0x1

    .line 1553
    :cond_6
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v0, Landroidx/core/graphics/Insets;->top:I

    if-eq v8, v9, :cond_7

    .line 1554
    iget v8, v0, Landroidx/core/graphics/Insets;->top:I

    iput v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1555
    const/4 v7, 0x1

    .line 1558
    :cond_7
    if-eqz v7, :cond_8

    .line 1559
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1561
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {p1, v4, v8, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1563
    iget-boolean v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    if-eqz v8, :cond_9

    .line 1564
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v9, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1569
    :cond_9
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    if-eqz v8, :cond_b

    .line 1570
    :cond_a
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 1572
    :cond_b
    return-object p2
.end method
