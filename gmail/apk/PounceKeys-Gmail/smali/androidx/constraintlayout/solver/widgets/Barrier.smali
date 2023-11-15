.class public Landroidx/constraintlayout/solver/widgets/Barrier;
.super Landroidx/constraintlayout/solver/widgets/HelperWidget;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2


# instance fields
.field private mAllowsGoneWidget:Z

.field private mBarrierType:I

.field private mMargin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/HelperWidget;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 16
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 105
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 106
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    aput-object v3, v2, v6

    .line 107
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 109
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v8, v2

    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    iput-object v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_0
    iget v2, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-ltz v2, :cond_1a

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1a

    .line 112
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v3, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v2, v2, v3

    .line 118
    .local v2, "position":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v3, 0x0

    .line 119
    .local v3, "hasMatchConstraintWidgets":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget v9, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v8, v9, :cond_6

    .line 120
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v8

    .line 121
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v10, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v10, :cond_1

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v10

    if-nez v10, :cond_1

    .line 122
    goto :goto_2

    .line 124
    :cond_1
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v10, :cond_2

    if-ne v10, v6, :cond_3

    .line 125
    :cond_2
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_3

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_3

    .line 127
    const/4 v3, 0x1

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eq v10, v5, :cond_4

    if-ne v10, v7, :cond_5

    .line 130
    :cond_4
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_5

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_5

    .line 132
    const/4 v3, 0x1

    .line 133
    goto :goto_3

    .line 119
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 137
    .end local v8    # "i":I
    :cond_6
    :goto_3
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    move v8, v4

    goto :goto_5

    :cond_8
    :goto_4
    move v8, v6

    .line 138
    .local v8, "mHasHorizontalCenteredDependents":Z
    :goto_5
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->hasCenteredDependents()Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    move v9, v4

    goto :goto_7

    :cond_a
    :goto_6
    move v9, v6

    .line 139
    .local v9, "mHasVerticalCenteredDependents":Z
    :goto_7
    if-nez v3, :cond_f

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-nez v10, :cond_b

    if-nez v8, :cond_e

    :cond_b
    if-ne v10, v5, :cond_c

    if-nez v9, :cond_e

    :cond_c
    if-ne v10, v6, :cond_d

    if-nez v8, :cond_e

    :cond_d
    if-ne v10, v7, :cond_f

    if-eqz v9, :cond_f

    :cond_e
    move v10, v6

    goto :goto_8

    :cond_f
    move v10, v4

    .line 144
    .local v10, "applyEqualityOnReferences":Z
    :goto_8
    const/4 v11, 0x5

    .line 145
    .local v11, "equalityOnReferencesStrength":I
    if-nez v10, :cond_10

    .line 146
    const/4 v11, 0x4

    .line 148
    :cond_10
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_9
    iget v13, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v12, v13, :cond_15

    .line 149
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v13, v13, v12

    .line 150
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-boolean v14, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    if-nez v14, :cond_11

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->allowedInBarrier()Z

    move-result v14

    if-nez v14, :cond_11

    .line 151
    goto :goto_c

    .line 153
    :cond_11
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v14, v14, v15

    invoke-virtual {v1, v14}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    .line 154
    .local v14, "target":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v15, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v7, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v7, v15, v7

    iput-object v14, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 155
    const/4 v7, 0x0

    .line 156
    .local v7, "margin":I
    iget-object v15, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v6, v15, v6

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_12

    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v6, v6, v15

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v6, v0, :cond_12

    .line 158
    iget-object v6, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    aget-object v6, v6, v15

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v7, v6

    .line 160
    :cond_12
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_14

    if-ne v6, v5, :cond_13

    goto :goto_a

    .line 163
    :cond_13
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V

    goto :goto_b

    .line 161
    :cond_14
    :goto_a
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    sub-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V

    .line 165
    :goto_b
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    add-int/2addr v15, v7

    invoke-virtual {v1, v6, v14, v15, v11}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 148
    .end local v7    # "margin":I
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "target":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_c
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x3

    goto :goto_9

    .line 168
    .end local v12    # "i":I
    :cond_15
    const/4 v6, 0x4

    .line 169
    .local v6, "barrierParentStrength":I
    const/4 v7, 0x0

    .line 171
    .local v7, "barrierParentStrengthOpposite":I
    iget v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/16 v13, 0x8

    if-nez v12, :cond_16

    .line 172
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 173
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 174
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_d

    .line 175
    :cond_16
    const/4 v14, 0x1

    if-ne v12, v14, :cond_17

    .line 176
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 177
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 178
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_d

    .line 179
    :cond_17
    if-ne v12, v5, :cond_18

    .line 180
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 181
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 182
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_d

    .line 183
    :cond_18
    const/4 v5, 0x3

    if-ne v12, v5, :cond_19

    .line 184
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v13}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 185
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 186
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v5, v12, v4, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 188
    :cond_19
    :goto_d
    return-void

    .line 114
    .end local v2    # "position":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "hasMatchConstraintWidgets":Z
    .end local v6    # "barrierParentStrength":I
    .end local v7    # "barrierParentStrengthOpposite":I
    .end local v8    # "mHasHorizontalCenteredDependents":Z
    .end local v9    # "mHasVerticalCenteredDependents":Z
    .end local v10    # "applyEqualityOnReferences":Z
    .end local v11    # "equalityOnReferencesStrength":I
    :cond_1a
    return-void
.end method

.method public allowedInBarrier()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public allowsGoneWidget()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return v0
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "src"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 59
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 60
    .local v0, "srcBarrier":Landroidx/constraintlayout/solver/widgets/Barrier;
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 61
    iget-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    .line 62
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    .line 63
    return-void
.end method

.method public getBarrierType()I
    .locals 1

    .line 46
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 195
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    return v0
.end method

.method protected markWidgets()V
    .locals 5

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v0, v1, :cond_4

    .line 81
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    .line 82
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 85
    :cond_1
    invoke-virtual {v1, v3, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInBarrier(IZ)V

    goto :goto_2

    .line 83
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInBarrier(IZ)V

    .line 80
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 0
    .param p1, "allowsGoneWidget"    # Z

    .line 52
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mAllowsGoneWidget:Z

    return-void
.end method

.method public setBarrierType(I)V
    .locals 0
    .param p1, "barrierType"    # I

    .line 49
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mBarrierType:I

    .line 50
    return-void
.end method

.method public setMargin(I)V
    .locals 0
    .param p1, "margin"    # I

    .line 191
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mMargin:I

    .line 192
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "debug":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 70
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-lez v1, :cond_0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0
.end method
