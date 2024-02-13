.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Measure"
.end annotation


# instance fields
.field public horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public horizontalDimension:I

.field public measuredBaseline:I

.field public measuredHasBaseline:Z

.field public measuredHeight:I

.field public measuredNeedsSolverPass:Z

.field public measuredWidth:I

.field public useCurrentDimensions:Z

.field public verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field public verticalDimension:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
