.class public Landroidx/constraintlayout/solver/PriorityGoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

.field mCache:Landroidx/constraintlayout/solver/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 2
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 160
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 29
    const/16 v0, 0x80

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->TABLE_SIZE:I

    .line 30
    new-array v1, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 31
    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 33
    new-instance v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    .line 161
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/solver/PriorityGoalRow;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 25
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 5
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 198
    iget v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 199
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 200
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 202
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    aput-object p1, v0, v2

    .line 203
    add-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 205
    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-le v0, v2, :cond_2

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_1

    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    new-instance v3, Landroidx/constraintlayout/solver/PriorityGoalRow$1;

    invoke-direct {v3, p0}, Landroidx/constraintlayout/solver/PriorityGoalRow$1;-><init>(Landroidx/constraintlayout/solver/PriorityGoalRow;)V

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 215
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_2

    .line 216
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "i":I
    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 221
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 222
    return-void
.end method

.method private final removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-ge v0, v1, :cond_2

    .line 226
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 227
    move v1, v0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 228
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 230
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 232
    return-void

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 3
    .param p1, "error"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 191
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 192
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->reset()V

    .line 193
    iget-object v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 194
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 195
    return-void
.end method

.method public clear()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    .line 155
    return-void
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "avoid"    # [Z

    .line 168
    const/4 v0, -0x1

    .line 169
    .local v0, "pivot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_3

    .line 170
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 171
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v4, p2, v4

    if-eqz v4, :cond_0

    .line 172
    goto :goto_1

    .line 174
    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 175
    if-ne v0, v3, :cond_1

    .line 176
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    move v0, v1

    goto :goto_1

    .line 179
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    move v0, v1

    .line 169
    .end local v2    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_3
    if-ne v0, v3, :cond_4

    .line 184
    const/4 v1, 0x0

    return-object v1

    .line 186
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 260
    const-string v0, ""

    .line 261
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_0

    .line 263
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 264
    .local v2, "v":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .end local v2    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 8
    .param p1, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "removeFromDefinition"    # Z

    .line 239
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 240
    .local v0, "goalVariable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 241
    return-void

    .line 244
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 245
    .local v1, "rowVariables":Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    .line 246
    .local v2, "currentSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 247
    invoke-interface {v1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 248
    .local v4, "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-interface {v1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v5

    .line 249
    .local v5, "value":F
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 250
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v6, v0, v5}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 251
    invoke-direct {p0, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 253
    :cond_1
    iget v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    iget v7, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    iput v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    .line 246
    .end local v4    # "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v5    # "value":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 256
    return-void
.end method
