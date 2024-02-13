.class Landroidx/constraintlayout/solver/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .locals 5
    .param p0, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 48
    .local v1, "chainsSize":I
    const/4 v2, 0x0

    .line 49
    .local v2, "chainsArray":[Landroidx/constraintlayout/solver/widgets/ChainHead;
    if-nez p2, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 51
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 52
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x2

    .line 55
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 59
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 60
    aget-object v4, v2, v3

    .line 63
    .local v4, "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;->define()V

    .line 64
    invoke-static {p0, p1, p2, v0, v4}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V

    .line 59
    .end local v4    # "first":Landroidx/constraintlayout/solver/widgets/ChainHead;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method static applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)V
    .locals 45
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    iget-object v12, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 81
    .local v12, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v13, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 82
    .local v13, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v14, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 83
    .local v14, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v15, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 84
    .local v15, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v9, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 86
    .local v9, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v1, v12

    .line 87
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 88
    .local v2, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v3, 0x0

    .line 90
    .local v3, "done":Z
    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 91
    .local v4, "totalWeights":F
    iget-object v8, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 92
    .local v8, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 94
    .local v7, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, p2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v16, v1

    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v16, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move/from16 v18, v5

    .line 95
    .local v18, "isWrapContent":Z
    const/4 v5, 0x0

    .line 96
    .local v5, "isChainSpread":Z
    const/4 v6, 0x0

    .line 97
    .local v6, "isChainSpreadInside":Z
    const/16 v19, 0x0

    .line 99
    .local v19, "isChainPacked":Z
    if-nez p2, :cond_4

    .line 100
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 101
    .end local v5    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    :goto_1
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .local v22, "isChainSpread":Z
    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 102
    .end local v6    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_2
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    .end local v19    # "isChainPacked":Z
    .local v5, "isChainPacked":Z
    goto :goto_7

    .line 104
    .end local v1    # "isChainSpreadInside":Z
    .end local v22    # "isChainSpread":Z
    .local v5, "isChainSpread":Z
    .restart local v6    # "isChainSpreadInside":Z
    .restart local v19    # "isChainPacked":Z
    :cond_4
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 105
    .end local v5    # "isChainSpread":Z
    .local v1, "isChainSpread":Z
    :goto_4
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "isChainSpread":Z
    .restart local v22    # "isChainSpread":Z
    if-ne v5, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 106
    .end local v6    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_5
    iget v5, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v19, v2

    move/from16 v21, v3

    move/from16 v23, v5

    move-object/from16 v6, v16

    move/from16 v16, v1

    .line 113
    .end local v1    # "isChainSpreadInside":Z
    .end local v2    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v3    # "done":Z
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v16, "isChainSpreadInside":Z
    .local v19, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v21, "done":Z
    .local v23, "isChainPacked":Z
    :goto_7
    if-nez v21, :cond_15

    .line 114
    iget-object v3, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, p3

    .line 116
    .local v3, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/16 v24, 0x4

    .line 117
    .local v24, "strength":I
    if-eqz v23, :cond_8

    .line 118
    const/16 v24, 0x1

    .line 120
    :cond_8
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 121
    .local v25, "margin":I
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v1, v1, p2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_9

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v1, v1, p2

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    .line 124
    .local v1, "isSpreadOnly":Z
    :goto_8
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_a

    if-eq v6, v12, :cond_a

    .line 125
    iget-object v5, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int v25, v25, v5

    move/from16 v5, v25

    goto :goto_9

    .line 128
    :cond_a
    move/from16 v5, v25

    .end local v25    # "margin":I
    .local v5, "margin":I
    :goto_9
    if-eqz v23, :cond_b

    if-eq v6, v12, :cond_b

    if-eq v6, v14, :cond_b

    .line 129
    const/16 v24, 0x5

    .line 132
    :cond_b
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_e

    .line 133
    if-ne v6, v14, :cond_c

    .line 134
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v28, v4

    .end local v4    # "totalWeights":F
    .local v28, "totalWeights":F
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v29, v7

    const/4 v7, 0x6

    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v2, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_a

    .line 137
    .end local v28    # "totalWeights":F
    .end local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .restart local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_c
    move/from16 v28, v4

    move-object/from16 v29, v7

    .end local v4    # "totalWeights":F
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v28    # "totalWeights":F
    .restart local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v2, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v7, 0x8

    invoke-virtual {v10, v2, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 140
    :goto_a
    if-eqz v1, :cond_d

    if-nez v23, :cond_d

    .line 141
    const/4 v2, 0x5

    .end local v24    # "strength":I
    .local v2, "strength":I
    goto :goto_b

    .line 143
    .end local v2    # "strength":I
    .restart local v24    # "strength":I
    :cond_d
    move/from16 v2, v24

    .end local v24    # "strength":I
    .restart local v2    # "strength":I
    :goto_b
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v10, v4, v7, v5, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move/from16 v24, v2

    goto :goto_c

    .line 132
    .end local v2    # "strength":I
    .end local v28    # "totalWeights":F
    .end local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .restart local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v24    # "strength":I
    :cond_e
    move/from16 v28, v4

    move-object/from16 v29, v7

    .line 147
    .end local v4    # "totalWeights":F
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v28    # "totalWeights":F
    .restart local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_c
    if-eqz v18, :cond_10

    .line 148
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_f

    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_f

    .line 150
    iget-object v2, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v25, v1

    const/4 v1, 0x0

    const/4 v7, 0x5

    .end local v1    # "isSpreadOnly":Z
    .local v25, "isSpreadOnly":Z
    invoke-virtual {v10, v2, v4, v1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_d

    .line 148
    .end local v25    # "isSpreadOnly":Z
    .restart local v1    # "isSpreadOnly":Z
    :cond_f
    move/from16 v25, v1

    .line 154
    .end local v1    # "isSpreadOnly":Z
    .restart local v25    # "isSpreadOnly":Z
    :goto_d
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v4, 0x8

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v2, v7, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_e

    .line 147
    .end local v25    # "isSpreadOnly":Z
    .restart local v1    # "isSpreadOnly":Z
    :cond_10
    move/from16 v25, v1

    .line 160
    .end local v1    # "isSpreadOnly":Z
    .restart local v25    # "isSpreadOnly":Z
    :goto_e
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 161
    .local v1, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_13

    .line 162
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 163
    .end local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_12

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v4, v6, :cond_11

    goto :goto_f

    :cond_11
    move-object/from16 v19, v2

    goto :goto_10

    .line 164
    :cond_12
    :goto_f
    const/4 v2, 0x0

    move-object/from16 v19, v2

    goto :goto_10

    .line 167
    .end local v2    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v19, v2

    .line 169
    :goto_10
    if-eqz v19, :cond_14

    .line 170
    move-object/from16 v2, v19

    move-object v6, v2

    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_11

    .line 172
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_14
    const/4 v2, 0x1

    move/from16 v21, v2

    .line 174
    .end local v1    # "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "margin":I
    .end local v24    # "strength":I
    .end local v25    # "isSpreadOnly":Z
    :goto_11
    move/from16 v4, v28

    move-object/from16 v7, v29

    goto/16 :goto_7

    .line 177
    .end local v28    # "totalWeights":F
    .end local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "totalWeights":F
    .restart local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_15
    move/from16 v28, v4

    move-object/from16 v29, v7

    .end local v4    # "totalWeights":F
    .end local v7    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v28    # "totalWeights":F
    .restart local v29    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v15, :cond_19

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_19

    .line 178
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 179
    .local v2, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, p2

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_16

    iget-object v3, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v3, p2

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_12

    :cond_16
    const/4 v3, 0x0

    .line 181
    .local v3, "isSpreadOnly":Z
    :goto_12
    if-eqz v3, :cond_17

    if-nez v23, :cond_17

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v4, v0, :cond_17

    .line 182
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    const/4 v1, 0x5

    invoke-virtual {v10, v4, v5, v7, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_13

    .line 184
    :cond_17
    if-eqz v23, :cond_18

    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-ne v1, v0, :cond_18

    .line 185
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    const/4 v7, 0x4

    invoke-virtual {v10, v1, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 188
    :cond_18
    :goto_13
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v5, p3, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 189
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    .line 188
    const/4 v7, 0x6

    invoke-virtual {v10, v1, v4, v5, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 194
    .end local v2    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "isSpreadOnly":Z
    :cond_19
    if-eqz v18, :cond_1a

    .line 195
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 197
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 195
    const/16 v4, 0x8

    invoke-virtual {v10, v1, v2, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    .line 201
    :cond_1a
    iget-object v7, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 202
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    if-eqz v7, :cond_22

    .line 203
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 204
    .local v1, "count":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_21

    .line 205
    const/4 v3, 0x0

    .line 206
    .local v3, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    .line 208
    .local v4, "lastWeight":F
    iget-boolean v5, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasUndefinedWeights:Z

    if-eqz v5, :cond_1b

    iget-boolean v5, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-nez v5, :cond_1b

    .line 209
    iget v5, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    int-to-float v5, v5

    move/from16 v28, v5

    .line 212
    :cond_1b
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v1, :cond_20

    .line 213
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 214
    .local v2, "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v0, v0, p2

    .line 216
    .local v0, "currentWeight":F
    const/16 v20, 0x0

    cmpg-float v26, v0, v20

    if-gez v26, :cond_1d

    .line 217
    move/from16 v26, v0

    .end local v0    # "currentWeight":F
    .local v26, "currentWeight":F
    iget-boolean v0, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHasComplexMatchWeights:Z

    if-eqz v0, :cond_1c

    .line 218
    iget-object v0, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v20, p3, 0x1

    aget-object v0, v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move/from16 v38, v1

    .end local v1    # "count":I
    .local v38, "count":I
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    const/4 v6, 0x4

    const/4 v7, 0x0

    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v24, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v39, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v0, v1, v7, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 220
    move-object/from16 v17, v8

    const/4 v8, 0x0

    goto/16 :goto_17

    .line 222
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "count":I
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :cond_1c
    move/from16 v38, v1

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    const/4 v6, 0x4

    .end local v1    # "count":I
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/high16 v0, 0x3f800000    # 1.0f

    .end local v26    # "currentWeight":F
    .restart local v0    # "currentWeight":F
    goto :goto_15

    .line 216
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "count":I
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    :cond_1d
    move/from16 v26, v0

    move/from16 v38, v1

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    const/4 v6, 0x4

    .line 224
    .end local v1    # "count":I
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_15
    cmpl-float v1, v0, v20

    if-nez v1, :cond_1e

    .line 225
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v1, v1, v7

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v17, v8

    const/16 v6, 0x8

    const/4 v8, 0x0

    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v17, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v10, v1, v7, v8, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    .line 227
    goto :goto_17

    .line 230
    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1e
    move-object/from16 v17, v8

    const/4 v8, 0x0

    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_1f

    .line 231
    iget-object v1, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 232
    .local v1, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v6, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 233
    .local v6, "end":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 234
    .local v7, "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v8, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v8, v8, v30

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 235
    .local v8, "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v40, v3

    .end local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v40, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v3

    .line 236
    .local v3, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object/from16 v30, v3

    move/from16 v31, v4

    move/from16 v32, v28

    move/from16 v33, v0

    move-object/from16 v34, v1

    move-object/from16 v35, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    invoke-virtual/range {v30 .. v37}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    .line 238
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_16

    .line 230
    .end local v1    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "end":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v7    # "nextBegin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "nextEnd":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v40    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v3, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1f
    move-object/from16 v40, v3

    .line 241
    .end local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_16
    move-object v1, v2

    .line 242
    .end local v40    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v3, v0

    move v4, v3

    move-object v3, v1

    .line 212
    .end local v0    # "currentWeight":F
    .end local v1    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v2    # "match":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_17
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v8, v17

    move-object/from16 v7, v24

    move/from16 v1, v38

    move-object/from16 v6, v39

    const/4 v2, 0x1

    goto/16 :goto_14

    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "count":I
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v8, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_20
    move/from16 v38, v1

    move-object/from16 v40, v3

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    .end local v1    # "count":I
    .end local v3    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_18

    .line 204
    .end local v4    # "lastWeight":F
    .end local v5    # "i":I
    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "lastMatch":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "count":I
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_21
    move/from16 v38, v1

    move-object/from16 v39, v6

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    .end local v1    # "count":I
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v38    # "count":I
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_18

    .line 202
    .end local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v38    # "count":I
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_22
    move-object/from16 v39, v6

    move-object/from16 v24, v7

    move-object/from16 v17, v8

    .line 259
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .end local v8    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v17    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v24    # "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_18
    if-eqz v14, :cond_29

    if-eq v14, v15, :cond_24

    if-eqz v23, :cond_23

    goto :goto_19

    :cond_23
    move-object/from16 v35, v9

    move-object/from16 v32, v39

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    goto/16 :goto_1e

    .line 260
    :cond_24
    :goto_19
    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 261
    .local v1, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    .line 262
    .local v2, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_25

    iget-object v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1a

    :cond_25
    const/4 v3, 0x0

    :goto_1a
    move-object/from16 v20, v3

    .line 263
    .local v20, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_26

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_1b

    :cond_26
    const/4 v3, 0x0

    :goto_1b
    move-object/from16 v25, v3

    .line 264
    .local v25, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v3, p3

    .line 265
    .end local v1    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v8, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v7, v1, v3

    .line 266
    .end local v2    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v7, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v20, :cond_28

    if-eqz v25, :cond_28

    .line 267
    const/high16 v1, 0x3f000000    # 0.5f

    .line 268
    .local v1, "bias":F
    if-nez p2, :cond_27

    .line 269
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v26, v1

    goto :goto_1c

    .line 271
    :cond_27
    iget v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v26, v1

    .line 273
    .end local v1    # "bias":F
    .local v26, "bias":F
    :goto_1c
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 274
    .local v27, "beginMargin":I
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v30

    .line 275
    .local v30, "endMargin":I
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v31, 0x7

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move/from16 v4, v27

    move/from16 v5, v26

    move-object/from16 v33, v6

    move-object/from16 v32, v39

    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v6, v25

    move-object/from16 v34, v7

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    .end local v7    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v24, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v29, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v34, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v33

    move-object/from16 v33, v8

    .end local v8    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v33, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v8, v30

    move-object/from16 v35, v9

    .end local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v35, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_1d

    .line 266
    .end local v26    # "bias":F
    .end local v27    # "beginMargin":I
    .end local v30    # "endMargin":I
    .end local v32    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v33    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v34    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v24, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v29, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_28
    move-object/from16 v34, v7

    move-object/from16 v33, v8

    move-object/from16 v35, v9

    move-object/from16 v32, v39

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    .line 278
    .end local v7    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v20    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v24, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v29, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v32    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1d
    goto/16 :goto_39

    .line 259
    .end local v32    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v24, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .local v29, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_29
    move-object/from16 v35, v9

    move-object/from16 v32, v39

    move-object/from16 v44, v29

    move-object/from16 v29, v24

    move-object/from16 v24, v44

    .line 278
    .end local v9    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v39    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v24, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v29, "listMatchConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    .restart local v32    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v35    # "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1e
    if-eqz v22, :cond_3d

    if-eqz v14, :cond_3d

    .line 280
    move-object v1, v14

    .line 281
    .end local v32    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v14

    .line 282
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_2a

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_2a

    const/16 v25, 0x1

    goto :goto_1f

    :cond_2a
    const/16 v25, 0x0

    :goto_1f
    move/from16 v20, v25

    move-object v8, v1

    move-object v9, v2

    .line 283
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v9, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v20, "applyFixedEquality":Z
    :goto_20
    if-eqz v8, :cond_3c

    .line 284
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    move-object v7, v1

    .line 285
    .end local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_21
    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_2c

    .line 286
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v1, p2

    goto :goto_21

    .line 285
    :cond_2b
    const/16 v5, 0x8

    .line 288
    :cond_2c
    if-nez v7, :cond_2e

    if-ne v8, v15, :cond_2d

    goto :goto_22

    :cond_2d
    move v0, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    goto/16 :goto_2a

    .line 289
    :cond_2e
    :goto_22
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 290
    .local v6, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v4, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 291
    .local v4, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_2f

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_23

    :cond_2f
    const/4 v1, 0x0

    .line 292
    .local v1, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_23
    if-eq v9, v8, :cond_30

    .line 293
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v19, v1

    goto :goto_25

    .line 294
    :cond_30
    if-ne v8, v14, :cond_32

    if-ne v9, v8, :cond_32

    .line 295
    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_31

    iget-object v2, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_24

    :cond_31
    const/4 v2, 0x0

    :goto_24
    move-object v1, v2

    move-object/from16 v19, v1

    goto :goto_25

    .line 298
    :cond_32
    move-object/from16 v19, v1

    .end local v1    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v19, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_25
    const/4 v1, 0x0

    .line 299
    .local v1, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 300
    .local v2, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 301
    .local v3, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    .line 302
    .local v25, "beginMargin":I
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v0, v0, v26

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 304
    .local v0, "nextMargin":I
    if-eqz v7, :cond_33

    .line 305
    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v5, p3

    .line 306
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 307
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v5, v5, v30

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    goto :goto_26

    .line 309
    :cond_33
    iget-object v5, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v5, v5, v30

    iget-object v1, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 310
    if-eqz v1, :cond_34

    .line 311
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 313
    :cond_34
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v5, v5, v30

    iget-object v3, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    .line 316
    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v2    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v30, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v31, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .local v32, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_26
    if-eqz v30, :cond_35

    .line 317
    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_35
    if-eqz v9, :cond_36

    .line 320
    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v25, v25, v1

    .line 322
    :cond_36
    if-eqz v4, :cond_3a

    if-eqz v19, :cond_3a

    if-eqz v31, :cond_3a

    if-eqz v32, :cond_3a

    .line 323
    move/from16 v1, v25

    .line 324
    .local v1, "margin1":I
    if-ne v8, v14, :cond_37

    .line 325
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v33, v1

    goto :goto_27

    .line 324
    :cond_37
    move/from16 v33, v1

    .line 327
    .end local v1    # "margin1":I
    .local v33, "margin1":I
    :goto_27
    move v1, v0

    .line 328
    .local v1, "margin2":I
    if-ne v8, v15, :cond_38

    .line 329
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    move/from16 v34, v1

    goto :goto_28

    .line 328
    :cond_38
    move/from16 v34, v1

    .line 331
    .end local v1    # "margin2":I
    .local v34, "margin2":I
    :goto_28
    const/4 v1, 0x5

    .line 332
    .local v1, "strength":I
    if-eqz v20, :cond_39

    .line 333
    const/16 v1, 0x8

    move/from16 v36, v1

    goto :goto_29

    .line 332
    :cond_39
    move/from16 v36, v1

    .line 335
    .end local v1    # "strength":I
    .local v36, "strength":I
    :goto_29
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, v19

    move-object/from16 v37, v4

    .end local v4    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v37, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v4, v33

    move/from16 v38, v0

    const/16 v0, 0x8

    .end local v0    # "nextMargin":I
    .local v38, "nextMargin":I
    move-object/from16 v26, v6

    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v26, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v31

    move-object/from16 v39, v7

    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v39, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v32

    move-object/from16 v40, v8

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v40, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v8, v34

    move-object/from16 v41, v9

    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v41, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v9, v36

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_2a

    .line 322
    .end local v26    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v33    # "margin1":I
    .end local v34    # "margin2":I
    .end local v36    # "strength":I
    .end local v37    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v38    # "nextMargin":I
    .end local v39    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v0    # "nextMargin":I
    .restart local v4    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3a
    move/from16 v38, v0

    move-object/from16 v37, v4

    move-object/from16 v26, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    const/16 v0, 0x8

    .line 340
    .end local v0    # "nextMargin":I
    .end local v4    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "beginMargin":I
    .end local v30    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v31    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v32    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v39    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2a
    invoke-virtual/range {v40 .. v40}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_3b

    .line 341
    move-object/from16 v1, v40

    move-object v9, v1

    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_2b

    .line 340
    .end local v1    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3b
    move-object/from16 v9, v41

    .line 343
    .end local v41    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2b
    move-object/from16 v8, v39

    move-object/from16 v19, v39

    .end local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto/16 :goto_20

    .line 283
    .end local v39    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v19, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3c
    move-object/from16 v40, v8

    move-object/from16 v41, v9

    .line 345
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v20    # "applyFixedEquality":Z
    .restart local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v32, v40

    goto/16 :goto_39

    .line 278
    .end local v40    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3d
    const/16 v0, 0x8

    .line 345
    if-eqz v16, :cond_50

    if-eqz v14, :cond_50

    .line 347
    move-object v1, v14

    .line 348
    .end local v32    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v2, v14

    .line 349
    .local v2, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-lez v3, :cond_3e

    iget v3, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsCount:I

    iget v4, v11, Landroidx/constraintlayout/solver/widgets/ChainHead;->mWidgetsMatchCount:I

    if-ne v3, v4, :cond_3e

    const/16 v25, 0x1

    goto :goto_2c

    :cond_3e
    const/16 v25, 0x0

    :goto_2c
    move/from16 v20, v25

    move-object v8, v1

    move-object v9, v2

    .line 350
    .end local v1    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v2    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v20    # "applyFixedEquality":Z
    :goto_2d
    if-eqz v8, :cond_4b

    .line 351
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, p2

    .line 352
    .end local v19    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2e
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_3f

    .line 353
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v2, p2

    goto :goto_2e

    .line 355
    :cond_3f
    if-eq v8, v14, :cond_49

    if-eq v8, v15, :cond_49

    if-eqz v1, :cond_49

    .line 356
    if-ne v1, v15, :cond_40

    .line 357
    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_2f

    .line 356
    :cond_40
    move-object v7, v1

    .line 359
    .end local v1    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2f
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v1, p3

    .line 360
    .restart local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v5, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 361
    .local v5, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_41

    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_30

    :cond_41
    const/4 v1, 0x0

    .line 362
    .local v1, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_30
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 363
    .end local v1    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v4, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v1, 0x0

    .line 364
    .local v1, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v2, 0x0

    .line 365
    .local v2, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 366
    .restart local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v19

    .line 367
    .local v19, "beginMargin":I
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v25, p3, 0x1

    aget-object v0, v0, v25

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 369
    .restart local v0    # "nextMargin":I
    if-eqz v7, :cond_43

    .line 370
    move-object/from16 v25, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v25, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 371
    .end local v25    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 372
    move-object/from16 v25, v2

    .end local v2    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .local v25, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_42

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_31

    :cond_42
    const/4 v2, 0x0

    :goto_31
    move-object/from16 v30, v2

    move-object/from16 v31, v25

    move-object/from16 v25, v1

    .end local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v2, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_32

    .line 374
    .end local v25    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .local v2, "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_43
    move-object/from16 v25, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v25, "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    .line 375
    .end local v25    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_44

    .line 376
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 378
    :cond_44
    move-object/from16 v25, v1

    .end local v1    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v25    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v30, p3, 0x1

    aget-object v1, v1, v30

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    .line 381
    .end local v2    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v3    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v30, "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v31    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_32
    if-eqz v25, :cond_45

    .line 382
    invoke-virtual/range {v25 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_45
    if-eqz v9, :cond_46

    .line 385
    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int v19, v19, v1

    .line 387
    :cond_46
    const/4 v1, 0x4

    .line 388
    .local v1, "strength":I
    if-eqz v20, :cond_47

    .line 389
    const/16 v1, 0x8

    move/from16 v32, v1

    goto :goto_33

    .line 388
    :cond_47
    move/from16 v32, v1

    .line 391
    .end local v1    # "strength":I
    .local v32, "strength":I
    :goto_33
    if-eqz v5, :cond_48

    if-eqz v4, :cond_48

    if-eqz v31, :cond_48

    if-eqz v30, :cond_48

    .line 392
    const/high16 v33, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v5

    move-object v3, v4

    move-object/from16 v34, v4

    .end local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v34, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v4, v19

    move-object/from16 v36, v5

    .end local v5    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .local v36, "begin":Landroidx/constraintlayout/solver/SolverVariable;
    move/from16 v5, v33

    move-object/from16 v33, v6

    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v33, "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v6, v31

    move-object/from16 v37, v7

    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v37, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v7, v30

    move-object/from16 v38, v8

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v38, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v8, v0

    move-object/from16 v39, v9

    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v39, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v9, v32

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_34

    .line 391
    .end local v33    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v34    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v36    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v37    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v5    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .restart local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_48
    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move-object/from16 v33, v6

    move-object/from16 v37, v7

    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 397
    .end local v0    # "nextMargin":I
    .end local v4    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "begin":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "beginAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "beginMargin":I
    .end local v25    # "beginNextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v30    # "beginNextTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v31    # "beginNext":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v32    # "strength":I
    .restart local v37    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_34
    move-object/from16 v19, v37

    goto :goto_35

    .line 355
    .end local v37    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_49
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .line 397
    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v19, v1

    .end local v1    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v19, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_35
    invoke-virtual/range {v38 .. v38}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4a

    .line 398
    move-object/from16 v0, v38

    move-object v9, v0

    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v0, "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_36

    .line 397
    .end local v0    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_4a
    move-object/from16 v9, v39

    .line 400
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_36
    move-object/from16 v8, v19

    move v0, v1

    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto/16 :goto_2d

    .line 402
    :cond_4b
    move-object/from16 v38, v8

    move-object/from16 v39, v9

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 403
    .local v0, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    iget-object v9, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 404
    .local v9, "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v8, v1, v2

    .line 405
    .local v8, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 406
    .local v7, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v6, 0x5

    .line 407
    .local v6, "endPointsStrength":I
    if-eqz v9, :cond_4e

    .line 408
    if-eq v14, v15, :cond_4c

    .line 409
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v10, v1, v2, v3, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move/from16 v31, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v25, v9

    goto :goto_37

    .line 410
    :cond_4c
    if-eqz v7, :cond_4d

    .line 411
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 412
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v26

    .line 411
    move-object/from16 v30, v1

    move-object/from16 v1, p1

    move-object/from16 v25, v5

    const/high16 v5, 0x3f000000    # 0.5f

    move/from16 v31, v6

    .end local v6    # "endPointsStrength":I
    .local v31, "endPointsStrength":I
    move-object/from16 v6, v30

    move-object/from16 v42, v7

    .end local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v42, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v7, v25

    move-object/from16 v43, v8

    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v43, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v8, v26

    move-object/from16 v25, v9

    .end local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v25, "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_37

    .line 410
    .end local v25    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v31    # "endPointsStrength":I
    .end local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v6    # "endPointsStrength":I
    .restart local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4d
    move/from16 v31, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v25, v9

    .end local v6    # "endPointsStrength":I
    .end local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v25    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v31    # "endPointsStrength":I
    .restart local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    goto :goto_37

    .line 407
    .end local v25    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v31    # "endPointsStrength":I
    .end local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v6    # "endPointsStrength":I
    .restart local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4e
    move/from16 v31, v6

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v25, v9

    .line 415
    .end local v6    # "endPointsStrength":I
    .end local v7    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v8    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v25    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v31    # "endPointsStrength":I
    .restart local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_37
    move-object/from16 v1, v42

    .end local v42    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v1, "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v1, :cond_4f

    if-eq v14, v15, :cond_4f

    .line 416
    move-object/from16 v2, v43

    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v2, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    move/from16 v6, v31

    .end local v31    # "endPointsStrength":I
    .restart local v6    # "endPointsStrength":I
    invoke-virtual {v10, v3, v4, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_38

    .line 415
    .end local v2    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v6    # "endPointsStrength":I
    .restart local v31    # "endPointsStrength":I
    .restart local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_4f
    move/from16 v6, v31

    move-object/from16 v2, v43

    .line 422
    .end local v0    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v1    # "endTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v20    # "applyFixedEquality":Z
    .end local v25    # "beginTarget":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v31    # "endPointsStrength":I
    .end local v39    # "previousVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v43    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_38
    move-object/from16 v32, v38

    .end local v38    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_50
    :goto_39
    if-nez v22, :cond_51

    if-eqz v16, :cond_59

    :cond_51
    if-eqz v14, :cond_59

    if-eq v14, v15, :cond_59

    .line 423
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p3

    .line 424
    .restart local v0    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 425
    .local v1, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_52

    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_3a

    :cond_52
    const/4 v2, 0x0

    :goto_3a
    move-object/from16 v20, v2

    .line 426
    .local v20, "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_53

    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    goto :goto_3b

    :cond_53
    const/4 v2, 0x0

    .line 427
    .local v2, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_3b
    if-eq v13, v15, :cond_55

    .line 428
    iget-object v3, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    .line 429
    .local v3, "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_54

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v27, v4

    goto :goto_3c

    :cond_54
    const/16 v27, 0x0

    :goto_3c
    move-object/from16 v2, v27

    move-object/from16 v25, v2

    goto :goto_3d

    .line 427
    .end local v3    # "realEnd":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_55
    move-object/from16 v25, v2

    .line 431
    .end local v2    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .local v25, "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_3d
    if-ne v14, v15, :cond_56

    .line 432
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v0, v2, p3

    .line 433
    iget-object v2, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v3, p3, 0x1

    aget-object v1, v2, v3

    move-object v9, v1

    goto :goto_3e

    .line 431
    :cond_56
    move-object v9, v1

    .line 435
    .end local v1    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v9, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :goto_3e
    if-eqz v20, :cond_58

    if-eqz v25, :cond_58

    .line 436
    const/high16 v26, 0x3f000000    # 0.5f

    .line 437
    .local v26, "bias":F
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 438
    .restart local v27    # "beginMargin":I
    if-nez v15, :cond_57

    .line 440
    move-object v1, v13

    move-object v15, v1

    .line 442
    :cond_57
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v30

    .line 443
    .local v30, "endMargin":I
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    const/16 v31, 0x5

    move-object/from16 v1, p1

    move-object/from16 v3, v20

    move/from16 v4, v27

    move/from16 v5, v26

    move-object/from16 v6, v25

    move/from16 v8, v30

    move-object/from16 v33, v9

    .end local v9    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v33, "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move/from16 v9, v31

    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto :goto_3f

    .line 435
    .end local v26    # "bias":F
    .end local v27    # "beginMargin":I
    .end local v30    # "endMargin":I
    .end local v33    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .restart local v9    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_58
    move-object/from16 v33, v9

    .line 447
    .end local v0    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v9    # "end":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v20    # "beginTarget":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v25    # "endTarget":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_59
    :goto_3f
    return-void
.end method
