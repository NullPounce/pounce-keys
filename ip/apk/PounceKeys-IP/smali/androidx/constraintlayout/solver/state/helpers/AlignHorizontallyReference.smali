.class public Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;
.super Landroidx/constraintlayout/solver/state/HelperReference;
.source "AlignHorizontallyReference.java"


# instance fields
.field private mBias:F

.field private mEndToEnd:Ljava/lang/Object;

.field private mEndToStart:Ljava/lang/Object;

.field private mStartToEnd:Ljava/lang/Object;

.field private mStartToStart:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 1
    .param p1, "state"    # Landroidx/constraintlayout/solver/state/State;

    .line 33
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mBias:F

    .line 34
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 5

    .line 37
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v2

    .line 39
    .local v2, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 40
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToStart:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_1

    .line 42
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToEnd:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 43
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_1

    .line 45
    :cond_1
    sget-object v3, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 47
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToStart:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 48
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2

    .line 49
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToEnd:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 50
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    goto :goto_2

    .line 52
    :cond_3
    sget-object v3, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 54
    :goto_2
    iget v3, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mBias:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_4

    .line 55
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 57
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    :cond_4
    goto :goto_0

    .line 58
    :cond_5
    return-void
.end method

.method public bias(F)V
    .locals 0
    .param p1, "bias"    # F

    .line 66
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mBias:F

    .line 67
    return-void
.end method

.method public endToEnd(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToEnd:Ljava/lang/Object;

    return-void
.end method

.method public endToStart(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mEndToStart:Ljava/lang/Object;

    return-void
.end method

.method public startToEnd(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToEnd:Ljava/lang/Object;

    return-void
.end method

.method public startToStart(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->mStartToStart:Ljava/lang/Object;

    return-void
.end method
