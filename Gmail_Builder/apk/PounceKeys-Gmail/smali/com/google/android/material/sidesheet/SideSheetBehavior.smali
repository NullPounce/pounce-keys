.class public Lcom/google/android/material/sidesheet/SideSheetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SideSheetBehavior.java"

# interfaces
.implements Lcom/google/android/material/sidesheet/Sheet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;,
        Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;",
        "Lcom/google/android/material/sidesheet/Sheet<",
        "Lcom/google/android/material/sidesheet/SideSheetCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCESSIBILITY_PANE_TITLE:I

.field private static final DEF_STYLE_RES:I

.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.5f

.field private static final NO_MAX_SIZE:I = -0x1

.field static final SIGNIFICANT_VEL_THRESHOLD:I = 0x1f4


# instance fields
.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private childWidth:I

.field private coplanarSiblingViewId:I

.field private coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private draggable:Z

.field private elevation:F

.field private hideFriction:F

.field private ignoreEvents:Z

.field private initialX:I

.field private lastStableState:I

.field private materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private maximumVelocity:F

.field private parentWidth:I

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

.field private state:I

.field private final stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "TV;>.StateSettlingTracker;"
        }
    .end annotation
.end field

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Lcom/google/android/material/R$string;->side_sheet_accessibility_pane_title:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEFAULT_ACCESSIBILITY_PANE_TITLE:I

    .line 90
    sget v0, Lcom/google/android/material/R$style;->Widget_Material3_SideSheet:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 119
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 88
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    .line 96
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    .line 98
    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    .line 104
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    .line 685
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 122
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    .line 96
    const/4 v1, 0x5

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    .line 98
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    .line 104
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    .line 111
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    .line 117
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    .line 685
    new-instance v2, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 124
    sget-object v2, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 125
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_backgroundTint:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_backgroundTint:I

    .line 127
    invoke-static {p1, v2, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 130
    :cond_0
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_shapeAppearance:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    sget v3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEF_STYLE_RES:I

    .line 132
    const/4 v4, 0x0

    invoke-static {p1, p2, v4, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 134
    :cond_1
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_coplanarSiblingViewId:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    sget v3, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_coplanarSiblingViewId:I

    .line 136
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 135
    invoke-virtual {p0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setCoplanarSiblingViewId(I)V

    .line 138
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V

    .line 140
    sget v1, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_android_elevation:I

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->elevation:F

    .line 142
    sget v1, Lcom/google/android/material/R$styleable;->SideSheetBehavior_Layout_behavior_draggable:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setDraggable(Z)V

    .line 144
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getDefaultSheetEdge()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setSheetEdge(I)V

    .line 147
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 148
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->maximumVelocity:F

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 63
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 63
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Lcom/google/android/material/sidesheet/SheetDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 63
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dispatchOnSlide(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 63
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 63
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Landroidx/customview/widget/ViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/sidesheet/SideSheetBehavior;

    .line 63
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object v0
.end method

.method private calculateCurrentOffset(ILandroid/view/View;)I
    .locals 3
    .param p1, "savedOutwardEdge"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)I"
        }
    .end annotation

    .line 365
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    packed-switch v0, :pswitch_data_0

    .line 377
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SheetDelegate;->getHiddenOffset()I

    move-result v0

    .line 375
    .local v0, "currentOffset":I
    goto :goto_0

    .line 367
    .end local v0    # "currentOffset":I
    :pswitch_2
    const/4 v0, 0x0

    .line 368
    .restart local v0    # "currentOffset":I
    goto :goto_0

    .line 371
    .end local v0    # "currentOffset":I
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->getOutwardEdge(Landroid/view/View;)I

    move-result v0

    sub-int v0, p1, v0

    .line 372
    .restart local v0    # "currentOffset":I
    nop

    .line 379
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDragDistance(FF)F
    .locals 1
    .param p1, "initialPoint"    # F
    .param p2, "currentPoint"    # F

    .line 465
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method private clearCoplanarSiblingView()V
    .locals 1

    .line 804
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 807
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    .line 808
    return-void
.end method

.method private createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;
    .locals 1
    .param p1, "state"    # I

    .line 955
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    return-object v0
.end method

.method private createMaterialShapeDrawableIfNeeded(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 634
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-nez v0, :cond_0

    .line 635
    return-void

    .line 638
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 639
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 641
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 642
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 645
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 646
    .local v0, "defaultColor":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010031

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 647
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget v2, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 649
    .end local v0    # "defaultColor":Landroid/util/TypedValue;
    :goto_0
    return-void
.end method

.method private dispatchOnSlide(Landroid/view/View;I)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outwardEdge"    # I

    .line 745
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->calculateSlideOffsetBasedOnOutwardEdge(I)F

    move-result v0

    .line 747
    .local v0, "slideOffset":F
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/sidesheet/SheetCallback;

    .line 748
    .local v2, "callback":Lcom/google/android/material/sidesheet/SheetCallback;
    invoke-interface {v2, p1, v0}, Lcom/google/android/material/sidesheet/SheetCallback;->onSlide(Landroid/view/View;F)V

    .line 749
    .end local v2    # "callback":Lcom/google/android/material/sidesheet/SheetCallback;
    goto :goto_0

    .line 751
    .end local v0    # "slideOffset":F
    :cond_0
    return-void
.end method

.method private ensureAccessibilityPaneTitleIsSet(Landroid/view/View;)V
    .locals 2
    .param p1, "sheet"    # Landroid/view/View;

    .line 339
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    nop

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;->DEFAULT_ACCESSIBILITY_PANE_TITLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 343
    :cond_0
    return-void
.end method

.method public static from(Landroid/view/View;)Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "TV;>;"
        }
    .end annotation

    .line 915
    .local p0, "view":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 916
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 919
    move-object v1, v0

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 920
    .local v1, "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    instance-of v2, v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    if-eqz v2, :cond_0

    .line 923
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-object v2

    .line 921
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The view is not associated with SideSheetBehavior"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 917
    .end local v1    # "behavior":Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<*>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The view is not a child of CoordinatorLayout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getChildMeasureSpec(IIII)I
    .locals 5
    .param p1, "parentMeasureSpec"    # I
    .param p2, "padding"    # I
    .param p3, "maxSize"    # I
    .param p4, "childDimension"    # I

    .line 255
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-static {p1, p2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 256
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 257
    return v0

    .line 259
    :cond_0
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 260
    .local v1, "mode":I
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 261
    .local v2, "size":I
    packed-switch v1, :pswitch_data_0

    .line 268
    if-nez v2, :cond_1

    move v3, p3

    goto :goto_0

    .line 263
    :pswitch_0
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    .line 268
    :cond_1
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 267
    :goto_0
    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultSheetEdge()I
    .locals 1

    .line 166
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method private isDraggedFarEnough(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 457
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 458
    return v1

    .line 460
    :cond_0
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->initialX:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->calculateDragDistance(FF)F

    move-result v0

    .line 461
    .local v0, "distanceDragged":F
    iget-object v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isLayingOut(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 573
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 574
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private maybeAssignCoplanarSiblingViewBasedId(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 2
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 346
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 347
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "coplanarSiblingView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 349
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    .line 352
    .end local v0    # "coplanarSiblingView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V
    .locals 2
    .param p2, "action"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            "I)V"
        }
    .end annotation

    .line 949
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    nop

    .line 950
    invoke-direct {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->createAccessibilityViewCommandForState(I)Landroidx/core/view/accessibility/AccessibilityViewCommand;

    move-result-object v0

    .line 949
    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 951
    return-void
.end method

.method private resetVelocity()V
    .locals 1

    .line 617
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 621
    :cond_0
    return-void
.end method

.method private runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 565
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->isLayingOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 568
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 570
    :goto_0
    return-void
.end method

.method private setSheetEdge(I)V
    .locals 3
    .param p1, "sheetEdge"    # I

    .line 152
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SheetDelegate;->getSheetEdge()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    return-void

    .line 154
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 155
    new-instance v0, Lcom/google/android/material/sidesheet/RightSheetDelegate;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    .line 156
    return-void

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sheet edge position value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private shouldHandleDraggingWithHelper()Z
    .locals 2

    .line 630
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private shouldInterceptTouchEvent(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getAccessibilityPaneTitle(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startSettling(Landroid/view/View;IZ)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # I
    .param p3, "isReleasingView"    # Z

    .line 660
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SheetDelegate;->isSettling(Landroid/view/View;IZ)Z

    move-result v0

    .line 661
    .local v0, "settling":Z
    if-eqz v0, :cond_0

    .line 662
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 663
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->stateSettlingTracker:Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;

    invoke-virtual {v1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior$StateSettlingTracker;->continueSettlingToState(I)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 667
    :goto_0
    return-void
.end method

.method private updateAccessibilityActions()V
    .locals 3

    .line 927
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 928
    return-void

    .line 930
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 931
    .local v0, "child":Landroid/view/View;, "TV;"
    if-nez v0, :cond_1

    .line 932
    return-void

    .line 934
    :cond_1
    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 935
    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    .line 937
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 938
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 941
    :cond_2
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 942
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->replaceAccessibilityActionForState(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;I)V

    .line 945
    :cond_3
    return-void
.end method

.method private updateSheetVisibility(Landroid/view/View;)V
    .locals 2
    .param p1, "sheet"    # Landroid/view/View;

    .line 331
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 332
    .local v0, "visibility":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V
    .locals 0

    .line 63
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->addCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V

    return-void
.end method

.method public addCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/material/sidesheet/SideSheetCallback;

    .line 522
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    return-void
.end method

.method public expand()V
    .locals 1

    .line 174
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    .line 175
    return-void
.end method

.method getChildWidth()I
    .locals 1

    .line 355
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->childWidth:I

    return v0
.end method

.method public getCoplanarSiblingView()Landroid/view/View;
    .locals 1

    .line 800
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getExpandedOffset()I
    .locals 1

    .line 473
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SheetDelegate;->getExpandedOffset()I

    move-result v0

    return v0
.end method

.method public getHideFriction()F
    .locals 1

    .line 508
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    return v0
.end method

.method getHideThreshold()F
    .locals 1

    .line 512
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getLastStableState()I
    .locals 1

    .line 829
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    return v0
.end method

.method getOutwardEdgeOffsetForState(I)I
    .locals 3
    .param p1, "state"    # I

    .line 670
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    packed-switch p1, :pswitch_data_0

    .line 676
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state to get outward edge offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SheetDelegate;->getHiddenOffset()I

    move-result v0

    return v0

    .line 672
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getExpandedOffset()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getParentWidth()I
    .locals 1

    .line 359
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    return v0
.end method

.method getSignificantVelocityThreshold()I
    .locals 1

    .line 422
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/16 v0, 0x1f4

    return v0
.end method

.method public getState()I
    .locals 1

    .line 586
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    return v0
.end method

.method getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;
    .locals 1

    .line 682
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object v0
.end method

.method getXVelocity()F
    .locals 3

    .line 652
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 653
    const/4 v0, 0x0

    return v0

    .line 655
    :cond_0
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->maximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 656
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    .line 182
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    .line 183
    return-void
.end method

.method public isDraggable()Z
    .locals 1

    .line 488
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    return v0
.end method

.method synthetic lambda$createAccessibilityViewCommandForState$1$com-google-android-material-sidesheet-SideSheetBehavior(ILandroid/view/View;Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;)Z
    .locals 1
    .param p1, "state"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "arguments"    # Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;

    .line 956
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setState(I)V

    .line 957
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$setState$0$com-google-android-material-sidesheet-SideSheetBehavior(I)V
    .locals 2
    .param p1, "finalState"    # I

    .line 556
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 557
    .local v0, "child":Landroid/view/View;, "TV;"
    if-eqz v0, :cond_0

    .line 558
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling(Landroid/view/View;IZ)V

    .line 560
    :cond_0
    return-void
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "layoutParams"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 205
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 209
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 210
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 1

    .line 214
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDetachedFromLayoutParams()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 217
    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 218
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldInterceptTouchEvent(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 386
    iput-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    .line 387
    return v2

    .line 389
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 391
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->resetVelocity()V

    .line 394
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 395
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 397
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 398
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 402
    :pswitch_1
    iget-boolean v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    if-eqz v3, :cond_3

    .line 403
    iput-boolean v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    .line 404
    return v2

    .line 408
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->initialX:I

    .line 409
    nop

    .line 412
    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v3, :cond_4

    .line 414
    invoke-virtual {v3, p3}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 412
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    .line 282
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 285
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v0, :cond_2

    .line 286
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->materialShapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 289
    iget v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->elevation:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    .line 288
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 291
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 293
    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateSheetVisibility(Landroid/view/View;)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateAccessibilityActions()V

    .line 296
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4

    .line 298
    invoke-static {p2, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 300
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ensureAccessibilityPaneTitleIsSet(Landroid/view/View;)V

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->dragCallback:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->getOutwardEdge(Landroid/view/View;)I

    move-result v0

    .line 308
    .local v0, "savedOutwardEdge":I
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 310
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I

    .line 311
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->childWidth:I

    .line 313
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->calculateCurrentOffset(ILandroid/view/View;)I

    move-result v2

    .line 315
    .local v2, "currentOffset":I
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 317
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->maybeAssignCoplanarSiblingViewBasedId(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 319
    iget-object v3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/sidesheet/SheetCallback;

    .line 320
    .local v4, "callback":Lcom/google/android/material/sidesheet/SheetCallback;
    instance-of v5, v4, Lcom/google/android/material/sidesheet/SideSheetCallback;

    if-eqz v5, :cond_7

    .line 321
    move-object v5, v4

    check-cast v5, Lcom/google/android/material/sidesheet/SideSheetCallback;

    .line 322
    .local v5, "sideSheetCallback":Lcom/google/android/material/sidesheet/SideSheetCallback;
    invoke-virtual {v5, p2}, Lcom/google/android/material/sidesheet/SideSheetCallback;->onLayout(Landroid/view/View;)V

    .line 324
    .end local v4    # "callback":Lcom/google/android/material/sidesheet/SheetCallback;
    .end local v5    # "sideSheetCallback":Lcom/google/android/material/sidesheet/SideSheetCallback;
    :cond_7
    goto :goto_1

    .line 325
    :cond_8
    return v1
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 5
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .line 228
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 229
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 232
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    .line 233
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 230
    const/4 v3, -0x1

    invoke-direct {p0, p3, v1, v3, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v1

    .line 239
    .local v1, "childWidthMeasureSpec":I
    nop

    .line 242
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    .line 243
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p6

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 240
    invoke-direct {p0, p5, v2, v3, v4}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildMeasureSpec(IIII)I

    move-result v2

    .line 249
    .local v2, "childHeightMeasureSpec":I
    invoke-virtual {p2, v1, v2}, Landroid/view/View;->measure(II)V

    .line 250
    const/4 v3, 0x1

    return v3
.end method

.method public onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 194
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    move-object v0, p3

    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    .line 195
    .local v0, "ss":Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 199
    :cond_0
    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;->state:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x5

    :goto_1
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    .line 200
    iput v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    .line 201
    return-void
.end method

.method public onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 2
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;Lcom/google/android/material/sidesheet/SideSheetBehavior;)V

    return-object v0
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 428
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, 0x0

    return v0

    .line 431
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 432
    .local v0, "action":I
    iget v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 433
    return v2

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 439
    :cond_2
    if-nez v0, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->resetVelocity()V

    .line 442
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_4

    .line 443
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    .line 445
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 448
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldHandleDraggingWithHelper()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    if-nez v1, :cond_5

    .line 449
    invoke-direct {p0, p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->isDraggedFarEnough(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 453
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->ignoreEvents:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic removeCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V
    .locals 0

    .line 63
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    check-cast p1, Lcom/google/android/material/sidesheet/SideSheetCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->removeCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/google/android/material/sidesheet/SideSheetCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/material/sidesheet/SideSheetCallback;

    .line 532
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 533
    return-void
.end method

.method public setCoplanarSiblingView(Landroid/view/View;)V
    .locals 2
    .param p1, "coplanarSiblingView"    # Landroid/view/View;

    .line 782
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    .line 783
    if-nez p1, :cond_0

    .line 784
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->clearCoplanarSiblingView()V

    goto :goto_0

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewRef:Ljava/lang/ref/WeakReference;

    .line 788
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 790
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 795
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-void
.end method

.method public setCoplanarSiblingViewId(I)V
    .locals 2
    .param p1, "coplanarSiblingViewId"    # I

    .line 761
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->coplanarSiblingViewId:I

    .line 764
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->clearCoplanarSiblingView()V

    .line 766
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 768
    .local v0, "view":Landroid/view/View;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 772
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .line 484
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z

    .line 485
    return-void
.end method

.method public setHideFriction(F)V
    .locals 0
    .param p1, "hideFriction"    # F

    .line 498
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->hideFriction:F

    .line 499
    return-void
.end method

.method public setState(I)V
    .locals 4
    .param p1, "state"    # I

    .line 542
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 548
    :cond_0
    move v0, p1

    .line 549
    .local v0, "finalState":I
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    .line 554
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;I)V

    .line 553
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->runAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 551
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    .line 562
    :goto_1
    return-void

    .line 543
    .end local v0    # "finalState":I
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 545
    if-ne p1, v0, :cond_4

    const-string v0, "DRAGGING"

    goto :goto_3

    :cond_4
    const-string v0, "SETTLING"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " should not be set externally."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setStateInternal(I)V
    .locals 3
    .param p1, "state"    # I

    .line 590
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    if-ne v0, p1, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I

    .line 594
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 595
    :cond_1
    iput p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->lastStableState:I

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 599
    return-void

    .line 602
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 603
    .local v0, "sheet":Landroid/view/View;
    if-nez v0, :cond_4

    .line 604
    return-void

    .line 607
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateSheetVisibility(Landroid/view/View;)V

    .line 609
    iget-object v1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/sidesheet/SheetCallback;

    .line 610
    .local v2, "callback":Lcom/google/android/material/sidesheet/SheetCallback;
    invoke-interface {v2, v0, p1}, Lcom/google/android/material/sidesheet/SheetCallback;->onStateChanged(Landroid/view/View;I)V

    .line 611
    .end local v2    # "callback":Lcom/google/android/material/sidesheet/SheetCallback;
    goto :goto_0

    .line 613
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->updateAccessibilityActions()V

    .line 614
    return-void
.end method

.method shouldHide(Landroid/view/View;F)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .line 624
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDelegate;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method public shouldSkipSmoothAnimation()Z
    .locals 1

    .line 817
    .local p0, "this":Lcom/google/android/material/sidesheet/SideSheetBehavior;, "Lcom/google/android/material/sidesheet/SideSheetBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method
