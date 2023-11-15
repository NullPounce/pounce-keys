.class final Lcom/google/android/material/sidesheet/RightSheetDelegate;
.super Lcom/google/android/material/sidesheet/SheetDelegate;
.source "RightSheetDelegate.java"


# instance fields
.field final sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "sheetBehavior":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<+Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDelegate;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 40
    return-void
.end method

.method private isReleasedCloseToOriginEdge(Landroid/view/View;)Z
    .locals 3
    .param p1, "releasedChild"    # Landroid/view/View;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSwipeSignificant(FF)Z
    .locals 1
    .param p1, "xVelocity"    # F
    .param p2, "yVelocity"    # F

    .line 102
    invoke-static {p1, p2}, Lcom/google/android/material/sidesheet/SheetUtils;->isSwipeMostlyHorizontal(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getSignificantVelocityThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0
.end method


# virtual methods
.method calculateSlideOffsetBasedOnOutwardEdge(I)F
    .locals 3
    .param p1, "left"    # I

    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    move-result v0

    int-to-float v0, v0

    .line 130
    .local v0, "hiddenOffset":F
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 132
    .local v1, "sheetWidth":F
    int-to-float v2, p1

    sub-float v2, v0, v2

    div-float/2addr v2, v1

    return v2
.end method

.method calculateTargetStateOnViewReleased(Landroid/view/View;FF)I
    .locals 3
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xVelocity"    # F
    .param p3, "yVelocity"    # F

    .line 75
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    .line 76
    const/4 v0, 0x3

    .local v0, "targetState":I
    goto :goto_3

    .line 78
    .end local v0    # "targetState":I
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->isSwipeSignificant(FF)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->isReleasedCloseToOriginEdge(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x3

    .restart local v0    # "targetState":I
    goto :goto_3

    .line 82
    .end local v0    # "targetState":I
    :cond_2
    :goto_0
    const/4 v0, 0x5

    .restart local v0    # "targetState":I
    goto :goto_3

    .line 86
    .end local v0    # "targetState":I
    :cond_3
    cmpl-float v0, p2, v0

    if-eqz v0, :cond_5

    invoke-static {p2, p3}, Lcom/google/android/material/sidesheet/SheetUtils;->isSwipeMostlyHorizontal(FF)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 96
    :cond_4
    const/4 v0, 0x5

    .restart local v0    # "targetState":I
    goto :goto_3

    .line 89
    .end local v0    # "targetState":I
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 90
    .local v0, "currentLeft":I
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 91
    const/4 v1, 0x3

    move v0, v1

    .local v1, "targetState":I
    goto :goto_2

    .line 93
    .end local v1    # "targetState":I
    :cond_6
    const/4 v1, 0x5

    move v0, v1

    .line 95
    .local v0, "targetState":I
    :goto_2
    nop

    .line 98
    :goto_3
    return v0
.end method

.method getExpandedOffset()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getHiddenOffset()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    move-result v0

    return v0
.end method

.method getOutwardEdge(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)I"
        }
    .end annotation

    .line 124
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method getSheetEdge()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method isSettling(Landroid/view/View;IZ)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "isReleasingView"    # Z

    .line 114
    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getOutwardEdgeOffsetForState(I)I

    move-result v0

    .line 115
    .local v0, "left":I
    iget-object v1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;

    move-result-object v1

    .line 116
    .local v1, "viewDragHelper":Landroidx/customview/widget/ViewDragHelper;
    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 116
    :goto_1
    return v2
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideFriction()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 109
    .local v0, "newRight":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideThreshold()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 2
    .param p1, "coplanarSiblingLayoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "sheetLeft"    # I
    .param p3, "sheetRight"    # I

    .line 138
    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    move-result v0

    .line 142
    .local v0, "parentWidth":I
    if-gt p2, v0, :cond_0

    .line 143
    sub-int v1, v0, p2

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 145
    :cond_0
    return-void
.end method
