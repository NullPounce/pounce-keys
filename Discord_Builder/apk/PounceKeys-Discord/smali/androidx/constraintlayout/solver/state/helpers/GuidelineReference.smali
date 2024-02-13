.class public Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
.super Ljava/lang/Object;
.source "GuidelineReference.java"

# interfaces
.implements Landroidx/constraintlayout/solver/state/Reference;


# instance fields
.field private key:Ljava/lang/Object;

.field private mEnd:I

.field private mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

.field private mOrientation:I

.field private mPercent:F

.field private mStart:I

.field final mState:Landroidx/constraintlayout/solver/state/State;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 1
    .param p1, "state"    # Landroidx/constraintlayout/solver/state/State;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    .line 30
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 43
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/solver/state/State;

    .line 44
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mOrientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 74
    iget v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    if-eq v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 81
    :goto_0
    return-void
.end method

.method public end(Ljava/lang/Object;)V
    .locals 1
    .param p1, "margin"    # Ljava/lang/Object;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 56
    return-void
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 88
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 69
    iget v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mOrientation:I

    return v0
.end method

.method public percent(F)V
    .locals 1
    .param p1, "percent"    # F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    .line 60
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 61
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 62
    return-void
.end method

.method public setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 93
    instance-of v0, p1, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 98
    :goto_0
    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 65
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mOrientation:I

    .line 66
    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 1
    .param p1, "margin"    # Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 50
    return-void
.end method
