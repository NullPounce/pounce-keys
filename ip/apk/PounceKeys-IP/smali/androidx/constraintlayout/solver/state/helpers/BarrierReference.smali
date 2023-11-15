.class public Landroidx/constraintlayout/solver/state/helpers/BarrierReference;
.super Landroidx/constraintlayout/solver/state/HelperReference;
.source "BarrierReference.java"


# instance fields
.field private mBarrierWidget:Landroidx/constraintlayout/solver/widgets/Barrier;

.field private mDirection:Landroidx/constraintlayout/solver/state/State$Direction;

.field private mMargin:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 1
    .param p1, "state"    # Landroidx/constraintlayout/solver/state/State;

    .line 31
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    .line 32
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "direction":I
    sget-object v1, Landroidx/constraintlayout/solver/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Direction:[I

    iget-object v2, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/solver/state/State$Direction;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/State$Direction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 69
    :pswitch_1
    const/4 v0, 0x2

    .line 70
    goto :goto_0

    .line 66
    :pswitch_2
    const/4 v0, 0x1

    .line 67
    goto :goto_0

    .line 61
    :pswitch_3
    const/4 v0, 0x0

    .line 62
    nop

    .line 75
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->setBarrierType(I)V

    .line 76
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/solver/widgets/Barrier;

    iget v2, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mMargin:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    .line 77
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/solver/widgets/Barrier;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 51
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/solver/widgets/Barrier;

    return-object v0
.end method

.method public margin(I)V
    .locals 0
    .param p1, "value"    # I

    .line 43
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mMargin:I

    .line 44
    return-void
.end method

.method public margin(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->margin(I)V

    .line 40
    return-void
.end method

.method public setBarrierDirection(Landroidx/constraintlayout/solver/state/State$Direction;)V
    .locals 0
    .param p1, "barrierDirection"    # Landroidx/constraintlayout/solver/state/State$Direction;

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/solver/state/State$Direction;

    .line 36
    return-void
.end method
