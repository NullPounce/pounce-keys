.class Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/LinearSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesRow"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/solver/LinearSystem;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/Cache;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 83
    iput-object p1, p0, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;->this$0:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-direct {p0}, Landroidx/constraintlayout/solver/ArrayRow;-><init>()V

    .line 84
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariableValues;

    invoke-direct {v0, p0, p2}, Landroidx/constraintlayout/solver/SolverVariableValues;-><init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem$ValuesRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 85
    return-void
.end method
