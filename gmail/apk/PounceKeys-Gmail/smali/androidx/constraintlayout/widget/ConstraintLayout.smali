.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final MEASURE:Z = false

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.0.1"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

.field private mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mConstraintSetId:I

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field private mMetrics:Landroidx/constraintlayout/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 562
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 493
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 501
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 502
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 503
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 506
    const/16 v1, 0x107

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 508
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 510
    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 521
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 875
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v2, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1487
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1488
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 563
    invoke-direct {p0, v1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 564
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 567
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 493
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 501
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 502
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 503
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 506
    const/16 v1, 0x107

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 508
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 510
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 521
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 875
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1487
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1488
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 568
    invoke-direct {p0, p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 569
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 572
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 493
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 501
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 502
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 503
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 506
    const/16 v1, 0x107

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 508
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 510
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 521
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 875
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1487
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1488
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 573
    invoke-direct {p0, p2, p3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 574
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 578
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 493
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 498
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 501
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 502
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 503
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 505
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 506
    const/16 v1, 0x107

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 508
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 510
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 512
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 515
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 516
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 517
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 518
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 520
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 521
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 875
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1487
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1488
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 579
    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 580
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 481
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 5

    .line 1633
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1634
    .local v0, "widthPadding":I
    const/4 v2, 0x0

    .line 1636
    .local v2, "rtlPadding":I
    nop

    .line 1637
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v3, v1

    .line 1639
    .end local v2    # "rtlPadding":I
    .local v3, "rtlPadding":I
    if-lez v3, :cond_0

    .line 1640
    move v0, v3

    .line 1642
    :cond_0
    return v0
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .line 1449
    if-nez p1, :cond_0

    .line 1450
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1452
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1453
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1454
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1455
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 1456
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 1459
    :cond_1
    if-ne v0, p0, :cond_2

    .line 1460
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v1

    .line 1462
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 878
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 879
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 880
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 881
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 882
    if-eqz p1, :cond_8

    .line 883
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 884
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 885
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 886
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 887
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 888
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    goto :goto_3

    .line 889
    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 890
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_3

    .line 891
    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 892
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_3

    .line 893
    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 894
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_3

    .line 895
    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 896
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_3

    .line 897
    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_5

    .line 898
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 899
    .local v5, "id":I
    if-eqz v5, :cond_6

    .line 901
    :try_start_0
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    goto :goto_2

    .line 902
    :catch_0
    move-exception v6

    .line 903
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    goto :goto_2

    .line 906
    .end local v5    # "id":I
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_6

    .line 907
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 909
    .restart local v5    # "id":I
    :try_start_1
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 910
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 913
    goto :goto_1

    .line 911
    :catch_1
    move-exception v6

    .line 912
    .restart local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 914
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    goto :goto_3

    .line 906
    .end local v5    # "id":I
    :cond_6
    :goto_2
    nop

    .line 885
    .end local v4    # "attr":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 917
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 919
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 920
    return-void
.end method

.method private markHierarchyDirty()V
    .locals 1

    .line 3156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3158
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 3159
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 3160
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3161
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3162
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3163
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3164
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 13

    .line 1109
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v6

    .line 1111
    .local v6, "isInEditMode":Z
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v7

    .line 1114
    .local v7, "count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1115
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1116
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 1117
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_0

    .line 1118
    goto :goto_1

    .line 1120
    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    .line 1114
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz v6, :cond_3

    .line 1127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v7, :cond_3

    .line 1128
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1130
    .local v3, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 1131
    .local v4, "IdAsString":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1132
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1133
    .local v5, "slashIndex":I
    if-eq v5, v1, :cond_2

    .line 1134
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1136
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    invoke-direct {p0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .end local v4    # "IdAsString":Ljava/lang/String;
    .end local v5    # "slashIndex":I
    goto :goto_3

    .line 1137
    :catch_0
    move-exception v4

    .line 1127
    .end local v3    # "view":Landroid/view/View;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1159
    .end local v2    # "i":I
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-eq v2, v1, :cond_5

    .line 1160
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v7, :cond_5

    .line 1161
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1162
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-ne v3, v4, :cond_4

    instance-of v3, v2, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v3, :cond_4

    .line 1163
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1160
    .end local v2    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1168
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v1, :cond_6

    .line 1169
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 1172
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 1174
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1175
    .local v8, "helperCount":I
    if-lez v8, :cond_7

    .line 1176
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v8, :cond_7

    .line 1177
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1178
    .local v2, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1176
    .end local v2    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1183
    .end local v1    # "i":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v7, :cond_9

    .line 1184
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1185
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_8

    .line 1186
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/Placeholder;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1183
    .end local v2    # "child":Landroid/view/View;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1190
    .end local v1    # "i":I
    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1191
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1192
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1193
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v7, :cond_a

    .line 1194
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1195
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 1196
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1193
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1199
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_8
    if-ge v9, v7, :cond_c

    .line 1200
    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1201
    .local v10, "child":Landroid/view/View;
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 1202
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_b

    .line 1203
    goto :goto_9

    .line 1205
    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1206
    .local v12, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 1207
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 1199
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1209
    .end local v9    # "i":I
    :cond_c
    return-void
.end method

.method private updateHierarchy()Z
    .locals 5

    .line 1092
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1094
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1095
    .local v1, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1096
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1097
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1098
    const/4 v1, 0x1

    .line 1099
    goto :goto_1

    .line 1095
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1102
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1103
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    .line 1105
    :cond_2
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 936
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 937
    nop

    .line 940
    return-void
.end method

.method protected applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 22
    .param p1, "isInEditMode"    # Z
    .param p2, "child"    # Landroid/view/View;
    .param p3, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p4, "layoutParams"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 1217
    .local p5, "idToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 1218
    const/4 v11, 0x0

    iput-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1221
    iget-boolean v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    .line 1222
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInPlaceholder(Z)V

    .line 1223
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1225
    :cond_0
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 1227
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v2, :cond_1

    .line 1228
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1229
    .local v2, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->resolveRtl(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V

    .line 1231
    .end local v2    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_1
    iget-boolean v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/4 v13, -0x1

    if-eqz v2, :cond_5

    .line 1232
    move-object v2, v8

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 1233
    .local v2, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 1234
    .local v3, "resolvedGuideBegin":I
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 1235
    .local v4, "resolvedGuideEnd":I
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 1236
    .local v5, "resolvedGuidePercent":F
    nop

    .line 1241
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_2

    .line 1242
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0

    .line 1243
    :cond_2
    if-eq v3, v13, :cond_3

    .line 1244
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 1245
    :cond_3
    if-eq v4, v13, :cond_4

    .line 1246
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 1248
    .end local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    .end local v3    # "resolvedGuideBegin":I
    .end local v4    # "resolvedGuideEnd":I
    .end local v5    # "resolvedGuidePercent":F
    :cond_4
    :goto_0
    goto/16 :goto_e

    .line 1250
    :cond_5
    iget v14, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1251
    .local v14, "resolvedLeftToLeft":I
    iget v15, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1252
    .local v15, "resolvedLeftToRight":I
    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1253
    .local v7, "resolvedRightToLeft":I
    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1254
    .local v6, "resolvedRightToRight":I
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1255
    .local v5, "resolveGoneLeftMargin":I
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1256
    .local v4, "resolveGoneRightMargin":I
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1258
    .local v3, "resolvedHorizontalBias":F
    nop

    .line 1286
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v2, v13, :cond_7

    .line 1287
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1288
    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v2, :cond_6

    .line 1289
    iget v12, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v8, v2, v12, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 1291
    .end local v2    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_6
    move v2, v3

    move/from16 v16, v4

    move/from16 v20, v5

    move v12, v6

    move v11, v7

    goto/16 :goto_9

    .line 1293
    :cond_7
    if-eq v14, v13, :cond_9

    .line 1294
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1295
    .local v11, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_8

    .line 1296
    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v17, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v2

    move-object/from16 v2, p3

    move/from16 v19, v3

    .end local v3    # "resolvedHorizontalBias":F
    .local v19, "resolvedHorizontalBias":F
    move-object/from16 v3, v16

    move/from16 v16, v4

    .end local v4    # "resolveGoneRightMargin":I
    .local v16, "resolveGoneRightMargin":I
    move-object v4, v11

    move/from16 v20, v5

    .end local v5    # "resolveGoneLeftMargin":I
    .local v20, "resolveGoneLeftMargin":I
    move-object/from16 v5, v17

    move v12, v6

    .end local v6    # "resolvedRightToRight":I
    .local v12, "resolvedRightToRight":I
    move/from16 v6, v18

    move/from16 v21, v7

    .end local v7    # "resolvedRightToLeft":I
    .local v21, "resolvedRightToLeft":I
    move/from16 v7, v20

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_1

    .line 1295
    .end local v12    # "resolvedRightToRight":I
    .end local v16    # "resolveGoneRightMargin":I
    .end local v19    # "resolvedHorizontalBias":F
    .end local v20    # "resolveGoneLeftMargin":I
    .end local v21    # "resolvedRightToLeft":I
    .restart local v3    # "resolvedHorizontalBias":F
    .restart local v4    # "resolveGoneRightMargin":I
    .restart local v5    # "resolveGoneLeftMargin":I
    .restart local v6    # "resolvedRightToRight":I
    .restart local v7    # "resolvedRightToLeft":I
    :cond_8
    move/from16 v19, v3

    move/from16 v16, v4

    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    .end local v3    # "resolvedHorizontalBias":F
    .end local v4    # "resolveGoneRightMargin":I
    .end local v5    # "resolveGoneLeftMargin":I
    .end local v6    # "resolvedRightToRight":I
    .end local v7    # "resolvedRightToLeft":I
    .restart local v12    # "resolvedRightToRight":I
    .restart local v16    # "resolveGoneRightMargin":I
    .restart local v19    # "resolvedHorizontalBias":F
    .restart local v20    # "resolveGoneLeftMargin":I
    .restart local v21    # "resolvedRightToLeft":I
    goto :goto_1

    .line 1300
    .end local v11    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "resolvedRightToRight":I
    .end local v16    # "resolveGoneRightMargin":I
    .end local v19    # "resolvedHorizontalBias":F
    .end local v20    # "resolveGoneLeftMargin":I
    .end local v21    # "resolvedRightToLeft":I
    .restart local v3    # "resolvedHorizontalBias":F
    .restart local v4    # "resolveGoneRightMargin":I
    .restart local v5    # "resolveGoneLeftMargin":I
    .restart local v6    # "resolvedRightToRight":I
    .restart local v7    # "resolvedRightToLeft":I
    :cond_9
    move/from16 v19, v3

    move/from16 v16, v4

    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    .end local v3    # "resolvedHorizontalBias":F
    .end local v4    # "resolveGoneRightMargin":I
    .end local v5    # "resolveGoneLeftMargin":I
    .end local v6    # "resolvedRightToRight":I
    .end local v7    # "resolvedRightToLeft":I
    .restart local v12    # "resolvedRightToRight":I
    .restart local v16    # "resolveGoneRightMargin":I
    .restart local v19    # "resolvedHorizontalBias":F
    .restart local v20    # "resolveGoneLeftMargin":I
    .restart local v21    # "resolvedRightToLeft":I
    if-eq v15, v13, :cond_a

    .line 1301
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1302
    .restart local v11    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v11, :cond_b

    .line 1303
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object/from16 v2, p3

    move-object v4, v11

    move/from16 v7, v20

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_2

    .line 1300
    .end local v11    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_a
    :goto_1
    nop

    .line 1310
    :cond_b
    :goto_2
    move/from16 v11, v21

    .end local v21    # "resolvedRightToLeft":I
    .local v11, "resolvedRightToLeft":I
    if-eq v11, v13, :cond_c

    .line 1311
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1312
    .local v18, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_d

    .line 1313
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_3

    .line 1317
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_c
    if-eq v12, v13, :cond_d

    .line 1318
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1319
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_e

    .line 1320
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_4

    .line 1317
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_d
    :goto_3
    nop

    .line 1327
    :cond_e
    :goto_4
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v2, v13, :cond_f

    .line 1328
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1329
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_10

    .line 1330
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_5

    .line 1334
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_f
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v2, v13, :cond_10

    .line 1335
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1336
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_11

    .line 1337
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_6

    .line 1334
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_10
    :goto_5
    nop

    .line 1344
    :cond_11
    :goto_6
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v2, v13, :cond_12

    .line 1345
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1346
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_13

    .line 1347
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_7

    .line 1351
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_12
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v2, v13, :cond_13

    .line 1352
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1353
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_14

    .line 1354
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_8

    .line 1351
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_13
    :goto_7
    nop

    .line 1361
    :cond_14
    :goto_8
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-eq v2, v13, :cond_15

    .line 1362
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1363
    .local v2, "view":Landroid/view/View;
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1364
    .local v3, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v4, :cond_15

    .line 1365
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1366
    .local v4, "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/4 v5, 0x1

    iput-boolean v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1367
    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1368
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1369
    .local v6, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1370
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1371
    .local v7, "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0, v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 1372
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 1373
    iget-object v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 1374
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1375
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1379
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v6    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_15
    const/4 v0, 0x0

    move/from16 v2, v19

    .end local v19    # "resolvedHorizontalBias":F
    .local v2, "resolvedHorizontalBias":F
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_16

    .line 1380
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1382
    :cond_16
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_17

    .line 1383
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1387
    :cond_17
    :goto_9
    if-eqz p1, :cond_19

    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v0, v13, :cond_18

    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v0, v13, :cond_19

    .line 1389
    :cond_18
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v8, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1393
    :cond_19
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v3, -0x2

    if-nez v0, :cond_1c

    .line 1394
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v13, :cond_1b

    .line 1395
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v0, :cond_1a

    .line 1396
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_a

    .line 1398
    :cond_1a
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1400
    :goto_a
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1401
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_b

    .line 1403
    :cond_1b
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1404
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_b

    .line 1407
    :cond_1c
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1408
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1409
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v3, :cond_1d

    .line 1410
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1413
    :cond_1d
    :goto_b
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v0, :cond_20

    .line 1414
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v13, :cond_1f

    .line 1415
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v0, :cond_1e

    .line 1416
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_c

    .line 1418
    :cond_1e
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1420
    :goto_c
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1421
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_d

    .line 1423
    :cond_1f
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1424
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_d

    .line 1427
    :cond_20
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1428
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1429
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v3, :cond_21

    .line 1430
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1434
    :cond_21
    :goto_d
    iget-object v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1435
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1436
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1437
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1438
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1439
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v8, v0, v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1442
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v8, v0, v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 1446
    .end local v2    # "resolvedHorizontalBias":F
    .end local v11    # "resolvedRightToLeft":I
    .end local v12    # "resolvedRightToRight":I
    .end local v14    # "resolvedLeftToLeft":I
    .end local v15    # "resolvedLeftToRight":I
    .end local v16    # "resolveGoneRightMargin":I
    .end local v20    # "resolveGoneLeftMargin":I
    :goto_e
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1847
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1873
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1874
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1875
    .local v1, "helperCount":I
    if-lez v1, :cond_0

    .line 1876
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1877
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1878
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1876
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1882
    .end local v1    # "helperCount":I
    .end local v2    # "i":I
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1884
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1885
    .local v1, "count":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1886
    .local v2, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1887
    .local v3, "ch":F
    const/high16 v4, 0x44870000    # 1080.0f

    .line 1888
    .local v4, "ow":F
    const/high16 v5, 0x44f00000    # 1920.0f

    .line 1889
    .local v5, "oh":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_4

    .line 1890
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1891
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 1892
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    goto/16 :goto_2

    .line 1894
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 1895
    .local v8, "tag":Ljava/lang/Object;
    if-eqz v8, :cond_3

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 1896
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 1897
    .local v9, "coordinates":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1898
    .local v10, "split":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    .line 1899
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1900
    .local v11, "x":I
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1901
    .local v12, "y":I
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1902
    .local v13, "w":I
    const/4 v14, 0x3

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1903
    .local v14, "h":I
    int-to-float v15, v11

    div-float/2addr v15, v4

    mul-float/2addr v15, v2

    float-to-int v11, v15

    .line 1904
    int-to-float v15, v12

    div-float/2addr v15, v5

    mul-float/2addr v15, v3

    float-to-int v12, v15

    .line 1905
    int-to-float v15, v13

    div-float/2addr v15, v4

    mul-float/2addr v15, v2

    float-to-int v13, v15

    .line 1906
    int-to-float v15, v14

    div-float/2addr v15, v5

    mul-float/2addr v15, v3

    float-to-int v14, v15

    .line 1907
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1908
    .local v15, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1909
    int-to-float v0, v11

    move/from16 v22, v1

    .end local v1    # "count":I
    .local v22, "count":I
    int-to-float v1, v12

    move/from16 v23, v2

    .end local v2    # "cw":F
    .local v23, "cw":F
    add-int v2, v11, v13

    int-to-float v2, v2

    move/from16 v24, v3

    .end local v3    # "ch":F
    .local v24, "ch":F
    int-to-float v3, v12

    move-object/from16 v16, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1910
    add-int v0, v11, v13

    int-to-float v0, v0

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1911
    add-int v0, v11, v13

    int-to-float v0, v0

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1912
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1913
    const v0, -0xff0100

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1914
    int-to-float v0, v11

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1915
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    add-int v2, v11, v13

    int-to-float v2, v2

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1898
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_2
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    goto :goto_2

    .line 1895
    .end local v9    # "coordinates":Ljava/lang/String;
    .end local v10    # "split":[Ljava/lang/String;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_3
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 1889
    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "tag":Ljava/lang/Object;
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_1

    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_4
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 1962
    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .end local v4    # "ow":F
    .end local v5    # "oh":F
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroidx/constraintlayout/solver/Metrics;

    .line 1483
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 1484
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V

    .line 1485
    return-void
.end method

.method public forceLayout()V
    .locals 0

    .line 3151
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    .line 3152
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 3153
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 481
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1831
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 481
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1839
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1823
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 552
    if-nez p1, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 553
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 558
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1088
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1078
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1041
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1031
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1815
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 1865
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1472
    if-ne p1, p0, :cond_0

    .line 1473
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1475
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v0
.end method

.method protected isRtl()Z
    .locals 4

    .line 1621
    nop

    .line 1622
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1623
    .local v0, "isRtlSupported":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public loadLayoutDescription(I)V
    .locals 3
    .param p1, "layoutDescription"    # I

    .line 1977
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1979
    :try_start_0
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1980
    :catch_0
    move-exception v1

    .line 1981
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 1982
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    goto :goto_1

    .line 1984
    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 1986
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1738
    move-object v0, p0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1739
    .local v1, "widgetsCount":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 1740
    .local v2, "isInEditMode":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1741
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1742
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1743
    .local v5, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1745
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    if-nez v7, :cond_0

    if-nez v2, :cond_0

    .line 1748
    goto :goto_1

    .line 1750
    :cond_0
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_1

    .line 1751
    goto :goto_1

    .line 1753
    :cond_1
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v7

    .line 1754
    .local v7, "l":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    .line 1755
    .local v8, "t":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    .line 1756
    .local v9, "r":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    add-int/2addr v10, v8

    .line 1762
    .local v10, "b":I
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1763
    instance-of v11, v4, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v11, :cond_2

    .line 1764
    move-object v11, v4

    check-cast v11, Landroidx/constraintlayout/widget/Placeholder;

    .line 1765
    .local v11, "holder":Landroidx/constraintlayout/widget/Placeholder;
    invoke-virtual {v11}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object v12

    .line 1766
    .local v12, "content":Landroid/view/View;
    if-eqz v12, :cond_2

    .line 1767
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1768
    invoke-virtual {v12, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1740
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "l":I
    .end local v8    # "t":I
    .end local v9    # "r":I
    .end local v10    # "b":I
    .end local v11    # "holder":Landroidx/constraintlayout/widget/Placeholder;
    .end local v12    # "content":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1772
    .end local v3    # "i":I
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1773
    .local v3, "helperCount":I
    if-lez v3, :cond_4

    .line 1774
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 1775
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1776
    .local v5, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1774
    .end local v5    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1779
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1585
    const-wide/16 v0, 0x0

    .line 1590
    .local v0, "time":J
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1591
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 1598
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1600
    iget-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v2, :cond_0

    .line 1601
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1602
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1603
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 1607
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 1608
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1609
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v8

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v9

    .line 1608
    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 1618
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 958
    nop

    .line 959
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 961
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 962
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 963
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v1, :cond_0

    .line 964
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 965
    .local v1, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    new-instance v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 966
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 967
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 970
    .end local v1    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_0
    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_1

    .line 971
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 972
    .local v1, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 973
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 974
    .local v3, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput-boolean v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 975
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 976
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    .end local v1    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    .end local v3    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 980
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 981
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 988
    nop

    .line 989
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 991
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 992
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 993
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 994
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 995
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 996
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 2
    .param p1, "id"    # I

    .line 928
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 929
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 947
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 948
    nop

    .line 951
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 3145
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    .line 3146
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3147
    return-void
.end method

.method protected resolveMeasuredDimension(IIIIZZ)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "measuredWidth"    # I
    .param p4, "measuredHeight"    # I
    .param p5, "isWidthMeasuredTooSmall"    # Z
    .param p6, "isHeightMeasuredTooSmall"    # Z

    .line 1549
    const/4 v0, 0x0

    .line 1550
    .local v0, "childState":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 1551
    .local v1, "heightPadding":I
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 1553
    .local v2, "widthPadding":I
    add-int v3, p3, v2

    .line 1554
    .local v3, "androidLayoutWidth":I
    add-int v4, p4, v1

    .line 1556
    .local v4, "androidLayoutHeight":I
    nop

    .line 1557
    invoke-static {v3, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1558
    .local v5, "resolvedWidthSize":I
    shl-int/lit8 v6, v0, 0x10

    invoke-static {v4, p2, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 1560
    .local v6, "resolvedHeightSize":I
    const v7, 0xffffff

    and-int/2addr v5, v7

    .line 1561
    and-int/2addr v6, v7

    .line 1562
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1563
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1564
    const/high16 v7, 0x1000000

    if-eqz p5, :cond_0

    .line 1565
    or-int/2addr v5, v7

    .line 1567
    :cond_0
    if-eqz p6, :cond_1

    .line 1568
    or-int/2addr v6, v7

    .line 1570
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1571
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 1572
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 1573
    .end local v5    # "resolvedWidthSize":I
    .end local v6    # "resolvedHeightSize":I
    nop

    .line 1578
    return-void
.end method

.method protected resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 26
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightMeasureSpec"    # I

    .line 1500
    move-object/from16 v6, p0

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1501
    .local v17, "widthMode":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1502
    .local v0, "widthSize":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1503
    .local v18, "heightMode":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1505
    .local v1, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1506
    .local v19, "paddingY":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 1507
    .local v20, "paddingBottom":I
    add-int v21, v19, v20

    .line 1508
    .local v21, "paddingHeight":I
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v22

    .line 1510
    .local v22, "paddingWidth":I
    iget-object v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v22

    move/from16 v13, v21

    invoke-virtual/range {v7 .. v13}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->captureLayoutInfos(IIIIII)V

    .line 1512
    nop

    .line 1513
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1514
    .local v2, "paddingStart":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1515
    .local v4, "paddingEnd":I
    if-gtz v2, :cond_1

    if-lez v4, :cond_0

    goto :goto_0

    .line 1522
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v23, v3

    .local v3, "paddingX":I
    goto :goto_1

    .line 1516
    .end local v3    # "paddingX":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1517
    move v3, v4

    move/from16 v23, v3

    .restart local v3    # "paddingX":I
    goto :goto_1

    .line 1519
    .end local v3    # "paddingX":I
    :cond_2
    move v3, v2

    move/from16 v23, v3

    .line 1524
    .end local v2    # "paddingStart":I
    .end local v4    # "paddingEnd":I
    .local v23, "paddingX":I
    :goto_1
    nop

    .line 1528
    sub-int v24, v0, v22

    .line 1529
    .end local v0    # "widthSize":I
    .local v24, "widthSize":I
    sub-int v25, v1, v21

    .line 1531
    .end local v1    # "heightSize":I
    .local v25, "heightSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v24

    move/from16 v4, v18

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIII)V

    .line 1532
    iget v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iget v14, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v17

    move/from16 v10, v24

    move/from16 v11, v18

    move/from16 v12, v25

    move/from16 v15, v23

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(IIIIIIIII)J

    .line 1534
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1856
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1857
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 534
    if-nez p1, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 538
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 539
    .local v0, "name":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 540
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 541
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    :cond_1
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 544
    .local v2, "id":I
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "id":I
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 587
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 588
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 589
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 590
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1063
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 1064
    return-void

    .line 1066
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 1067
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1068
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1050
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 1051
    return-void

    .line 1053
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 1054
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1055
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1017
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 1018
    return-void

    .line 1020
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 1021
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1022
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1004
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 1005
    return-void

    .line 1007
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 1008
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1009
    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 1
    .param p1, "constraintsChangedListener"    # Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 1965
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 1966
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V

    .line 1969
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1804
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 1805
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1806
    return-void
.end method

.method protected setSelfDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIII)V
    .locals 9
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "widthMode"    # I
    .param p3, "widthSize"    # I
    .param p4, "heightMode"    # I
    .param p5, "heightSize"    # I

    .line 1647
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 1648
    .local v0, "heightPadding":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 1650
    .local v1, "widthPadding":I
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1651
    .local v2, "widthBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1653
    .local v3, "heightBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v4, 0x0

    .line 1654
    .local v4, "desiredWidth":I
    const/4 v5, 0x0

    .line 1655
    .local v5, "desiredHeight":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v6

    .line 1657
    .local v6, "childCount":I
    const/4 v7, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1674
    :sswitch_0
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v8, v1

    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 1667
    :sswitch_1
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1668
    if-nez v6, :cond_0

    .line 1669
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 1659
    :sswitch_2
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1660
    move v4, p3

    .line 1661
    if-nez v6, :cond_0

    .line 1662
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1677
    :cond_0
    :goto_0
    sparse-switch p4, :sswitch_data_1

    goto :goto_1

    .line 1694
    :sswitch_3
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v8, v0

    invoke-static {v8, p5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 1687
    :sswitch_4
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1688
    if-nez v6, :cond_1

    .line 1689
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 1679
    :sswitch_5
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1680
    move v5, p5

    .line 1681
    if-nez v6, :cond_1

    .line 1682
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1698
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    if-ne v4, v8, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    if-eq v5, v8, :cond_3

    .line 1699
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateMeasures()V

    .line 1701
    :cond_3
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1702
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1703
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v8, v1

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1704
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v8, v0

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1705
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1706
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1707
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1708
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1709
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1710
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1711
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    sub-int/2addr v7, v1

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1712
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    sub-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1713
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setState(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1724
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1725
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    .line 1727
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 3173
    const/4 v0, 0x0

    return v0
.end method
