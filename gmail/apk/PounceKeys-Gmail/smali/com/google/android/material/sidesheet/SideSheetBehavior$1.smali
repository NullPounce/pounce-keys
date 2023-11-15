.class Lcom/google/android/material/sidesheet/SideSheetBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SideSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/sidesheet/SideSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 686
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 735
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getExpandedOffset()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$600(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 730
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 740
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$600(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    move-result v0

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 715
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$400(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 718
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 699
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getCoplanarSiblingView()Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, "coplanarSiblingView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 701
    nop

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 703
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_0

    .line 704
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$200(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Lcom/google/android/material/sidesheet/SheetDelegate;

    move-result-object v2

    .line 705
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    .line 704
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/material/sidesheet/SheetDelegate;->updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    .line 706
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 710
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v1, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$300(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;I)V

    .line 711
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xVelocity"    # F
    .param p3, "yVelocity"    # F

    .line 723
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 724
    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$200(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Lcom/google/android/material/sidesheet/SheetDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SheetDelegate;->calculateTargetStateOnViewReleased(Landroid/view/View;FF)I

    move-result v0

    .line 725
    .local v0, "targetState":I
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldSkipSmoothAnimation()Z

    move-result v2

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$500(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;IZ)V

    .line 726
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 690
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior$1;, "Lcom/google/android/material/sidesheet/SideSheetBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$000(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 691
    return v1

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method
