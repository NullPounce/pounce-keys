.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "MotionController.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

.field private mAttributeInterpCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mPathMotionArc:I

.field private mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 72
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 73
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 75
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 76
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 80
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    .line 89
    const/4 v0, 0x4

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->MAX_DIMENSION:I

    .line 90
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 99
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 106
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .locals 9
    .param p1, "position"    # F
    .param p2, "velocity"    # [F

    .line 876
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 877
    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, v0

    goto :goto_0

    .line 878
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 879
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    .line 880
    const/4 p1, 0x0

    .line 882
    :cond_1
    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    float-to-double v6, p1

    cmpg-double v3, v6, v4

    if-gez v3, :cond_2

    .line 883
    sub-float/2addr p1, v2

    .line 884
    mul-float/2addr p1, v1

    .line 889
    :cond_2
    :goto_0
    move v1, p1

    .line 890
    .local v1, "adjusted":F
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 891
    .local v2, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    const/4 v3, 0x0

    .line 892
    .local v3, "start":F
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 893
    .local v4, "end":F
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 894
    .local v6, "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v7, :cond_4

    .line 895
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v7, v7, p1

    if-gez v7, :cond_3

    .line 896
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 897
    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    goto :goto_2

    .line 899
    :cond_3
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 900
    iget v4, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 904
    .end local v6    # "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :cond_4
    :goto_2
    goto :goto_1

    .line 906
    :cond_5
    if-eqz v2, :cond_7

    .line 907
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 908
    const/high16 v4, 0x3f800000    # 1.0f

    .line 910
    :cond_6
    sub-float v5, p1, v3

    sub-float v6, v4, v3

    div-float/2addr v5, v6

    .line 911
    .local v5, "offset":F
    float-to-double v6, v5

    invoke-virtual {v2, v6, v7}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 912
    .local v6, "new_offset":F
    sub-float v7, v4, v3

    mul-float/2addr v7, v6

    add-float v1, v7, v3

    .line 913
    if-eqz p2, :cond_7

    .line 914
    float-to-double v7, v5

    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/motion/utils/Easing;->getDiff(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, p2, v0

    .line 917
    .end local v5    # "offset":F
    .end local v6    # "new_offset":F
    :cond_7
    return v1
.end method

.method private getPreCycleDistance()F
    .locals 22

    .line 267
    move-object/from16 v0, p0

    const/16 v1, 0x64

    .line 268
    .local v1, "pointCount":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 269
    .local v2, "points":[F
    const/4 v3, 0x0

    .line 270
    .local v3, "sum":F
    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    .line 271
    .local v5, "mils":F
    const-wide/16 v6, 0x0

    .local v6, "x":D
    const-wide/16 v8, 0x0

    .line 272
    .local v8, "y":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_6

    .line 273
    int-to-float v10, v4

    mul-float/2addr v10, v5

    .line 275
    .local v10, "position":F
    float-to-double v11, v10

    .line 277
    .local v11, "p":D
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 278
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    const/4 v14, 0x0

    .line 279
    .local v14, "start":F
    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 280
    .local v15, "end":F
    move/from16 v16, v1

    .end local v1    # "pointCount":I
    .local v16, "pointCount":I
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 281
    .local v1, "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move/from16 v17, v5

    .end local v5    # "mils":F
    .local v17, "mils":F
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v5, :cond_1

    .line 282
    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_0

    .line 283
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 284
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v5, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    iget v13, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v14, v13

    move-object v13, v5

    .end local v14    # "start":F
    .local v13, "start":F
    goto :goto_2

    .line 286
    .end local v5    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v14    # "start":F
    :cond_0
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    iget v5, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v15, v5

    .line 291
    .end local v1    # "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :cond_1
    :goto_2
    move/from16 v5, v17

    move-object/from16 v1, v18

    goto :goto_1

    .line 293
    .end local v17    # "mils":F
    .local v5, "mils":F
    :cond_2
    move/from16 v17, v5

    .end local v5    # "mils":F
    .restart local v17    # "mils":F
    if-eqz v13, :cond_4

    .line 294
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 295
    const/high16 v1, 0x3f800000    # 1.0f

    move v15, v1

    .line 297
    :cond_3
    sub-float v1, v10, v14

    sub-float v5, v15, v14

    div-float/2addr v1, v5

    .line 298
    .local v1, "offset":F
    move v5, v10

    move-wide/from16 v18, v11

    .end local v10    # "position":F
    .end local v11    # "p":D
    .local v5, "position":F
    .local v18, "p":D
    float-to-double v10, v1

    invoke-virtual {v13, v10, v11}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 299
    sub-float v10, v15, v14

    mul-float/2addr v10, v1

    add-float/2addr v10, v14

    float-to-double v11, v10

    .end local v18    # "p":D
    .restart local v11    # "p":D
    goto :goto_3

    .line 293
    .end local v1    # "offset":F
    .end local v5    # "position":F
    .restart local v10    # "position":F
    :cond_4
    move v5, v10

    move-wide/from16 v18, v11

    .line 303
    .end local v10    # "position":F
    .restart local v5    # "position":F
    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v10, 0x0

    aget-object v1, v1, v10

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v11, v12, v10}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 304
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    move/from16 v19, v5

    .end local v5    # "position":F
    .local v19, "position":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    const/4 v0, 0x0

    invoke-virtual {v1, v10, v5, v2, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 305
    const/4 v1, 0x1

    if-lez v4, :cond_5

    .line 306
    move-wide/from16 v20, v11

    .end local v11    # "p":D
    .local v20, "p":D
    float-to-double v10, v3

    aget v5, v2, v1

    move-object/from16 v18, v13

    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v18, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    float-to-double v12, v5

    sub-double v12, v8, v12

    aget v5, v2, v0

    float-to-double v0, v5

    sub-double v0, v6, v0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    add-double/2addr v10, v0

    double-to-float v0, v10

    move v3, v0

    .end local v3    # "sum":F
    .local v0, "sum":F
    goto :goto_4

    .line 305
    .end local v0    # "sum":F
    .end local v18    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .end local v20    # "p":D
    .restart local v3    # "sum":F
    .restart local v11    # "p":D
    .restart local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    :cond_5
    move-wide/from16 v20, v11

    move-object/from16 v18, v13

    .line 308
    .end local v11    # "p":D
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v18    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v20    # "p":D
    :goto_4
    const/4 v0, 0x0

    aget v0, v2, v0

    float-to-double v6, v0

    .line 309
    const/4 v0, 0x1

    aget v0, v2, v0

    float-to-double v8, v0

    .line 272
    .end local v14    # "start":F
    .end local v15    # "end":F
    .end local v18    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .end local v19    # "position":F
    .end local v20    # "p":D
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v5, v17

    goto/16 :goto_0

    .line 311
    .end local v4    # "i":I
    .end local v16    # "pointCount":I
    .end local v17    # "mils":F
    .local v1, "pointCount":I
    .local v5, "mils":F
    :cond_6
    return v3
.end method

.method private insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3
    .param p1, "point"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 445
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KeyPath positon \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" outside of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 449
    return-void
.end method

.method private readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 4
    .param p1, "motionPaths"    # Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 826
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 827
    return-void
.end method


# virtual methods
.method addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .locals 1
    .param p1, "key"    # Landroidx/constraintlayout/motion/widget/Key;

    .line 461
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    .line 452
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/Key;>;"
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 458
    return-void
.end method

.method buildBounds([FI)V
    .locals 17
    .param p1, "bounds"    # [F
    .param p2, "pointCount"    # I

    .line 211
    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 212
    .local v2, "mils":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v5, "translationX"

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 213
    .local v4, "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v8, "translationY"

    if-nez v7, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 214
    .local v7, "trans_y":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_1
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v9, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 215
    .local v5, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_2
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 217
    .local v6, "osc_y":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    if-ge v8, v1, :cond_c

    .line 218
    int-to-float v9, v8

    mul-float/2addr v9, v2

    .line 219
    .local v9, "position":F
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    cmpl-float v11, v10, v3

    if-eqz v11, :cond_5

    .line 220
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v12, v9, v11

    if-gez v12, :cond_4

    .line 221
    const/4 v9, 0x0

    .line 223
    :cond_4
    cmpl-float v12, v9, v11

    if-lez v12, :cond_5

    float-to-double v12, v9

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    .line 224
    sub-float/2addr v9, v11

    .line 225
    mul-float/2addr v9, v10

    .line 228
    :cond_5
    float-to-double v10, v9

    .line 230
    .local v10, "p":D
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 231
    .local v12, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    const/4 v13, 0x0

    .line 232
    .local v13, "start":F
    const/high16 v14, 0x7fc00000    # Float.NaN

    .line 233
    .local v14, "end":F
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 234
    .local v3, "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v1, :cond_7

    .line 235
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_6

    .line 236
    iget-object v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 237
    .end local v12    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v1, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    iget v12, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v13, v12

    move-object v12, v1

    .end local v13    # "start":F
    .local v12, "start":F
    goto :goto_6

    .line 239
    .end local v1    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v12, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v13    # "start":F
    :cond_6
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 240
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v14, v1

    .line 244
    .end local v3    # "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :cond_7
    :goto_6
    move/from16 v1, p2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_5

    .line 246
    :cond_8
    if-eqz v12, :cond_a

    .line 247
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 248
    const/high16 v14, 0x3f800000    # 1.0f

    .line 250
    :cond_9
    sub-float v1, v9, v13

    sub-float v3, v14, v13

    div-float/2addr v1, v3

    .line 251
    .local v1, "offset":F
    move v15, v2

    .end local v2    # "mils":F
    .local v15, "mils":F
    float-to-double v2, v1

    invoke-virtual {v12, v2, v3}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 252
    sub-float v2, v14, v13

    mul-float/2addr v2, v1

    add-float/2addr v2, v13

    float-to-double v10, v2

    goto :goto_7

    .line 246
    .end local v1    # "offset":F
    .end local v15    # "mils":F
    .restart local v2    # "mils":F
    :cond_a
    move v15, v2

    .line 256
    .end local v2    # "mils":F
    .restart local v15    # "mils":F
    :goto_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 257
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_b

    .line 258
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_b

    .line 259
    invoke-virtual {v1, v10, v11, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 262
    :cond_b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v0, v8, 0x2

    move-object/from16 v16, v4

    move-object/from16 v4, p1

    .end local v4    # "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    .local v16, "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    invoke-virtual {v1, v2, v3, v4, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    .line 217
    .end local v9    # "position":F
    .end local v10    # "p":D
    .end local v12    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .end local v13    # "start":F
    .end local v14    # "end":F
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v15

    move-object/from16 v4, v16

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 264
    .end local v8    # "i":I
    .end local v15    # "mils":F
    .end local v16    # "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    .restart local v2    # "mils":F
    .restart local v4    # "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    :cond_c
    return-void
.end method

.method buildKeyBounds([F[I)I
    .locals 8
    .param p1, "keyBounds"    # [F
    .param p2, "mode"    # [I

    .line 357
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    .line 360
    .local v2, "time":[D
    if-eqz p2, :cond_1

    .line 361
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 362
    .local v4, "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    aput v6, p2, v1

    .line 363
    .end local v4    # "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move v1, v5

    goto :goto_0

    .line 364
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_0
    const/4 v1, 0x0

    .line 367
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 368
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v4, v4, v0

    aget-wide v5, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 369
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    .line 370
    add-int/lit8 v1, v1, 0x2

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 372
    .end local v3    # "i":I
    :cond_2
    div-int/lit8 v0, v1, 0x2

    return v0

    .line 374
    .end local v1    # "count":I
    .end local v2    # "time":[D
    :cond_3
    return v0
.end method

.method buildKeyFrames([F[I)I
    .locals 8
    .param p1, "keyFrames"    # [F
    .param p2, "mode"    # [I

    .line 336
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v2

    .line 339
    .local v2, "time":[D
    if-eqz p2, :cond_1

    .line 340
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 341
    .local v4, "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    iget v6, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    aput v6, p2, v1

    .line 342
    .end local v4    # "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move v1, v5

    goto :goto_0

    .line 343
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_0
    const/4 v1, 0x0

    .line 346
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 347
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v4, v4, v0

    aget-wide v5, v2, v3

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 348
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 349
    add-int/lit8 v1, v1, 0x2

    .line 346
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 351
    .end local v3    # "i":I
    :cond_2
    div-int/lit8 v0, v1, 0x2

    return v0

    .line 353
    .end local v1    # "count":I
    .end local v2    # "time":[D
    :cond_3
    return v0
.end method

.method buildPath([FI)V
    .locals 18
    .param p1, "points"    # [F
    .param p2, "pointCount"    # I

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 136
    .local v3, "mils":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v6, "translationX"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 137
    .local v5, "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v9, "translationY"

    if-nez v8, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 138
    .local v8, "trans_y":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_1
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v10, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 139
    .local v6, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_2
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 141
    .local v7, "osc_y":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v2, :cond_10

    .line 142
    int-to-float v10, v9

    mul-float/2addr v10, v3

    .line 143
    .local v10, "position":F
    iget v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    cmpl-float v12, v11, v4

    if-eqz v12, :cond_5

    .line 144
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v13, v10, v12

    if-gez v13, :cond_4

    .line 145
    const/4 v10, 0x0

    .line 147
    :cond_4
    cmpl-float v13, v10, v12

    if-lez v13, :cond_5

    float-to-double v13, v10

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v13, v13, v15

    if-gez v13, :cond_5

    .line 148
    sub-float/2addr v10, v12

    .line 149
    mul-float/2addr v10, v11

    .line 152
    :cond_5
    float-to-double v11, v10

    .line 154
    .local v11, "p":D
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 155
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    const/4 v14, 0x0

    .line 156
    .local v14, "start":F
    const/high16 v15, 0x7fc00000    # Float.NaN

    .line 157
    .local v15, "end":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 158
    .local v2, "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move/from16 v17, v3

    .end local v3    # "mils":F
    .local v17, "mils":F
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v3, :cond_7

    .line 159
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v3, v3, v10

    if-gez v3, :cond_6

    .line 160
    iget-object v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 161
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v3, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v14, v13

    move-object v13, v3

    .end local v14    # "start":F
    .local v13, "start":F
    goto :goto_6

    .line 163
    .end local v3    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .local v13, "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .restart local v14    # "start":F
    :cond_6
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 164
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v15, v3

    .line 168
    .end local v2    # "frame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    :cond_7
    :goto_6
    move/from16 v2, p2

    move/from16 v3, v17

    goto :goto_5

    .line 170
    .end local v17    # "mils":F
    .local v3, "mils":F
    :cond_8
    move/from16 v17, v3

    .end local v3    # "mils":F
    .restart local v17    # "mils":F
    if-eqz v13, :cond_a

    .line 171
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    const/high16 v15, 0x3f800000    # 1.0f

    .line 174
    :cond_9
    sub-float v2, v10, v14

    sub-float v3, v15, v14

    div-float/2addr v2, v3

    .line 175
    .local v2, "offset":F
    float-to-double v3, v2

    invoke-virtual {v13, v3, v4}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v3

    double-to-float v2, v3

    .line 176
    sub-float v3, v15, v14

    mul-float/2addr v3, v2

    add-float/2addr v3, v14

    float-to-double v11, v3

    .line 180
    .end local v2    # "offset":F
    :cond_a
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v11, v12, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 181
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v2, :cond_b

    .line 182
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v4, v3

    if-lez v4, :cond_b

    .line 183
    invoke-virtual {v2, v11, v12, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 186
    :cond_b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v0, v9, 0x2

    invoke-virtual {v2, v3, v4, v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 188
    if-eqz v6, :cond_c

    .line 189
    mul-int/lit8 v0, v9, 0x2

    aget v2, v1, v0

    invoke-virtual {v6, v10}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    goto :goto_7

    .line 190
    :cond_c
    if-eqz v5, :cond_d

    .line 191
    mul-int/lit8 v0, v9, 0x2

    aget v2, v1, v0

    invoke-virtual {v5, v10}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 193
    :cond_d
    :goto_7
    if-eqz v7, :cond_e

    .line 194
    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v2, v1, v0

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    goto :goto_8

    .line 195
    :cond_e
    if-eqz v8, :cond_f

    .line 196
    mul-int/lit8 v0, v9, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v2, v1, v0

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 141
    .end local v10    # "position":F
    .end local v11    # "p":D
    .end local v13    # "easing":Landroidx/constraintlayout/motion/utils/Easing;
    .end local v14    # "start":F
    .end local v15    # "end":F
    :cond_f
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, v17

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_4

    .line 199
    .end local v9    # "i":I
    .end local v17    # "mils":F
    .restart local v3    # "mils":F
    :cond_10
    return-void
.end method

.method buildRect(F[FI)V
    .locals 4
    .param p1, "p"    # F
    .param p2, "path"    # [F
    .param p3, "offset"    # I

    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result p1

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 394
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    .line 395
    return-void
.end method

.method buildRectangles([FI)V
    .locals 7
    .param p1, "path"    # [F
    .param p2, "pointCount"    # I

    .line 398
    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 399
    .local v1, "mils":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 400
    int-to-float v2, v0

    mul-float/2addr v2, v1

    .line 401
    .local v2, "position":F
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v2

    .line 402
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    float-to-double v4, v2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 403
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v6, v0, 0x8

    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    .line 399
    .end local v2    # "position":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .locals 4
    .param p1, "attributeType"    # Ljava/lang/String;
    .param p2, "points"    # [F
    .param p3, "pointCount"    # I

    .line 380
    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 381
    .local v1, "mils":F
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 382
    .local v0, "spline":Landroidx/constraintlayout/motion/widget/SplineSet;
    if-nez v0, :cond_0

    .line 383
    const/4 v2, -0x1

    return v2

    .line 385
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 386
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    div-int v3, v2, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v3

    aput v3, p2, v2

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v2    # "j":I
    :cond_1
    array-length v2, p2

    return v2
.end method

.method getDpDt(FFF[F)V
    .locals 12
    .param p1, "position"    # F
    .param p2, "locationX"    # F
    .param p3, "locationY"    # F
    .param p4, "mAnchorDpDt"    # [F

    .line 1054
    move-object v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move v2, p1

    invoke-direct {p0, p1, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    .line 1056
    .end local p1    # "position":F
    .local v8, "position":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1057
    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1058
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1059
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget v9, v1, v2

    .line 1060
    .local v9, "v":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v2, v6

    if-ge v1, v2, :cond_0

    .line 1061
    aget-wide v2, v6, v1

    float-to-double v4, v9

    mul-double/2addr v2, v4

    aput-wide v2, v6, v1

    .line 1060
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1064
    .end local v1    # "i":I
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_2

    .line 1065
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_1

    .line 1066
    float-to-double v3, v8

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1067
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v2, v8

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1068
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 1070
    :cond_1
    return-void

    .line 1072
    :cond_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 1073
    return-void

    .line 1076
    .end local v9    # "v":F
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v1, v3

    .line 1077
    .local v1, "dleft":F
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v3, v4

    .line 1078
    .local v3, "dTop":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v4, v5

    .line 1079
    .local v4, "dWidth":F
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v5, v6

    .line 1080
    .local v5, "dHeight":F
    add-float v6, v1, v4

    .line 1081
    .local v6, "dRight":F
    add-float v7, v3, v5

    .line 1082
    .local v7, "dBottom":F
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, p2

    mul-float/2addr v10, v1

    mul-float v11, v6, p2

    add-float/2addr v10, v11

    aput v10, p4, v2

    .line 1083
    sub-float/2addr v9, p3

    mul-float/2addr v9, v3

    mul-float v2, v7, p3

    add-float/2addr v9, v2

    const/4 v2, 0x1

    aput v9, p4, v2

    .line 1084
    return-void
.end method

.method public getDrawPath()I
    .locals 4

    .line 1167
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 1168
    .local v0, "mode":I
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 1169
    .local v2, "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    iget v3, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1170
    .end local v2    # "keyFrame":Landroidx/constraintlayout/motion/widget/MotionPaths;
    goto :goto_0

    .line 1171
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1172
    return v0
.end method

.method getFinalX()F
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method getFinalY()F
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .locals 1
    .param p1, "i"    # I

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    return-object v0
.end method

.method public getKeyFrameInfo(I[I)I
    .locals 13
    .param p1, "type"    # I
    .param p2, "info"    # [I

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1237
    .local v1, "cursor":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1239
    .local v2, "pos":[F
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    .line 1240
    .local v4, "key":Landroidx/constraintlayout/motion/widget/Key;
    iget v5, v4, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    if-eq v5, p1, :cond_0

    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 1241
    goto :goto_0

    .line 1243
    :cond_0
    move v5, v1

    .line 1244
    .local v5, "len":I
    const/4 v6, 0x0

    aput v6, p2, v1

    .line 1246
    add-int/lit8 v1, v1, 0x1

    iget v7, v4, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    aput v7, p2, v1

    .line 1247
    const/4 v7, 0x1

    add-int/2addr v1, v7

    iget v8, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    aput v8, p2, v1

    .line 1249
    iget v8, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    .line 1250
    .local v8, "time":F
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v9, v9, v6

    float-to-double v10, v8

    iget-object v12, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v9, v10, v11, v12}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1251
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v11, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v9, v10, v11, v2, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 1252
    add-int/2addr v1, v7

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    aput v6, p2, v1

    .line 1253
    add-int/2addr v1, v7

    aget v6, v2, v7

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    aput v6, p2, v1

    .line 1254
    instance-of v6, v4, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v6, :cond_1

    .line 1255
    move-object v6, v4

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 1256
    .local v6, "kp":Landroidx/constraintlayout/motion/widget/KeyPosition;
    add-int/lit8 v1, v1, 0x1

    iget v9, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    aput v9, p2, v1

    .line 1258
    add-int/2addr v1, v7

    iget v9, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    aput v9, p2, v1

    .line 1259
    add-int/2addr v1, v7

    iget v9, v6, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    aput v9, p2, v1

    .line 1261
    .end local v6    # "kp":Landroidx/constraintlayout/motion/widget/KeyPosition;
    :cond_1
    add-int/2addr v1, v7

    .line 1262
    sub-int v6, v1, v5

    aput v6, p2, v5

    .line 1263
    nop

    .end local v4    # "key":Landroidx/constraintlayout/motion/widget/Key;
    .end local v8    # "time":F
    add-int/lit8 v0, v0, 0x1

    .line 1264
    goto :goto_0

    .line 1266
    .end local v5    # "len":I
    :cond_2
    return v0
.end method

.method getKeyFrameParameter(IFF)F
    .locals 12
    .param p1, "type"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v0, v1

    .line 410
    .local v0, "dx":F
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v1, v2

    .line 411
    .local v1, "dy":F
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 412
    .local v2, "startCenterX":F
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    .line 413
    .local v3, "startCenterY":F
    float-to-double v4, v0

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 414
    .local v4, "hypot":F
    float-to-double v5, v4

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 415
    const/high16 v5, 0x7fc00000    # Float.NaN

    return v5

    .line 418
    :cond_0
    sub-float v5, p2, v2

    .line 419
    .local v5, "vx":F
    sub-float v6, p3, v3

    .line 420
    .local v6, "vy":F
    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 421
    .local v7, "distFromStart":F
    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-nez v9, :cond_1

    .line 422
    return v8

    .line 424
    :cond_1
    mul-float v9, v5, v0

    mul-float v10, v6, v1

    add-float/2addr v9, v10

    .line 426
    .local v9, "pathDistance":F
    packed-switch p1, :pswitch_data_0

    .line 440
    return v8

    .line 438
    :pswitch_0
    div-float v8, v6, v1

    return v8

    .line 436
    :pswitch_1
    div-float v8, v5, v1

    return v8

    .line 434
    :pswitch_2
    div-float v8, v6, v0

    return v8

    .line 432
    :pswitch_3
    div-float v8, v5, v0

    return v8

    .line 430
    :pswitch_4
    mul-float v8, v4, v4

    mul-float v10, v9, v9

    sub-float/2addr v8, v10

    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    return v8

    .line 428
    :pswitch_5
    div-float v8, v9, v4

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .locals 11
    .param p1, "layoutWidth"    # I
    .param p2, "layoutHeight"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 315
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 316
    .local v0, "start":Landroid/graphics/RectF;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 317
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 318
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 319
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 320
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object v8, v1

    .line 321
    .local v8, "end":Landroid/graphics/RectF;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v1, v8, Landroid/graphics/RectF;->left:F

    .line 322
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v1, v8, Landroid/graphics/RectF;->top:F

    .line 323
    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v1, v2

    iput v1, v8, Landroid/graphics/RectF;->right:F

    .line 324
    iget v1, v8, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v1, v2

    iput v1, v8, Landroid/graphics/RectF;->bottom:F

    .line 325
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/motion/widget/Key;

    .line 326
    .local v10, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v1, v10, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    if-eqz v1, :cond_0

    .line 327
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    move v2, p1

    move v3, p2

    move-object v4, v0

    move-object v5, v8

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    return-object v1

    .line 331
    .end local v10    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_0
    goto :goto_0

    .line 332
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .locals 25
    .param p1, "position"    # F
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "locationX"    # F
    .param p5, "locationY"    # F
    .param p6, "mAnchorDpDt"    # [F

    .line 1101
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    .line 1103
    .end local p1    # "position":F
    .local v8, "position":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v2, "translationX"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_0
    move-object v9, v1

    .line 1104
    .local v9, "trans_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v4, "translationY"

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_1
    move-object v10, v1

    .line 1105
    .local v10, "trans_y":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v5, "rotation"

    if-nez v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_2
    move-object v11, v1

    .line 1106
    .local v11, "rotation":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v6, "scaleX"

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_3
    move-object v12, v1

    .line 1107
    .local v12, "scale_x":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v7, "scaleY"

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    :goto_4
    move-object v13, v1

    .line 1109
    .local v13, "scale_y":Landroidx/constraintlayout/motion/widget/SplineSet;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_5

    move-object v1, v3

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_5
    move-object v14, v1

    .line 1110
    .local v14, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_6

    move-object v1, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_6
    move-object v15, v1

    .line 1111
    .local v15, "osc_y":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_7

    move-object v1, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_7
    move-object v5, v1

    .line 1112
    .local v5, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_8

    move-object v1, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_8
    move-object v6, v1

    .line 1113
    .local v6, "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v1, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_9
    move-object v7, v3

    .line 1115
    .local v7, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    new-instance v1, Landroidx/constraintlayout/motion/utils/VelocityMatrix;

    invoke-direct {v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;-><init>()V

    move-object v4, v1

    .line 1116
    .local v4, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->clear()V

    .line 1117
    invoke-virtual {v4, v11, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1118
    invoke-virtual {v4, v9, v10, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1119
    invoke-virtual {v4, v12, v13, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1120
    invoke-virtual {v4, v5, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1121
    invoke-virtual {v4, v14, v15, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1122
    invoke-virtual {v4, v6, v7, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1123
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_b

    .line 1124
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_a

    .line 1125
    move-object/from16 p1, v4

    .end local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local p1, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    float-to-double v3, v8

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1126
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v2, v8

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1127
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move-object/from16 v16, v2

    move/from16 v2, p4

    move-object/from16 v17, v3

    move/from16 v3, p5

    move-object/from16 v18, p1

    move-object/from16 v19, v4

    .end local p1    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local v18, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    move-object/from16 v4, p6

    move-object/from16 p1, v14

    move-object v14, v5

    .end local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local p1, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move-object/from16 v5, v19

    move-object/from16 v20, v6

    .end local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v20, "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move-object/from16 v6, v17

    move-object/from16 v21, v7

    .end local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v21, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    goto :goto_a

    .line 1124
    .end local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 p1, v14

    move-object v14, v5

    .line 1129
    .end local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_a
    move-object/from16 v1, v18

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1130
    return-void

    .line 1132
    .end local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :cond_b
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 p1, v14

    move-object v14, v5

    .end local v4    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .end local v5    # "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v6    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v7    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v14, "osc_r":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .restart local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 1133
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-direct {v0, v8, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v8

    .line 1134
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1135
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v2

    float-to-double v3, v8

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1136
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget v7, v1, v2

    .line 1137
    .local v7, "v":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v2, v6

    if-ge v1, v2, :cond_c

    .line 1138
    aget-wide v2, v6, v1

    float-to-double v4, v7

    mul-double/2addr v2, v4

    aput-wide v2, v6, v1

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1140
    .end local v1    # "i":I
    :cond_c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v16, v4

    move-object/from16 v4, p6

    move/from16 v17, v7

    .end local v7    # "v":F
    .local v17, "v":F
    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    .line 1142
    move-object/from16 v1, v18

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1143
    return-void

    .line 1147
    .end local v17    # "v":F
    :cond_d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float v7, v1, v3

    .line 1148
    .local v7, "dleft":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float v16, v1, v3

    .line 1149
    .local v16, "dTop":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float v17, v1, v3

    .line 1150
    .local v17, "dWidth":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float v19, v1, v3

    .line 1151
    .local v19, "dHeight":F
    add-float v22, v7, v17

    .line 1152
    .local v22, "dRight":F
    add-float v23, v16, v19

    .line 1153
    .local v23, "dBottom":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, p4

    mul-float/2addr v3, v7

    mul-float v4, v22, p4

    add-float/2addr v3, v4

    aput v3, p6, v2

    .line 1154
    sub-float v1, v1, p5

    mul-float v1, v1, v16

    mul-float v2, v23, p5

    add-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, p6, v2

    .line 1156
    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->clear()V

    .line 1157
    move-object/from16 v6, v18

    .end local v18    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local v6, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    invoke-virtual {v6, v11, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1158
    invoke-virtual {v6, v9, v10, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1159
    invoke-virtual {v6, v12, v13, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1160
    invoke-virtual {v6, v14, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1161
    move-object/from16 v5, p1

    .end local p1    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v5, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    invoke-virtual {v6, v5, v15, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1162
    move-object/from16 v4, v20

    move-object/from16 v3, v21

    .end local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .end local v21    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v3, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v4, "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    invoke-virtual {v6, v4, v3, v8}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1163
    move-object v1, v6

    move/from16 v2, p4

    move-object/from16 v18, v3

    .end local v3    # "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v18, "osc_sy":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move/from16 v3, p5

    .end local v4    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .restart local v20    # "osc_sx":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move/from16 v4, p2

    move-object/from16 v21, v5

    .end local v5    # "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .local v21, "osc_x":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    move/from16 v5, p3

    move-object/from16 v24, v6

    .end local v6    # "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    .local v24, "vmat":Landroidx/constraintlayout/motion/utils/VelocityMatrix;
    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    .line 1164
    return-void
.end method

.method getStartX()F
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method getStartY()F
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method public getkeyFramePositions([I[F)I
    .locals 9
    .param p1, "type"    # [I
    .param p2, "pos"    # [F

    .line 1206
    const/4 v0, 0x0

    .line 1207
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1208
    .local v1, "count":I
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    .line 1209
    .local v3, "key":Landroidx/constraintlayout/motion/widget/Key;
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    iget v5, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v6, v3, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    aput v5, p1, v0

    .line 1210
    iget v0, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v0, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v0, v5

    .line 1211
    .local v0, "time":F
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    float-to-double v6, v0

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1212
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v5, v6, v7, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    .line 1213
    nop

    .end local v0    # "time":F
    .end local v3    # "key":Landroidx/constraintlayout/motion/widget/Key;
    add-int/lit8 v1, v1, 0x2

    .line 1214
    move v0, v4

    goto :goto_0

    .line 1216
    .end local v4    # "i":I
    .local v0, "i":I
    :cond_0
    return v0
.end method

.method interpolate(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "global_position"    # F
    .param p3, "time"    # J
    .param p5, "keyCache"    # Landroidx/constraintlayout/motion/widget/KeyCache;

    .line 931
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    .line 932
    .local v1, "timeAnimation":Z
    const/4 v2, 0x0

    move/from16 v12, p2

    invoke-direct {v0, v12, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v13

    .line 934
    .local v13, "position":F
    const/4 v2, 0x0

    .line 935
    .local v2, "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 936
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 937
    .local v4, "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    invoke-virtual {v4, v11, v13}, Landroidx/constraintlayout/motion/widget/SplineSet;->setProperty(Landroid/view/View;F)V

    .line 938
    .end local v4    # "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    goto :goto_0

    .line 941
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    .line 942
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v1

    move-object v9, v2

    .end local v1    # "timeAnimation":Z
    .end local v2    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    .local v8, "timeAnimation":Z
    .local v9, "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    .line 943
    .local v10, "aSpline":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    instance-of v1, v10, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    if-eqz v1, :cond_1

    .line 944
    move-object v9, v10

    check-cast v9, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    .line 945
    goto :goto_1

    .line 947
    :cond_1
    move-object v1, v10

    move-object/from16 v2, p1

    move v3, v13

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    move-result v1

    or-int/2addr v8, v1

    .line 948
    .end local v10    # "aSpline":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    goto :goto_1

    .line 942
    :cond_2
    move v14, v8

    move-object v15, v9

    goto :goto_2

    .line 941
    .end local v8    # "timeAnimation":Z
    .end local v9    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    .restart local v1    # "timeAnimation":Z
    .restart local v2    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    :cond_3
    move v14, v1

    move-object v15, v2

    .line 953
    .end local v1    # "timeAnimation":Z
    .end local v2    # "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    .local v14, "timeAnimation":Z
    .local v15, "timePathRotate":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/16 v16, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_d

    .line 954
    aget-object v1, v1, v9

    float-to-double v2, v13

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 955
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v9

    float-to-double v2, v13

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 956
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_4

    .line 957
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_4

    .line 958
    float-to-double v3, v13

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 959
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v2, v13

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 962
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(Landroid/view/View;[I[D[D[D)V

    .line 963
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 964
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 965
    .local v10, "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    instance-of v1, v10, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    if-eqz v1, :cond_5

    .line 966
    move-object v1, v10

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    aget-wide v4, v2, v9

    aget-wide v6, v2, v16

    move-object/from16 v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    .line 968
    .end local v10    # "aSpline":Landroidx/constraintlayout/motion/widget/SplineSet;
    :cond_5
    goto :goto_3

    .line 971
    :cond_6
    if-eqz v15, :cond_7

    .line 972
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    aget-wide v7, v1, v9

    aget-wide v17, v1, v16

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v13

    move-wide/from16 v5, p3

    move v12, v9

    move-wide/from16 v9, v17

    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;FJDD)Z

    move-result v1

    or-int/2addr v1, v14

    move v14, v1

    .end local v14    # "timeAnimation":Z
    .restart local v1    # "timeAnimation":Z
    goto :goto_4

    .line 971
    .end local v1    # "timeAnimation":Z
    .restart local v14    # "timeAnimation":Z
    :cond_7
    move v12, v9

    .line 976
    :goto_4
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 977
    aget-object v2, v2, v1

    .line 978
    .local v2, "spline":Landroidx/constraintlayout/motion/utils/CurveFit;
    float-to-double v3, v13

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v2, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 979
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v3, v11, v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    .line 976
    .end local v2    # "spline":Landroidx/constraintlayout/motion/utils/CurveFit;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 982
    .end local v1    # "i":I
    :cond_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v1, :cond_b

    .line 983
    const/4 v1, 0x0

    cmpg-float v1, v13, v1

    if-gtz v1, :cond_9

    .line 984
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 985
    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v13, v1

    if-ltz v1, :cond_a

    .line 986
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 987
    :cond_a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v1, v2, :cond_b

    .line 988
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_b
    :goto_6
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v1, :cond_10

    .line 993
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 994
    aget-object v2, v2, v1

    invoke-virtual {v2, v13, v11}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .end local v1    # "i":I
    :cond_c
    goto/16 :goto_8

    .line 1000
    :cond_d
    move v12, v9

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v13

    add-float/2addr v1, v2

    .line 1001
    .local v1, "float_l":F
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v13

    add-float/2addr v2, v3

    .line 1002
    .local v2, "float_t":F
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v13

    add-float/2addr v3, v4

    .line 1003
    .local v3, "float_width":F
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v13

    add-float/2addr v4, v5

    .line 1004
    .local v4, "float_height":F
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, v1, v5

    float-to-int v6, v6

    .line 1005
    .local v6, "l":I
    add-float v7, v2, v5

    float-to-int v7, v7

    .line 1006
    .local v7, "t":I
    add-float v8, v1, v5

    add-float/2addr v8, v3

    float-to-int v8, v8

    .line 1007
    .local v8, "r":I
    add-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v5, v5

    .line 1008
    .local v5, "b":I
    sub-int v9, v8, v6

    .line 1009
    .local v9, "width":I
    sub-int v10, v5, v7

    .line 1019
    .local v10, "height":I
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    move/from16 v18, v1

    .end local v1    # "float_l":F
    .local v18, "float_l":F
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    cmpl-float v1, v12, v1

    if-nez v1, :cond_e

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_f

    .line 1021
    :cond_e
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1022
    .local v12, "widthMeasureSpec":I
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1023
    .local v1, "heightMeasureSpec":I
    invoke-virtual {v11, v12, v1}, Landroid/view/View;->measure(II)V

    .line 1025
    .end local v1    # "heightMeasureSpec":I
    .end local v12    # "widthMeasureSpec":I
    :cond_f
    invoke-virtual {v11, v6, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 1028
    .end local v2    # "float_t":F
    .end local v3    # "float_width":F
    .end local v4    # "float_height":F
    .end local v5    # "b":I
    .end local v6    # "l":I
    .end local v7    # "t":I
    .end local v8    # "r":I
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v18    # "float_l":F
    :cond_10
    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_12

    .line 1029
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1030
    .local v9, "osc":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    instance-of v1, v9, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    if-eqz v1, :cond_11

    .line 1031
    move-object v1, v9

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v10, 0x0

    aget-wide v4, v2, v10

    aget-wide v6, v2, v16

    move-object/from16 v2, p1

    move v3, v13

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_a

    .line 1034
    :cond_11
    const/4 v10, 0x0

    invoke-virtual {v9, v11, v13}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setProperty(Landroid/view/View;F)V

    .line 1036
    .end local v9    # "osc":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    :goto_a
    goto :goto_9

    .line 1038
    :cond_12
    return v14
.end method

.method name()Ljava/lang/String;
    .locals 3

    .line 1180
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1181
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "attribute"    # [Ljava/lang/String;
    .param p6, "value"    # [F

    .line 1185
    move-object v0, p0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1186
    .local v1, "start":Landroid/graphics/RectF;
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1187
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 1188
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 1189
    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 1190
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object v10, v2

    .line 1191
    .local v10, "end":Landroid/graphics/RectF;
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v2, v10, Landroid/graphics/RectF;->left:F

    .line 1192
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v2, v10, Landroid/graphics/RectF;->top:F

    .line 1193
    iget v2, v10, Landroid/graphics/RectF;->left:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v2, v3

    iput v2, v10, Landroid/graphics/RectF;->right:F

    .line 1194
    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v2, v3

    iput v2, v10, Landroid/graphics/RectF;->bottom:F

    .line 1195
    move-object v2, p2

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    .line 1196
    return-void
.end method

.method public setDrawPath(I)V
    .locals 1
    .param p1, "debugMode"    # I

    .line 1176
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 1177
    return-void
.end method

.method setEndState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 5
    .param p1, "cw"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "constraintSet"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 857
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 858
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 859
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 860
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 861
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 863
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    .line 865
    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0
    .param p1, "arc"    # I

    .line 468
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 469
    return-void
.end method

.method setStartCurrentState(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 839
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 840
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 841
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 842
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    .line 843
    return-void
.end method

.method setStartState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 5
    .param p1, "cw"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "constraintSet"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 846
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 847
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 848
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 849
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 850
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 851
    .local v0, "constraint":Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 852
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 853
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v1, p1, p2, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    .line 854
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 830
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 832
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 833
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 834
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    .line 836
    :cond_0
    return-void
.end method

.method public setup(IIFJ)V
    .locals 27
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "transitionDuration"    # F
    .param p4, "currentTime"    # J

    .line 475
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 476
    .local v1, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 477
    .local v2, "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 478
    .local v3, "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 479
    .local v4, "cycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 480
    .local v5, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 491
    .local v6, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    sget v8, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v7, v8, :cond_0

    .line 492
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iput v8, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 495
    :cond_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v7, v8, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 501
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v7, :cond_8

    .line 502
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    .line 503
    .local v8, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v9, :cond_2

    .line 504
    move-object v9, v8

    check-cast v9, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 505
    .local v9, "keyPath":Landroidx/constraintlayout/motion/widget/KeyPosition;
    new-instance v15, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object v10, v15

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v16, v13

    move-object v13, v9

    move-object/from16 v17, v1

    move-object v1, v15

    .end local v1    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v17, "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v15, v16

    invoke-direct/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    invoke-direct {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 506
    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    sget v10, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v1, v10, :cond_1

    .line 507
    iget v1, v9, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 509
    .end local v9    # "keyPath":Landroidx/constraintlayout/motion/widget/KeyPosition;
    :cond_1
    goto :goto_1

    .end local v17    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v17, v1

    .end local v1    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    instance-of v1, v8, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v1, :cond_3

    .line 510
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_1

    .line 511
    :cond_3
    instance-of v1, v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v1, :cond_4

    .line 512
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_1

    .line 513
    :cond_4
    instance-of v1, v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v1, :cond_6

    .line 514
    if-nez v6, :cond_5

    .line 515
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    .line 517
    :cond_5
    move-object v1, v8

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    :cond_6
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    .line 520
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    .line 522
    .end local v8    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :goto_1
    move-object/from16 v1, v17

    goto :goto_0

    .line 502
    .end local v17    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v17, v1

    .end local v1    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_2

    .line 501
    .end local v17    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v17, v1

    .line 527
    .end local v1    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v17    # "springAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_2
    const/4 v1, 0x0

    if-eqz v6, :cond_9

    .line 528
    new-array v7, v1, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 556
    :cond_9
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    const-string v8, ","

    const-string v9, "CUSTOM,"

    const/4 v10, 0x1

    if-nez v7, :cond_13

    .line 557
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 558
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 560
    .local v11, "attribute":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 561
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 562
    .local v12, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    .line 563
    .local v13, "customAttributeName":Ljava/lang/String;
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/motion/widget/Key;

    .line 564
    .local v15, "key":Landroidx/constraintlayout/motion/widget/Key;
    iget-object v10, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v10, :cond_a

    .line 565
    const/4 v10, 0x1

    goto :goto_4

    .line 567
    :cond_a
    iget-object v10, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 568
    .local v10, "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v10, :cond_b

    .line 569
    iget v1, v15, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v12, v1, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 571
    .end local v10    # "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    .end local v15    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_b
    const/4 v1, 0x0

    const/4 v10, 0x1

    goto :goto_4

    .line 572
    :cond_c
    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/widget/SplineSet;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/SplineSet;

    move-result-object v1

    .line 573
    .end local v12    # "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    .end local v13    # "customAttributeName":Ljava/lang/String;
    .local v1, "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    goto :goto_5

    .line 574
    .end local v1    # "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    :cond_d
    invoke-static {v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/SplineSet;

    move-result-object v1

    .line 576
    .restart local v1    # "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    :goto_5
    if-nez v1, :cond_e

    .line 577
    const/4 v1, 0x0

    const/4 v10, 0x1

    goto :goto_3

    .line 579
    :cond_e
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->setType(Ljava/lang/String;)V

    .line 580
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .end local v1    # "splineSets":Landroidx/constraintlayout/motion/widget/SplineSet;
    .end local v11    # "attribute":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v10, 0x1

    goto :goto_3

    .line 582
    :cond_f
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 583
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 584
    .local v7, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v10, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v10, :cond_10

    .line 585
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    .line 587
    .end local v7    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_10
    goto :goto_6

    .line 589
    :cond_11
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 590
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v10, 0x64

    invoke-virtual {v1, v7, v10}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 592
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 593
    .local v7, "spline":Ljava/lang/String;
    const/4 v10, 0x0

    .line 594
    .local v10, "curve":I
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 595
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 597
    :cond_12
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/SplineSet;

    invoke-virtual {v11, v10}, Landroidx/constraintlayout/motion/widget/SplineSet;->setup(I)V

    .line 598
    .end local v7    # "spline":Ljava/lang/String;
    .end local v10    # "curve":I
    goto :goto_7

    .line 602
    :cond_13
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 603
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v1, :cond_14

    .line 604
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 606
    :cond_14
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 607
    .local v7, "attribute":Ljava/lang/String;
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 608
    goto :goto_8

    .line 611
    :cond_15
    const/4 v10, 0x0

    .line 612
    .local v10, "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 613
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 614
    .local v11, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v12, v12, v13

    .line 615
    .local v12, "customAttributeName":Ljava/lang/String;
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/motion/widget/Key;

    .line 616
    .local v14, "key":Landroidx/constraintlayout/motion/widget/Key;
    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v15, :cond_16

    .line 617
    goto :goto_9

    .line 619
    :cond_16
    iget-object v15, v14, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 620
    .local v15, "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    if-eqz v15, :cond_17

    .line 621
    move-object/from16 v18, v1

    iget v1, v14, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v11, v1, v15}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_a

    .line 620
    :cond_17
    move-object/from16 v18, v1

    .line 623
    .end local v14    # "key":Landroidx/constraintlayout/motion/widget/Key;
    .end local v15    # "customAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :goto_a
    move-object/from16 v1, v18

    goto :goto_9

    .line 624
    :cond_18
    move-object/from16 v18, v1

    invoke-static {v7, v11}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    move-result-object v1

    .line 625
    .end local v10    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .end local v11    # "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    .end local v12    # "customAttributeName":Ljava/lang/String;
    .local v1, "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    move-wide/from16 v11, p4

    goto :goto_b

    .line 626
    .end local v1    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .restart local v10    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :cond_19
    move-object/from16 v18, v1

    move-wide/from16 v11, p4

    invoke-static {v7, v11, v12}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    move-result-object v1

    .line 629
    .end local v10    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .restart local v1    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    :goto_b
    if-nez v1, :cond_1a

    .line 630
    move-object/from16 v1, v18

    goto :goto_8

    .line 632
    :cond_1a
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setType(Ljava/lang/String;)V

    .line 633
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .end local v1    # "splineSets":Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;
    .end local v7    # "attribute":Ljava/lang/String;
    move-object/from16 v1, v18

    goto :goto_8

    .line 636
    :cond_1b
    move-wide/from16 v11, p4

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    .line 637
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 638
    .local v7, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v8, v7, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v8, :cond_1c

    .line 639
    move-object v8, v7

    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    .line 641
    .end local v7    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_1c
    goto :goto_c

    .line 644
    :cond_1d
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 645
    .local v7, "spline":Ljava/lang/String;
    const/4 v8, 0x0

    .line 646
    .local v8, "curve":I
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 647
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 649
    :cond_1e
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    invoke-virtual {v10, v8}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setup(I)V

    .line 650
    .end local v7    # "spline":Ljava/lang/String;
    .end local v8    # "curve":I
    goto :goto_d

    .line 602
    :cond_1f
    move-wide/from16 v11, p4

    .line 655
    :cond_20
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v7, 0x2

    add-int/2addr v1, v7

    new-array v1, v1, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 656
    .local v1, "points":[Landroidx/constraintlayout/motion/widget/MotionPaths;
    const/4 v8, 0x1

    .line 657
    .local v8, "count":I
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v13, 0x0

    aput-object v10, v1, v13

    .line 658
    array-length v10, v1

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v13, v1, v10

    .line 659
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_21

    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    const/4 v13, -0x1

    if-ne v10, v13, :cond_21

    .line 660
    const/4 v10, 0x0

    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 662
    :cond_21
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 663
    .local v13, "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "count":I
    .local v14, "count":I
    aput-object v13, v1, v8

    .line 664
    .end local v13    # "point":Landroidx/constraintlayout/motion/widget/MotionPaths;
    move v8, v14

    goto :goto_e

    .line 667
    .end local v14    # "count":I
    .restart local v8    # "count":I
    :cond_22
    const/16 v10, 0x12

    .line 668
    .local v10, "variables":I
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 669
    .local v13, "attributeNameSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_24

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 670
    .local v15, "s":Ljava/lang/String;
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v15}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 672
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 674
    .end local v15    # "s":Ljava/lang/String;
    :cond_23
    const/4 v7, 0x2

    goto :goto_f

    .line 676
    :cond_24
    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 680
    array-length v7, v7

    new-array v7, v7, [I

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    .line 681
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v14, v9

    if-ge v7, v14, :cond_27

    .line 682
    aget-object v9, v9, v7

    .line 683
    .local v9, "attributeName":Ljava/lang/String;
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    const/4 v15, 0x0

    aput v15, v14, v7

    .line 684
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_11
    array-length v15, v1

    if-ge v14, v15, :cond_26

    .line 685
    aget-object v15, v1, v14

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 686
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    aget v19, v15, v7

    move-object/from16 v20, v2

    .end local v2    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v20, "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    aget-object v2, v1, v14

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v2

    add-int v19, v19, v2

    aput v19, v15, v7

    .line 687
    goto :goto_12

    .line 684
    .end local v20    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_25
    move-object/from16 v20, v2

    .end local v2    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .end local v20    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_26
    move-object/from16 v20, v2

    .line 681
    .end local v2    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "attributeName":Ljava/lang/String;
    .end local v14    # "j":I
    .restart local v20    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_12
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v20

    goto :goto_10

    .end local v20    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_27
    move-object/from16 v20, v2

    .line 691
    .end local v2    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .restart local v20    # "timeCycleAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    aget-object v7, v1, v2

    iget v2, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v7, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v7, :cond_28

    const/4 v2, 0x1

    goto :goto_13

    :cond_28
    const/4 v2, 0x0

    .line 692
    .local v2, "arcMode":Z
    :goto_13
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v7, v7

    add-int/2addr v7, v10

    new-array v7, v7, [Z

    .line 693
    .local v7, "mask":[Z
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_14
    array-length v14, v1

    if-ge v9, v14, :cond_29

    .line 694
    aget-object v14, v1, v9

    add-int/lit8 v15, v9, -0x1

    aget-object v15, v1, v15

    move-object/from16 v19, v3

    .end local v3    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v19, "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    invoke-virtual {v14, v15, v7, v3, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    .line 693
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v19

    goto :goto_14

    .end local v19    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_29
    move-object/from16 v19, v3

    .line 697
    .end local v3    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "i":I
    .restart local v19    # "splineAttributes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 698
    .end local v8    # "count":I
    .local v3, "count":I
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_15
    array-length v9, v7

    if-ge v8, v9, :cond_2b

    .line 699
    aget-boolean v9, v7, v8

    if-eqz v9, :cond_2a

    .line 700
    add-int/lit8 v3, v3, 0x1

    .line 698
    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 704
    .end local v8    # "i":I
    :cond_2b
    new-array v8, v3, [I

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 705
    array-length v9, v8

    new-array v9, v9, [D

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 706
    array-length v8, v8

    new-array v8, v8, [D

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    .line 708
    const/4 v3, 0x0

    .line 709
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_16
    array-length v9, v7

    if-ge v8, v9, :cond_2d

    .line 710
    aget-boolean v9, v7, v8

    if-eqz v9, :cond_2c

    .line 711
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    add-int/lit8 v14, v3, 0x1

    .end local v3    # "count":I
    .local v14, "count":I
    aput v8, v9, v3

    move v3, v14

    .line 709
    .end local v14    # "count":I
    .restart local v3    # "count":I
    :cond_2c
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 714
    .end local v8    # "i":I
    :cond_2d
    array-length v8, v1

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v9, v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    .line 715
    .local v8, "splineData":[[D
    array-length v9, v1

    new-array v9, v9, [D

    .line 717
    .local v9, "timePoint":[D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_17
    array-length v15, v1

    if-ge v14, v15, :cond_2e

    .line 718
    aget-object v15, v1, v14

    move/from16 v21, v2

    .end local v2    # "arcMode":Z
    .local v21, "arcMode":Z
    aget-object v2, v8, v14

    move/from16 v22, v3

    .end local v3    # "count":I
    .local v22, "count":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    invoke-virtual {v15, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    .line 719
    aget-object v2, v1, v14

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v2, v2

    aput-wide v2, v9, v14

    .line 717
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v21

    move/from16 v3, v22

    goto :goto_17

    .end local v21    # "arcMode":Z
    .end local v22    # "count":I
    .restart local v2    # "arcMode":Z
    .restart local v3    # "count":I
    :cond_2e
    move/from16 v21, v2

    move/from16 v22, v3

    .line 722
    .end local v2    # "arcMode":Z
    .end local v3    # "count":I
    .end local v14    # "i":I
    .restart local v21    # "arcMode":Z
    .restart local v22    # "count":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_18
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v14, v3

    if-ge v2, v14, :cond_31

    .line 723
    aget v3, v3, v2

    .line 724
    .local v3, "interpolateVariable":I
    sget-object v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    array-length v14, v14

    if-ge v3, v14, :cond_30

    .line 725
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    move/from16 v23, v3

    .end local v3    # "interpolateVariable":I
    .local v23, "interpolateVariable":I
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v3, v3, v2

    aget-object v3, v15, v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, " ["

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, "s":Ljava/lang/String;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_19
    array-length v15, v1

    if-ge v14, v15, :cond_2f

    .line 727
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v24, v8, v14

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    .end local v5    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .local v25, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v26, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    aget-wide v5, v24, v2

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 726
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    goto :goto_19

    .end local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v5    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_2f
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    .end local v5    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v26    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    goto :goto_1a

    .line 724
    .end local v14    # "i":I
    .end local v23    # "interpolateVariable":I
    .end local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .local v3, "interpolateVariable":I
    .restart local v5    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_30
    move/from16 v23, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    .line 722
    .end local v3    # "interpolateVariable":I
    .end local v5    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v26    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    goto :goto_18

    .end local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v5    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    :cond_31
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    .line 731
    .end local v2    # "j":I
    .end local v5    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    .restart local v25    # "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v26    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/motion/widget/KeyTrigger;>;"
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Landroidx/constraintlayout/motion/utils/CurveFit;

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 733
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v5, v3

    if-ge v2, v5, :cond_35

    .line 734
    const/4 v5, 0x0

    .line 735
    .local v5, "pointCount":I
    const/4 v6, 0x0

    check-cast v6, [[D

    .line 736
    .local v6, "splinePoints":[[D
    const/4 v14, 0x0

    .line 737
    .local v14, "timePoints":[D
    aget-object v3, v3, v2

    .line 739
    .local v3, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1c
    move-object/from16 v23, v7

    .end local v7    # "mask":[Z
    .local v23, "mask":[Z
    array-length v7, v1

    if-ge v15, v7, :cond_34

    .line 740
    aget-object v7, v1, v15

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 741
    if-nez v6, :cond_32

    .line 742
    array-length v7, v1

    new-array v14, v7, [D

    .line 743
    array-length v7, v1

    move/from16 v24, v10

    .end local v10    # "variables":I
    .local v24, "variables":I
    aget-object v10, v1, v15

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    move-result v10

    filled-new-array {v7, v10}, [I

    move-result-object v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, [[D

    goto :goto_1d

    .line 741
    .end local v24    # "variables":I
    .restart local v10    # "variables":I
    :cond_32
    move/from16 v24, v10

    .line 745
    .end local v10    # "variables":I
    .restart local v24    # "variables":I
    :goto_1d
    aget-object v7, v1, v15

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v10, v7

    aput-wide v10, v14, v5

    .line 746
    aget-object v7, v1, v15

    aget-object v10, v6, v5

    const/4 v11, 0x0

    invoke-virtual {v7, v3, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    .line 747
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 740
    .end local v24    # "variables":I
    .restart local v10    # "variables":I
    :cond_33
    move/from16 v24, v10

    .line 739
    .end local v10    # "variables":I
    .restart local v24    # "variables":I
    :goto_1e
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v11, p4

    move-object/from16 v7, v23

    move/from16 v10, v24

    goto :goto_1c

    .end local v24    # "variables":I
    .restart local v10    # "variables":I
    :cond_34
    move/from16 v24, v10

    .line 750
    .end local v10    # "variables":I
    .end local v15    # "j":I
    .restart local v24    # "variables":I
    invoke-static {v14, v5}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v7

    .line 751
    .end local v14    # "timePoints":[D
    .local v7, "timePoints":[D
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    check-cast v6, [[D

    .line 752
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    add-int/lit8 v11, v2, 0x1

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v12, v7, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v12

    aput-object v12, v10, v11

    .line 733
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "pointCount":I
    .end local v6    # "splinePoints":[[D
    .end local v7    # "timePoints":[D
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v11, p4

    move-object/from16 v7, v23

    move/from16 v10, v24

    goto :goto_1b

    .end local v23    # "mask":[Z
    .end local v24    # "variables":I
    .local v7, "mask":[Z
    .restart local v10    # "variables":I
    :cond_35
    move-object/from16 v23, v7

    move/from16 v24, v10

    .line 755
    .end local v2    # "i":I
    .end local v7    # "mask":[Z
    .end local v10    # "variables":I
    .restart local v23    # "mask":[Z
    .restart local v24    # "variables":I
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v3, v9, v8}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 757
    aget-object v2, v1, v5

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v3, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v3, :cond_37

    .line 758
    array-length v2, v1

    .line 759
    .local v2, "size":I
    new-array v3, v2, [I

    .line 760
    .local v3, "mode":[I
    new-array v5, v2, [D

    .line 761
    .local v5, "time":[D
    const/4 v6, 0x2

    filled-new-array {v2, v6}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 762
    .local v6, "values":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1f
    if-ge v7, v2, :cond_36

    .line 763
    aget-object v10, v1, v7

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v10, v3, v7

    .line 764
    aget-object v10, v1, v7

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v10, v10

    aput-wide v10, v5, v7

    .line 765
    aget-object v10, v6, v7

    aget-object v11, v1, v7

    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    float-to-double v11, v11

    const/4 v14, 0x0

    aput-wide v11, v10, v14

    .line 766
    aget-object v10, v6, v7

    aget-object v11, v1, v7

    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    float-to-double v11, v11

    const/4 v15, 0x1

    aput-wide v11, v10, v15

    .line 762
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    .line 769
    .end local v7    # "i":I
    :cond_36
    invoke-static {v3, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v7

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 773
    .end local v2    # "size":I
    .end local v3    # "mode":[I
    .end local v5    # "time":[D
    .end local v6    # "values":[[D
    :cond_37
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 774
    .local v2, "distance":F
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 775
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3d

    .line 776
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 777
    .local v5, "attribute":Ljava/lang/String;
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    move-result-object v6

    .line 778
    .local v6, "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    if-nez v6, :cond_38

    .line 779
    goto :goto_20

    .line 782
    :cond_38
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->variesByPath()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 783
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 784
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    move-result v2

    .line 787
    :cond_39
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 788
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    .end local v5    # "attribute":Ljava/lang/String;
    .end local v6    # "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    goto :goto_20

    .line 790
    :cond_3a
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/Key;

    .line 791
    .local v5, "key":Landroidx/constraintlayout/motion/widget/Key;
    instance-of v6, v5, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v6, :cond_3b

    .line 792
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    .line 794
    .end local v5    # "key":Landroidx/constraintlayout/motion/widget/Key;
    :cond_3b
    goto :goto_21

    .line 795
    :cond_3c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 796
    .local v5, "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    invoke-virtual {v5, v2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup(F)V

    .line 797
    .end local v5    # "cycle":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    goto :goto_22

    .line 813
    :cond_3d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
