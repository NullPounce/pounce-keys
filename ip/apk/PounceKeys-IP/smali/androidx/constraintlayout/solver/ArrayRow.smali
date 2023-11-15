.class public Landroidx/constraintlayout/solver/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/solver/LinearSystem$Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FULL_NEW_CHECK:Z = false


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroidx/constraintlayout/solver/SolverVariable;

.field public variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

.field variablesToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 2
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 58
    new-instance v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;-><init>(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    .line 60
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 2
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 532
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private pickPivotInVariables([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 11
    .param p1, "avoid"    # [Z
    .param p2, "exclude"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 590
    const/4 v0, 0x1

    .line 591
    .local v0, "all":Z
    const/4 v1, 0x0

    .line 592
    .local v1, "value":F
    const/4 v2, 0x0

    .line 593
    .local v2, "pivot":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    .line 594
    .local v3, "pivotSlack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v4, 0x0

    .line 596
    .local v4, "valueSlack":F
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v5

    .line 597
    .local v5, "currentSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 598
    iget-object v7, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v7, v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v7

    .line 599
    .local v7, "currentValue":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4

    .line 602
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    .line 603
    .local v8, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz p1, :cond_0

    iget v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v9, p1, v9

    if-nez v9, :cond_4

    :cond_0
    if-eq v8, p2, :cond_4

    .line 604
    if-eqz v0, :cond_2

    .line 605
    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v9, v10, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_4

    .line 607
    :cond_1
    cmpg-float v9, v7, v1

    if-gez v9, :cond_4

    .line 608
    move v1, v7

    .line 609
    move-object v2, v8

    goto :goto_1

    .line 613
    :cond_2
    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_3

    .line 614
    cmpg-float v9, v7, v4

    if-gez v9, :cond_4

    .line 615
    move v4, v7

    .line 616
    move-object v3, v8

    goto :goto_1

    .line 618
    :cond_3
    iget-object v9, v8, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v9, v10, :cond_4

    .line 619
    cmpg-float v9, v7, v1

    if-gez v9, :cond_4

    .line 620
    move v1, v7

    .line 621
    move-object v2, v8

    .line 597
    .end local v7    # "currentValue":F
    .end local v8    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 628
    .end local v6    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    .line 629
    return-object v2

    .line 631
    :cond_6
    if-eqz v2, :cond_7

    move-object v6, v2

    goto :goto_2

    :cond_7
    move-object v6, v3

    :goto_2
    return-object v6
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 3
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "strength"    # I

    .line 349
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 351
    return-object p0
.end method

.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 3
    .param p1, "error"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 670
    const/high16 v0, 0x3f800000    # 1.0f

    .line 671
    .local v0, "weight":F
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 672
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 673
    :cond_0
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 674
    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_0

    .line 675
    :cond_1
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 676
    const v0, 0x49742400    # 1000000.0f

    goto :goto_0

    .line 677
    :cond_2
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 678
    const v0, 0x4e6e6b28    # 1.0E9f

    goto :goto_0

    .line 679
    :cond_3
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 680
    const v0, 0x5368d4a5    # 1.0E12f

    .line 682
    :cond_4
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 683
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "error"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "sign"    # I

    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    int-to-float v1, p2

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 179
    return-object p0
.end method

.method chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 3
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "addedExtra":Z
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;->chooseSubjectInVariables(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 433
    .local v1, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v1, :cond_0

    .line 435
    const/4 v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 439
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    if-nez v2, :cond_1

    .line 440
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 442
    :cond_1
    return v0
.end method

.method chooseSubjectInVariables(Landroidx/constraintlayout/solver/LinearSystem;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 12
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "restrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v1, 0x0

    .line 459
    .local v1, "unrestrictedCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    .line 460
    .local v2, "unrestrictedCandidateAmount":F
    const/4 v3, 0x0

    .line 461
    .local v3, "restrictedCandidateAmount":F
    const/4 v4, 0x0

    .line 462
    .local v4, "unrestrictedCandidateIsNew":Z
    const/4 v5, 0x0

    .line 464
    .local v5, "restrictedCandidateIsNew":Z
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v6}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v6

    .line 465
    .local v6, "currentSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 466
    iget-object v8, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v7}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v8

    .line 467
    .local v8, "amount":F
    iget-object v9, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v9, v7}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 468
    .local v9, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v10, v11, :cond_2

    .line 469
    if-nez v1, :cond_0

    .line 470
    move-object v1, v9

    .line 471
    move v2, v8

    .line 472
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/solver/ArrayRow;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    goto :goto_1

    .line 473
    :cond_0
    cmpl-float v10, v2, v8

    if-lez v10, :cond_1

    .line 474
    move-object v1, v9

    .line 475
    move v2, v8

    .line 476
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/solver/ArrayRow;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    goto :goto_1

    .line 477
    :cond_1
    if-nez v4, :cond_5

    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/solver/ArrayRow;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 478
    move-object v1, v9

    .line 479
    move v2, v8

    .line 480
    const/4 v4, 0x1

    goto :goto_1

    .line 482
    :cond_2
    if-nez v1, :cond_5

    .line 483
    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-gez v10, :cond_5

    .line 484
    if-nez v0, :cond_3

    .line 485
    move-object v0, v9

    .line 486
    move v3, v8

    .line 487
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/solver/ArrayRow;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v5

    goto :goto_1

    .line 488
    :cond_3
    cmpl-float v10, v3, v8

    if-lez v10, :cond_4

    .line 489
    move-object v0, v9

    .line 490
    move v3, v8

    .line 491
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/solver/ArrayRow;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v5

    goto :goto_1

    .line 492
    :cond_4
    if-nez v5, :cond_5

    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/solver/ArrayRow;->isNew(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 493
    move-object v0, v9

    .line 494
    move v3, v8

    .line 495
    const/4 v5, 0x1

    .line 465
    .end local v8    # "amount":F
    .end local v9    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 501
    .end local v7    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    .line 502
    return-object v1

    .line 504
    :cond_7
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 645
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->clear()V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 647
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 648
    return-void
.end method

.method createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p6, "variableD"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "marginB"    # I

    .line 303
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 307
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 308
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p6, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 309
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-interface {v0, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 310
    return-object p0

    .line 312
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p4, v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_2

    .line 319
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 320
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 321
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p5, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 322
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p6, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 323
    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    .line 324
    :cond_1
    neg-int v0, p3

    add-int/2addr v0, p7

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 326
    :cond_2
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_3

    .line 328
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 329
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 330
    int-to-float v0, p3

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 331
    :cond_3
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_4

    .line 333
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p6, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 334
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p5, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 335
    neg-int v0, p7

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 337
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    sub-float v3, v0, p4

    mul-float/2addr v3, v0

    invoke-interface {v1, p1, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    sub-float v3, v0, p4

    mul-float/2addr v3, v2

    invoke-interface {v1, p2, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 339
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    mul-float/2addr v2, p4

    invoke-interface {v1, p5, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 340
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    mul-float v2, p4, v0

    invoke-interface {v1, p6, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 341
    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    .line 342
    :cond_5
    neg-int v1, p3

    int-to-float v1, v1

    sub-float/2addr v0, p4

    mul-float/2addr v1, v0

    int-to-float v0, p7

    mul-float/2addr v0, p4

    add-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 345
    :cond_6
    :goto_0
    return-object p0
.end method

.method createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 1
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # I

    .line 139
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 140
    int-to-float v0, p2

    iput v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 141
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 143
    return-object p0
.end method

.method createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableC"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "percent"    # F

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 357
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 358
    return-object p0
.end method

.method public createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "variableC"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "variableD"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p5, "ratio"    # F

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 376
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 377
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p3, p5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 378
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    neg-float v1, p5

    invoke-interface {v0, p4, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 379
    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 15
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p5, "marginStartA"    # I
    .param p6, "variableEndA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "marginEndA"    # I
    .param p8, "variableStartB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p9, "marginStartB"    # I
    .param p10, "variableEndB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p11, "marginEndB"    # I

    .line 276
    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_1

    cmpl-float v8, p1, p3

    if-nez v8, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    div-float v8, p1, p2

    .line 287
    .local v8, "cw":F
    div-float v11, p3, p2

    .line 288
    .local v11, "nw":F
    div-float v12, v8, v11

    .line 292
    .local v12, "w":F
    neg-int v13, v2

    sub-int v13, v13, p7

    int-to-float v13, v13

    int-to-float v14, v5

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    int-to-float v14, v7

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    iput v13, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 293
    iget-object v13, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v13, v1, v10}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 294
    iget-object v10, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v10, v3, v9}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 295
    iget-object v9, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v9, v6, v12}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 296
    iget-object v9, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    neg-float v10, v12

    invoke-interface {v9, v4, v10}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_1

    .line 280
    .end local v8    # "cw":F
    .end local v11    # "nw":F
    .end local v12    # "w":F
    :cond_1
    :goto_0
    neg-int v8, v2

    sub-int v8, v8, p7

    add-int/2addr v8, v5

    add-int/2addr v8, v7

    int-to-float v8, v8

    iput v8, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 281
    iget-object v8, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v1, v10}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 282
    iget-object v8, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v3, v9}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 283
    iget-object v8, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v6, v10}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 284
    iget-object v8, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v4, v9}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 298
    :goto_1
    return-object v0
.end method

.method public createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 6
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p5, "variableEndA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p6, "variableStartB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "variableEndB"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 241
    cmpl-float v1, p2, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    cmpl-float v1, p1, p3

    if-nez v1, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p4, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 251
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p5, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_1

    .line 252
    :cond_1
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p6, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 254
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p7, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_1

    .line 256
    :cond_2
    div-float v0, p1, p2

    .line 257
    .local v0, "cw":F
    div-float v1, p3, p2

    .line 258
    .local v1, "nw":F
    div-float v4, v0, v1

    .line 262
    .local v4, "w":F
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v5, p4, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 263
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p5, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 264
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p7, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 265
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    neg-float v3, v4

    invoke-interface {v2, p6, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_1

    .line 244
    .end local v0    # "cw":F
    .end local v1    # "nw":F
    .end local v4    # "w":F
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p4, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p5, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 246
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p7, v3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 247
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p6, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 268
    :goto_1
    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # I

    .line 147
    if-gez p2, :cond_0

    .line 148
    mul-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    .line 151
    :cond_0
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 152
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 154
    :goto_0
    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "inverse":Z
    if-eqz p3, :cond_1

    .line 160
    move v1, p3

    .line 161
    .local v1, "m":I
    if-gez v1, :cond_0

    .line 162
    mul-int/lit8 v1, v1, -0x1

    .line 163
    const/4 v0, 0x1

    .line 165
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 167
    .end local v1    # "m":I
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 168
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 169
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 172
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 174
    :goto_0
    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # I
    .param p3, "slack"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 207
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 208
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 209
    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "slack"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "margin"    # I

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "inverse":Z
    if-eqz p4, :cond_1

    .line 187
    move v1, p4

    .line 188
    .local v1, "m":I
    if-gez v1, :cond_0

    .line 189
    mul-int/lit8 v1, v1, -0x1

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 194
    .end local v1    # "m":I
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 195
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 196
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 197
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p3, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 200
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 201
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p3, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 203
    :goto_0
    return-object p0
.end method

.method public createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "slack"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "margin"    # I

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "inverse":Z
    if-eqz p4, :cond_1

    .line 216
    move v1, p4

    .line 217
    .local v1, "m":I
    if-gez v1, :cond_0

    .line 218
    mul-int/lit8 v1, v1, -0x1

    .line 219
    const/4 v0, 0x1

    .line 221
    :cond_0
    int-to-float v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 223
    .end local v1    # "m":I
    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 224
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 225
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p2, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 226
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p3, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 229
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 230
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p3, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 232
    :goto_0
    return-object p0
.end method

.method public createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "at"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "ab"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "bt"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "bb"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p5, "angleComponent"    # F

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, p3, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 394
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p4, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 395
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 396
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 397
    neg-float v0, p5

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 398
    return-object p0
.end method

.method ensurePositiveConstant()V
    .locals 2

    .line 415
    iget v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 417
    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 418
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->invert()V

    .line 420
    :cond_0
    return-void
.end method

.method public getKey()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 1

    .line 687
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    return-object v0
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 1
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "avoid"    # [Z

    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    return-object v0
.end method

.method hasKeyVariable()Z
    .locals 2

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 1
    .param p1, "v"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->contains(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v0

    return v0
.end method

.method public initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 6
    .param p1, "row"    # Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 656
    instance-of v0, p1, Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz v0, :cond_0

    .line 657
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 658
    .local v0, "copiedRow":Landroidx/constraintlayout/solver/ArrayRow;
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 659
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->clear()V

    .line 660
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 661
    iget-object v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 662
    .local v2, "var":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v3

    .line 663
    .local v3, "val":F
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/4 v5, 0x1

    invoke-interface {v4, v2, v3, v5}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/solver/SolverVariable;FZ)V

    .line 660
    .end local v2    # "var":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v3    # "val":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v0    # "copiedRow":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .line 559
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 1
    .param p1, "exclude"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    return-object v0
.end method

.method pivot(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 3
    .param p1, "v"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 536
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    .line 538
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, v0, v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/solver/SolverVariable;F)V

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 542
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    move-result v0

    mul-float/2addr v0, v1

    .line 543
    .local v0, "amount":F
    iput-object p1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 544
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 545
    return-void

    .line 547
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 548
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->divideByAmount(F)V

    .line 553
    return-void
.end method

.method public reset()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->clear()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 132
    return-void
.end method

.method sizeInBytes()I
    .locals 2

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v1, :cond_0

    .line 404
    add-int/lit8 v0, v0, 0x4

    .line 406
    :cond_0
    add-int/lit8 v0, v0, 0x4

    .line 407
    add-int/lit8 v0, v0, 0x4

    .line 409
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->sizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .locals 11

    .line 75
    const-string v0, ""

    .line 76
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "addedVariable":Z
    iget v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v1, 0x1

    .line 87
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    .line 88
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_8

    .line 89
    iget-object v5, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v5, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 90
    .local v5, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v5, :cond_2

    .line 91
    goto/16 :goto_4

    .line 93
    :cond_2
    iget-object v6, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v6, v4}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v6

    .line 94
    .local v6, "amount":F
    cmpl-float v7, v6, v3

    if-nez v7, :cond_3

    .line 95
    goto/16 :goto_4

    .line 97
    :cond_3
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "name":Ljava/lang/String;
    const/high16 v8, -0x40800000    # -1.0f

    if-nez v1, :cond_4

    .line 99
    cmpg-float v9, v6, v3

    if-gez v9, :cond_6

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    mul-float/2addr v6, v8

    goto :goto_2

    .line 104
    :cond_4
    cmpl-float v9, v6, v3

    if-lez v9, :cond_5

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    mul-float/2addr v6, v8

    .line 111
    :cond_6
    :goto_2
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v8

    if-nez v8, :cond_7

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 114
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_3
    const/4 v1, 0x1

    .line 88
    .end local v5    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "amount":F
    .end local v7    # "name":Ljava/lang/String;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 118
    .end local v4    # "i":I
    :cond_8
    if-nez v1, :cond_9

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromFinalVariable(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Z)V
    .locals 3
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "removeFromDefinition"    # Z

    .line 573
    iget-boolean v0, p2, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-nez v0, :cond_0

    .line 574
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v0

    .line 577
    .local v0, "value":F
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v2, p2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 578
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/solver/SolverVariable;Z)F

    .line 579
    if-eqz p3, :cond_1

    .line 580
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 587
    :cond_1
    return-void
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 3
    .param p1, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "removeFromDefinition"    # Z

    .line 564
    iget-object v0, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->use(Landroidx/constraintlayout/solver/ArrayRow;Z)F

    move-result v0

    .line 566
    .local v0, "value":F
    iget v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iget v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 567
    if-eqz p2, :cond_0

    .line 568
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 570
    :cond_0
    return-void
.end method

.method public updateFromSystem(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 7
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 692
    iget-object v0, p1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 693
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x0

    .line 697
    .local v0, "done":Z
    :goto_0
    if-nez v0, :cond_7

    .line 698
    iget-object v1, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    .line 699
    .local v1, "currentSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 700
    iget-object v3, p0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, v2}, Landroidx/constraintlayout/solver/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 701
    .local v3, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-boolean v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    if-eqz v4, :cond_2

    .line 702
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    .end local v3    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 705
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 706
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/SolverVariable;

    .line 707
    .restart local v3    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-boolean v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->isFinalValue:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 708
    invoke-virtual {p0, p1, v3, v5}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Z)V

    goto :goto_3

    .line 710
    :cond_4
    iget-object v4, p1, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v6, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    aget-object v4, v4, v6

    invoke-virtual {p0, v4, v5}, Landroidx/constraintlayout/solver/ArrayRow;->updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V

    .line 712
    .end local v3    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_3
    goto :goto_2

    .line 713
    :cond_5
    iget-object v2, p0, Landroidx/constraintlayout/solver/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    .line 715
    :cond_6
    const/4 v0, 0x1

    .line 717
    .end local v1    # "currentSize":I
    :goto_4
    goto :goto_0

    .line 723
    :cond_7
    return-void
.end method
