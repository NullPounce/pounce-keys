.class public Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;
.super Landroidx/constraintlayout/solver/state/helpers/ChainReference;
.source "VerticalChainReference.java"


# instance fields
.field private mBottomToBottom:Ljava/lang/Object;

.field private mBottomToTop:Ljava/lang/Object;

.field private mTopToBottom:Ljava/lang/Object;

.field private mTopToTop:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 1
    .param p1, "state"    # Landroidx/constraintlayout/solver/state/State;

    .line 31
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    .line 32
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 6

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "first":Landroidx/constraintlayout/solver/state/ConstraintReference;
    const/4 v1, 0x0

    .line 37
    .local v1, "previous":Landroidx/constraintlayout/solver/state/ConstraintReference;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 38
    .local v3, "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 39
    .local v4, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 40
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    goto :goto_0

    .line 42
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 43
    .restart local v3    # "key":Ljava/lang/Object;
    iget-object v4, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 44
    .restart local v4    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    if-nez v0, :cond_3

    .line 45
    move-object v0, v4

    .line 46
    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 47
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2

    .line 48
    :cond_1
    iget-object v5, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 49
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2

    .line 51
    :cond_2
    sget-object v5, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 54
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 55
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 56
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 58
    :cond_4
    move-object v1, v4

    .line 59
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    goto :goto_1

    .line 61
    :cond_5
    if-eqz v1, :cond_8

    .line 62
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 63
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_3

    .line 64
    :cond_6
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 65
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_3

    .line 67
    :cond_7
    sget-object v2, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 71
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    .line 72
    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mBias:F

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 75
    :cond_9
    sget-object v2, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Chain:[I

    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mStyle:Landroidx/constraintlayout/solver/state/State$Chain;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/state/State$Chain;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 83
    :pswitch_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setVerticalChainStyle(I)V

    goto :goto_4

    .line 80
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setVerticalChainStyle(I)V

    .line 81
    goto :goto_4

    .line 77
    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setVerticalChainStyle(I)V

    .line 78
    nop

    .line 86
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bottomToBottom(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    return-void
.end method

.method public bottomToTop(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    return-void
.end method

.method public topToBottom(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 89
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    return-void
.end method

.method public topToTop(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    return-void
.end method
