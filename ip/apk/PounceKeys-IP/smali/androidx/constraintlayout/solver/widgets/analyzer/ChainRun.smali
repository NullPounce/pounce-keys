.class public Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;
.super Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
.source "ChainRun.java"


# instance fields
.field private chainStyle:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 1
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "orientation"    # I

    .line 36
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    .line 37
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    .line 38
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->build()V

    .line 39
    return-void
.end method

.method private build()V
    .locals 7

    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    .local v0, "current":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 79
    .local v1, "previous":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_0
    if-eqz v1, :cond_0

    .line 80
    move-object v0, v1

    .line 81
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getPreviousChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 84
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 86
    .local v2, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1
    if-eqz v2, :cond_1

    .line 87
    move-object v0, v2

    .line 88
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRun(I)Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getNextChainMember(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    goto :goto_1

    .line 91
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 92
    .local v4, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v6, :cond_2

    .line 93
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object p0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    goto :goto_3

    .line 94
    :cond_2
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-ne v6, v5, :cond_3

    .line 95
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object p0, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;

    .line 97
    .end local v4    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_3
    :goto_3
    goto :goto_2

    .line 98
    :cond_4
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v3, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 99
    .local v3, "isInRtl":Z
    :goto_4
    if-eqz v3, :cond_6

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_6

    .line 100
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 102
    :cond_6
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v4, :cond_7

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalChainStyle()I

    move-result v4

    goto :goto_5

    :cond_7
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalChainStyle()I

    move-result v4

    :goto_5
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    .line 103
    return-void
.end method

.method private getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 502
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 503
    .local v1, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 504
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v2

    .line 501
    .end local v1    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 507
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 4

    .line 511
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 512
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 513
    .local v1, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 514
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v2

    .line 511
    .end local v1    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 517
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method apply()V
    .locals 13

    .line 523
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 524
    .local v1, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->apply()V

    .line 525
    .end local v1    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 527
    .local v0, "count":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 528
    return-void

    .line 532
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 533
    .local v2, "firstWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 535
    .local v4, "lastWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v5, :cond_6

    .line 536
    iget-object v1, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 537
    .local v1, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 538
    .local v5, "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p0, v1, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v6

    .line 539
    .local v6, "startTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 540
    .local v7, "startMargin":I
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    .line 541
    .local v8, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_2

    .line 542
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 544
    :cond_2
    if-eqz v6, :cond_3

    .line 545
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p0, v9, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 547
    :cond_3
    invoke-virtual {p0, v5, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v3

    .line 548
    .local v3, "endTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 549
    .local v9, "endMargin":I
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    .line 550
    .local v10, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v10, :cond_4

    .line 551
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 553
    :cond_4
    if-eqz v3, :cond_5

    .line 554
    iget-object v11, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    neg-int v12, v9

    invoke-virtual {p0, v11, v3, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 556
    .end local v1    # "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v3    # "endTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .end local v5    # "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v6    # "startTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .end local v7    # "startMargin":I
    .end local v8    # "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "endMargin":I
    .end local v10    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    goto :goto_1

    .line 557
    :cond_6
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 558
    .local v3, "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 559
    .restart local v5    # "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v6

    .line 560
    .restart local v6    # "startTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 561
    .restart local v7    # "startMargin":I
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getFirstVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    .line 562
    .restart local v8    # "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v8, :cond_7

    .line 563
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 565
    :cond_7
    if-eqz v6, :cond_8

    .line 566
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p0, v9, v6, v7}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 568
    :cond_8
    invoke-virtual {p0, v5, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getTarget(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    move-result-object v1

    .line 569
    .local v1, "endTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 570
    .restart local v9    # "endMargin":I
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->getLastVisibleWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v10

    .line 571
    .restart local v10    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v10, :cond_9

    .line 572
    iget-object v11, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 574
    :cond_9
    if-eqz v1, :cond_a

    .line 575
    iget-object v11, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    neg-int v12, v9

    invoke-virtual {p0, v11, v1, v12}, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->addTarget(Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;I)V

    .line 578
    .end local v1    # "endTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .end local v3    # "startAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v5    # "endAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v6    # "startTarget":Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;
    .end local v7    # "startMargin":I
    .end local v8    # "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v9    # "endMargin":I
    .end local v10    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_a
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 579
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-object p0, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 580
    return-void
.end method

.method public applyToWidget()V
    .locals 2

    .line 494
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 495
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 496
    .local v1, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 494
    .end local v1    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method clear()V
    .locals 2

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->runGroup:Landroidx/constraintlayout/solver/widgets/analyzer/RunGroup;

    .line 109
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 110
    .local v1, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->clear()V

    .line 111
    .end local v1    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public getWrapDimension()J
    .locals 7

    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 66
    .local v0, "count":I
    const-wide/16 v1, 0x0

    .line 67
    .local v1, "wrapDimension":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 68
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 69
    .local v4, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 70
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v5

    add-long/2addr v1, v5

    .line 71
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 67
    .end local v4    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method reset()V
    .locals 2

    .line 116
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    .line 118
    return-void
.end method

.method supportsWrapComputation()Z
    .locals 4

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 56
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 57
    .local v2, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const/4 v3, 0x0

    return v3

    .line 55
    .end local v2    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChainRun "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v1, :cond_0

    const-string v1, "horizontal : "

    goto :goto_0

    :cond_0
    const-string v1, "vertical : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "log":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 45
    .local v2, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .end local v2    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    goto :goto_1

    .line 49
    :cond_1
    return-object v0
.end method

.method public update(Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;)V
    .locals 26
    .param p1, "dependency"    # Landroidx/constraintlayout/solver/widgets/analyzer/Dependency;

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v1, :cond_5c

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v1, :cond_0

    goto/16 :goto_2d

    .line 126
    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 127
    .local v1, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v2, 0x0

    .line 128
    .local v2, "isInRtl":Z
    if-eqz v1, :cond_1

    instance-of v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v3, :cond_1

    .line 129
    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v2

    .line 131
    :cond_1
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    sub-int/2addr v3, v4

    .line 132
    .local v3, "distance":I
    const/4 v4, 0x0

    .line 133
    .local v4, "size":I
    const/4 v5, 0x0

    .line 134
    .local v5, "numMatchConstraints":I
    const/4 v6, 0x0

    .line 135
    .local v6, "weights":F
    const/4 v7, 0x0

    .line 136
    .local v7, "numVisibleWidgets":I
    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 138
    .local v8, "count":I
    const/4 v9, -0x1

    .line 139
    .local v9, "firstVisibleWidget":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v11, 0x8

    if-ge v10, v8, :cond_3

    .line 140
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 141
    .local v12, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    if-ne v13, v11, :cond_2

    .line 142
    nop

    .line 139
    .end local v12    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 144
    .restart local v12    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_2
    move v9, v10

    .line 145
    nop

    .line 148
    .end local v10    # "i":I
    .end local v12    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_3
    const/4 v10, -0x1

    .line 149
    .local v10, "lastVisibleWidget":I
    add-int/lit8 v12, v8, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_5

    .line 150
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 151
    .local v13, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_4

    .line 152
    nop

    .line 149
    .end local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 154
    .restart local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_4
    move v10, v12

    .line 155
    nop

    .line 157
    .end local v12    # "i":I
    .end local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_5
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    const/4 v15, 0x2

    if-ge v12, v15, :cond_12

    .line 158
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i":I
    :goto_3
    if-ge v15, v8, :cond_10

    .line 159
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 160
    .restart local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_6

    .line 161
    move-object/from16 v19, v1

    goto/16 :goto_7

    .line 163
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 164
    if-lez v15, :cond_7

    if-lt v15, v9, :cond_7

    .line 165
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v4, v14

    .line 167
    :cond_7
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 168
    .local v14, "dimension":I
    iget-object v11, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v19, v1

    .end local v1    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v19, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 169
    .local v1, "treatAsFixed":Z
    :goto_4
    if-eqz v1, :cond_a

    .line 170
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v11, :cond_9

    iget-object v11, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v11, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v11, :cond_9

    .line 171
    return-void

    .line 173
    :cond_9
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    move/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "treatAsFixed":Z
    .local v20, "treatAsFixed":Z
    if-ne v11, v1, :cond_c

    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v1, :cond_c

    .line 174
    return-void

    .line 176
    .end local v20    # "treatAsFixed":Z
    .restart local v1    # "treatAsFixed":Z
    :cond_a
    move/from16 v20, v1

    .end local v1    # "treatAsFixed":Z
    .restart local v20    # "treatAsFixed":Z
    iget v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v11, 0x1

    if-ne v1, v11, :cond_b

    if-nez v12, :cond_b

    .line 177
    const/4 v1, 0x1

    .line 178
    .end local v20    # "treatAsFixed":Z
    .restart local v1    # "treatAsFixed":Z
    iget-object v11, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v14, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 179
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 180
    .end local v1    # "treatAsFixed":Z
    .restart local v20    # "treatAsFixed":Z
    :cond_b
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v1, :cond_c

    .line 181
    const/4 v1, 0x1

    .end local v20    # "treatAsFixed":Z
    .restart local v1    # "treatAsFixed":Z
    goto :goto_5

    .line 183
    .end local v1    # "treatAsFixed":Z
    .restart local v20    # "treatAsFixed":Z
    :cond_c
    move/from16 v1, v20

    .end local v20    # "treatAsFixed":Z
    .restart local v1    # "treatAsFixed":Z
    :goto_5
    if-nez v1, :cond_e

    .line 184
    add-int/lit8 v5, v5, 0x1

    .line 185
    iget-object v11, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    move/from16 v20, v1

    .end local v1    # "treatAsFixed":Z
    .restart local v20    # "treatAsFixed":Z
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    aget v1, v11, v1

    .line 186
    .local v1, "weight":F
    const/4 v11, 0x0

    cmpl-float v21, v1, v11

    if-ltz v21, :cond_d

    .line 187
    add-float/2addr v6, v1

    .line 189
    .end local v1    # "weight":F
    :cond_d
    goto :goto_6

    .line 190
    .end local v20    # "treatAsFixed":Z
    .local v1, "treatAsFixed":Z
    :cond_e
    move/from16 v20, v1

    .end local v1    # "treatAsFixed":Z
    .restart local v20    # "treatAsFixed":Z
    add-int/2addr v4, v14

    .line 192
    :goto_6
    add-int/lit8 v1, v8, -0x1

    if-ge v15, v1, :cond_f

    if-ge v15, v10, :cond_f

    .line 193
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v1, v1

    add-int/2addr v4, v1

    .line 158
    .end local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .end local v14    # "dimension":I
    .end local v20    # "treatAsFixed":Z
    :cond_f
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v19

    const/16 v11, 0x8

    goto/16 :goto_3

    .end local v19    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v1, "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_10
    move-object/from16 v19, v1

    .line 196
    .end local v1    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v15    # "i":I
    .restart local v19    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-lt v4, v3, :cond_13

    if-nez v5, :cond_11

    .line 197
    goto :goto_8

    .line 200
    :cond_11
    const/4 v7, 0x0

    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v4, 0x0

    .line 203
    const/4 v6, 0x0

    .line 157
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v19

    const/16 v11, 0x8

    goto/16 :goto_2

    .end local v19    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v1    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_12
    move-object/from16 v19, v1

    .line 206
    .end local v1    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "j":I
    .restart local v19    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_13
    :goto_8
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 207
    .local v1, "position":I
    if-eqz v2, :cond_14

    .line 208
    iget-object v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v11, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->value:I

    .line 210
    :cond_14
    const/high16 v11, 0x3f000000    # 0.5f

    if-le v4, v3, :cond_16

    .line 211
    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v2, :cond_15

    .line 212
    sub-int v13, v4, v3

    int-to-float v13, v13

    div-float/2addr v13, v12

    add-float/2addr v13, v11

    float-to-int v12, v13

    add-int/2addr v1, v12

    goto :goto_9

    .line 214
    :cond_15
    sub-int v13, v4, v3

    int-to-float v13, v13

    div-float/2addr v13, v12

    add-float/2addr v13, v11

    float-to-int v12, v13

    sub-int/2addr v1, v12

    .line 217
    :cond_16
    :goto_9
    const/4 v12, 0x0

    .line 218
    .local v12, "matchConstraintsDimension":I
    if-lez v5, :cond_28

    .line 219
    sub-int v13, v3, v4

    int-to-float v13, v13

    int-to-float v14, v5

    div-float/2addr v13, v14

    add-float/2addr v13, v11

    float-to-int v12, v13

    .line 221
    const/4 v13, 0x0

    .line 222
    .local v13, "appliedLimits":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    if-ge v14, v8, :cond_21

    .line 223
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 224
    .local v15, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v11, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    move/from16 v21, v1

    const/16 v1, 0x8

    .end local v1    # "position":I
    .local v21, "position":I
    if-ne v11, v1, :cond_17

    .line 225
    move/from16 v23, v2

    move/from16 v22, v4

    move/from16 v24, v6

    move/from16 v25, v12

    goto/16 :goto_e

    .line 227
    :cond_17
    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v11, :cond_20

    iget-object v1, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v1, :cond_20

    .line 228
    move v1, v12

    .line 229
    .local v1, "dimension":I
    const/4 v11, 0x0

    cmpl-float v18, v6, v11

    if-lez v18, :cond_18

    .line 230
    iget-object v11, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    move/from16 v22, v1

    .end local v1    # "dimension":I
    .local v22, "dimension":I
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    aget v1, v11, v1

    .line 231
    .local v1, "weight":F
    sub-int v11, v3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v1

    div-float/2addr v11, v6

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v11, v11, v20

    float-to-int v11, v11

    move v1, v11

    .end local v22    # "dimension":I
    .local v11, "dimension":I
    goto :goto_b

    .line 229
    .end local v11    # "dimension":I
    .local v1, "dimension":I
    :cond_18
    move/from16 v22, v1

    .line 233
    :goto_b
    iget v11, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v11, :cond_1c

    .line 234
    iget-object v11, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v11, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 235
    .local v11, "max":I
    move/from16 v22, v4

    .end local v4    # "size":I
    .local v22, "size":I
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 236
    .local v4, "min":I
    move/from16 v23, v1

    .line 237
    .local v23, "value":I
    move/from16 v24, v6

    .end local v6    # "weights":F
    .local v24, "weights":F
    iget v6, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v25, v12

    const/4 v12, 0x1

    .end local v12    # "matchConstraintsDimension":I
    .local v25, "matchConstraintsDimension":I
    if-ne v6, v12, :cond_19

    .line 238
    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    move/from16 v12, v23

    .end local v23    # "value":I
    .local v12, "value":I
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v23

    move/from16 v12, v23

    .end local v12    # "value":I
    .restart local v23    # "value":I
    goto :goto_c

    .line 237
    :cond_19
    move/from16 v12, v23

    .line 240
    .end local v23    # "value":I
    .restart local v12    # "value":I
    :goto_c
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 241
    .end local v12    # "value":I
    .local v6, "value":I
    if-lez v11, :cond_1a

    .line 242
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 244
    :cond_1a
    if-eq v6, v1, :cond_1b

    .line 245
    add-int/lit8 v13, v13, 0x1

    .line 246
    move v1, v6

    .line 248
    .end local v4    # "min":I
    .end local v6    # "value":I
    .end local v11    # "max":I
    :cond_1b
    move/from16 v23, v2

    goto :goto_d

    .line 249
    .end local v22    # "size":I
    .end local v24    # "weights":F
    .end local v25    # "matchConstraintsDimension":I
    .local v4, "size":I
    .local v6, "weights":F
    .local v12, "matchConstraintsDimension":I
    :cond_1c
    move/from16 v22, v4

    move/from16 v24, v6

    move/from16 v25, v12

    .end local v4    # "size":I
    .end local v6    # "weights":F
    .end local v12    # "matchConstraintsDimension":I
    .restart local v22    # "size":I
    .restart local v24    # "weights":F
    .restart local v25    # "matchConstraintsDimension":I
    iget-object v4, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 250
    .local v4, "max":I
    iget-object v6, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 251
    .local v6, "min":I
    move v11, v1

    .line 252
    .local v11, "value":I
    iget v12, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    move/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "isInRtl":Z
    .local v23, "isInRtl":Z
    if-ne v12, v2, :cond_1d

    .line 253
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 255
    :cond_1d
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 256
    .end local v11    # "value":I
    .local v2, "value":I
    if-lez v4, :cond_1e

    .line 257
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 260
    :cond_1e
    if-eq v2, v1, :cond_1f

    .line 261
    add-int/lit8 v13, v13, 0x1

    .line 262
    move v1, v2

    .line 265
    .end local v2    # "value":I
    .end local v4    # "max":I
    .end local v6    # "min":I
    :cond_1f
    :goto_d
    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_e

    .line 227
    .end local v1    # "dimension":I
    .end local v22    # "size":I
    .end local v23    # "isInRtl":Z
    .end local v24    # "weights":F
    .end local v25    # "matchConstraintsDimension":I
    .local v2, "isInRtl":Z
    .local v4, "size":I
    .local v6, "weights":F
    .restart local v12    # "matchConstraintsDimension":I
    :cond_20
    move/from16 v23, v2

    move/from16 v22, v4

    move/from16 v24, v6

    move/from16 v25, v12

    .line 222
    .end local v2    # "isInRtl":Z
    .end local v4    # "size":I
    .end local v6    # "weights":F
    .end local v12    # "matchConstraintsDimension":I
    .end local v15    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .restart local v22    # "size":I
    .restart local v23    # "isInRtl":Z
    .restart local v24    # "weights":F
    .restart local v25    # "matchConstraintsDimension":I
    :goto_e
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v21

    move/from16 v4, v22

    move/from16 v2, v23

    move/from16 v6, v24

    move/from16 v12, v25

    const/high16 v11, 0x3f000000    # 0.5f

    goto/16 :goto_a

    .end local v21    # "position":I
    .end local v22    # "size":I
    .end local v23    # "isInRtl":Z
    .end local v24    # "weights":F
    .end local v25    # "matchConstraintsDimension":I
    .local v1, "position":I
    .restart local v2    # "isInRtl":Z
    .restart local v4    # "size":I
    .restart local v6    # "weights":F
    .restart local v12    # "matchConstraintsDimension":I
    :cond_21
    move/from16 v21, v1

    move/from16 v23, v2

    move/from16 v22, v4

    move/from16 v24, v6

    move/from16 v25, v12

    .line 268
    .end local v1    # "position":I
    .end local v2    # "isInRtl":Z
    .end local v4    # "size":I
    .end local v6    # "weights":F
    .end local v12    # "matchConstraintsDimension":I
    .end local v14    # "i":I
    .restart local v21    # "position":I
    .restart local v22    # "size":I
    .restart local v23    # "isInRtl":Z
    .restart local v24    # "weights":F
    .restart local v25    # "matchConstraintsDimension":I
    if-lez v13, :cond_26

    .line 269
    sub-int/2addr v5, v13

    .line 271
    const/4 v1, 0x0

    .line 272
    .end local v22    # "size":I
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v8, :cond_25

    .line 273
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 274
    .local v4, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v11, 0x8

    if-ne v6, v11, :cond_22

    .line 275
    goto :goto_10

    .line 277
    :cond_22
    if-lez v2, :cond_23

    if-lt v2, v9, :cond_23

    .line 278
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v1, v6

    .line 280
    :cond_23
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    add-int/2addr v1, v6

    .line 281
    add-int/lit8 v6, v8, -0x1

    if-ge v2, v6, :cond_24

    if-ge v2, v10, :cond_24

    .line 282
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v6, v6, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v6, v6

    add-int/2addr v1, v6

    .line 272
    .end local v4    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    :cond_24
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_25
    move v4, v1

    goto :goto_11

    .line 268
    .end local v1    # "size":I
    .end local v2    # "i":I
    .restart local v22    # "size":I
    :cond_26
    move/from16 v4, v22

    .line 286
    .end local v22    # "size":I
    .local v4, "size":I
    :goto_11
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    if-nez v13, :cond_27

    .line 287
    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    .line 291
    .end local v13    # "appliedLimits":I
    :cond_27
    move/from16 v12, v25

    goto :goto_12

    .line 218
    .end local v21    # "position":I
    .end local v23    # "isInRtl":Z
    .end local v24    # "weights":F
    .end local v25    # "matchConstraintsDimension":I
    .local v1, "position":I
    .local v2, "isInRtl":Z
    .restart local v6    # "weights":F
    .restart local v12    # "matchConstraintsDimension":I
    :cond_28
    move/from16 v21, v1

    move/from16 v23, v2

    move/from16 v22, v4

    move/from16 v24, v6

    .line 291
    .end local v1    # "position":I
    .end local v2    # "isInRtl":Z
    .end local v6    # "weights":F
    .restart local v21    # "position":I
    .restart local v23    # "isInRtl":Z
    .restart local v24    # "weights":F
    :goto_12
    if-le v4, v3, :cond_29

    .line 292
    const/4 v1, 0x2

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    goto :goto_13

    .line 291
    :cond_29
    const/4 v1, 0x2

    .line 295
    :goto_13
    if-lez v7, :cond_2a

    if-nez v5, :cond_2a

    if-ne v9, v10, :cond_2a

    .line 297
    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    .line 300
    :cond_2a
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->chainStyle:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "gap":I
    if-le v7, v2, :cond_2b

    .line 303
    sub-int v6, v3, v4

    add-int/lit8 v11, v7, -0x1

    div-int v1, v6, v11

    goto :goto_14

    .line 304
    :cond_2b
    if-ne v7, v2, :cond_2c

    .line 305
    sub-int v2, v3, v4

    const/4 v6, 0x2

    div-int/lit8 v1, v2, 0x2

    .line 307
    :cond_2c
    :goto_14
    if-lez v5, :cond_2d

    .line 308
    const/4 v1, 0x0

    .line 310
    :cond_2d
    const/4 v2, 0x0

    move v6, v2

    move/from16 v2, v21

    .end local v21    # "position":I
    .local v2, "position":I
    .local v6, "i":I
    :goto_15
    if-ge v6, v8, :cond_3a

    .line 311
    move v11, v6

    .line 312
    .local v11, "index":I
    if-eqz v23, :cond_2e

    .line 313
    add-int/lit8 v13, v6, 0x1

    sub-int v11, v8, v13

    .line 315
    :cond_2e
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 316
    .local v13, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2f

    .line 317
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 318
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 319
    move/from16 v16, v1

    goto/16 :goto_1b

    .line 321
    :cond_2f
    if-lez v6, :cond_31

    .line 322
    if-eqz v23, :cond_30

    .line 323
    sub-int/2addr v2, v1

    goto :goto_16

    .line 325
    :cond_30
    add-int/2addr v2, v1

    .line 328
    :cond_31
    :goto_16
    if-lez v6, :cond_33

    if-lt v6, v9, :cond_33

    .line 329
    if-eqz v23, :cond_32

    .line 330
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v2, v14

    goto :goto_17

    .line 332
    :cond_32
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v2, v14

    .line 336
    :cond_33
    :goto_17
    if-eqz v23, :cond_34

    .line 337
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_18

    .line 339
    :cond_34
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 342
    :goto_18
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 343
    .local v14, "dimension":I
    iget-object v15, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v16, v1

    .end local v1    # "gap":I
    .local v16, "gap":I
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v1, :cond_35

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v15, 0x1

    if-ne v1, v15, :cond_35

    .line 345
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v14, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 347
    :cond_35
    if-eqz v23, :cond_36

    .line 348
    sub-int/2addr v2, v14

    goto :goto_19

    .line 350
    :cond_36
    add-int/2addr v2, v14

    .line 353
    :goto_19
    if-eqz v23, :cond_37

    .line 354
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_1a

    .line 356
    :cond_37
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 358
    :goto_1a
    const/4 v1, 0x1

    iput-boolean v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->resolved:Z

    .line 359
    add-int/lit8 v1, v8, -0x1

    if-ge v6, v1, :cond_39

    if-ge v6, v10, :cond_39

    .line 360
    if-eqz v23, :cond_38

    .line 361
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v1, v1

    sub-int/2addr v2, v1

    goto :goto_1b

    .line 363
    :cond_38
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v1, v1

    add-int/2addr v2, v1

    .line 310
    .end local v11    # "index":I
    .end local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .end local v14    # "dimension":I
    :cond_39
    :goto_1b
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v16

    goto/16 :goto_15

    .end local v16    # "gap":I
    .restart local v1    # "gap":I
    :cond_3a
    move/from16 v16, v1

    .line 367
    .end local v1    # "gap":I
    .end local v6    # "i":I
    move v1, v2

    goto/16 :goto_2c

    .end local v2    # "position":I
    .restart local v21    # "position":I
    :cond_3b
    if-nez v1, :cond_49

    .line 368
    sub-int v1, v3, v4

    add-int/lit8 v2, v7, 0x1

    div-int/2addr v1, v2

    .line 369
    .restart local v1    # "gap":I
    if-lez v5, :cond_3c

    .line 370
    const/4 v1, 0x0

    .line 372
    :cond_3c
    const/4 v2, 0x0

    move v6, v2

    move/from16 v2, v21

    .end local v21    # "position":I
    .restart local v2    # "position":I
    .restart local v6    # "i":I
    :goto_1c
    if-ge v6, v8, :cond_48

    .line 373
    move v11, v6

    .line 374
    .restart local v11    # "index":I
    if-eqz v23, :cond_3d

    .line 375
    add-int/lit8 v13, v6, 0x1

    sub-int v11, v8, v13

    .line 377
    :cond_3d
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 378
    .restart local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_3e

    .line 379
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 380
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 381
    move/from16 v16, v1

    goto :goto_22

    .line 383
    :cond_3e
    if-eqz v23, :cond_3f

    .line 384
    sub-int/2addr v2, v1

    goto :goto_1d

    .line 386
    :cond_3f
    add-int/2addr v2, v1

    .line 388
    :goto_1d
    if-lez v6, :cond_41

    if-lt v6, v9, :cond_41

    .line 389
    if-eqz v23, :cond_40

    .line 390
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v2, v14

    goto :goto_1e

    .line 392
    :cond_40
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v2, v14

    .line 396
    :cond_41
    :goto_1e
    if-eqz v23, :cond_42

    .line 397
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_1f

    .line 399
    :cond_42
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v14, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 402
    :goto_1f
    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 403
    .restart local v14    # "dimension":I
    iget-object v15, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v16, v1

    .end local v1    # "gap":I
    .restart local v16    # "gap":I
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v1, :cond_43

    iget v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v15, 0x1

    if-ne v1, v15, :cond_43

    .line 405
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 408
    :cond_43
    if-eqz v23, :cond_44

    .line 409
    sub-int/2addr v2, v14

    goto :goto_20

    .line 411
    :cond_44
    add-int/2addr v2, v14

    .line 414
    :goto_20
    if-eqz v23, :cond_45

    .line 415
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_21

    .line 417
    :cond_45
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 419
    :goto_21
    add-int/lit8 v1, v8, -0x1

    if-ge v6, v1, :cond_47

    if-ge v6, v10, :cond_47

    .line 420
    if-eqz v23, :cond_46

    .line 421
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v1, v1

    sub-int/2addr v2, v1

    goto :goto_22

    .line 423
    :cond_46
    iget-object v1, v13, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v1, v1

    add-int/2addr v2, v1

    .line 372
    .end local v11    # "index":I
    .end local v13    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .end local v14    # "dimension":I
    :cond_47
    :goto_22
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v16

    goto/16 :goto_1c

    .end local v16    # "gap":I
    .restart local v1    # "gap":I
    :cond_48
    move/from16 v16, v1

    .line 427
    .end local v1    # "gap":I
    .end local v6    # "i":I
    move v1, v2

    goto/16 :goto_2c

    .end local v2    # "position":I
    .restart local v21    # "position":I
    :cond_49
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    .line 428
    iget v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v1, :cond_4a

    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v1

    goto :goto_23

    :cond_4a
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 429
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v1

    :goto_23
    nop

    .line 430
    .local v1, "bias":F
    if-eqz v23, :cond_4b

    .line 431
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 433
    :cond_4b
    sub-int v2, v3, v4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 434
    .local v2, "gap":I
    if-ltz v2, :cond_4c

    if-lez v5, :cond_4d

    .line 435
    :cond_4c
    const/4 v2, 0x0

    .line 437
    :cond_4d
    if-eqz v23, :cond_4e

    .line 438
    sub-int v6, v21, v2

    .end local v21    # "position":I
    .local v6, "position":I
    goto :goto_24

    .line 440
    .end local v6    # "position":I
    .restart local v21    # "position":I
    :cond_4e
    add-int v6, v21, v2

    .line 442
    .end local v21    # "position":I
    .restart local v6    # "position":I
    :goto_24
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_25
    if-ge v11, v8, :cond_5a

    .line 443
    move v13, v11

    .line 444
    .local v13, "index":I
    if-eqz v23, :cond_4f

    .line 445
    add-int/lit8 v14, v11, 0x1

    sub-int v13, v8, v14

    .line 447
    :cond_4f
    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;

    .line 448
    .local v14, "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v15

    const/16 v0, 0x8

    if-ne v15, v0, :cond_50

    .line 449
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v15, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 450
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v15, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 451
    move/from16 v16, v1

    const/4 v1, 0x1

    goto :goto_2b

    .line 453
    :cond_50
    if-lez v11, :cond_52

    if-lt v11, v9, :cond_52

    .line 454
    if-eqz v23, :cond_51

    .line 455
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v6, v15

    goto :goto_26

    .line 457
    :cond_51
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v6, v15

    .line 460
    :cond_52
    :goto_26
    if-eqz v23, :cond_53

    .line 461
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v15, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_27

    .line 463
    :cond_53
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v15, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 466
    :goto_27
    iget-object v15, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->value:I

    .line 467
    .local v15, "dimension":I
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v16, v1

    .end local v1    # "bias":F
    .local v16, "bias":F
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_54

    iget v0, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    .line 469
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_28

    .line 467
    :cond_54
    const/4 v1, 0x1

    .line 471
    :cond_55
    :goto_28
    if-eqz v23, :cond_56

    .line 472
    sub-int/2addr v6, v15

    goto :goto_29

    .line 474
    :cond_56
    add-int/2addr v6, v15

    .line 477
    :goto_29
    if-eqz v23, :cond_57

    .line 478
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    goto :goto_2a

    .line 480
    :cond_57
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 482
    :goto_2a
    add-int/lit8 v0, v8, -0x1

    if-ge v11, v0, :cond_59

    if-ge v11, v10, :cond_59

    .line 483
    if-eqz v23, :cond_58

    .line 484
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v0, v0

    sub-int/2addr v6, v0

    goto :goto_2b

    .line 486
    :cond_58
    iget-object v0, v14, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyNode;->margin:I

    neg-int v0, v0

    add-int/2addr v6, v0

    .line 442
    .end local v13    # "index":I
    .end local v14    # "run":Landroidx/constraintlayout/solver/widgets/analyzer/WidgetRun;
    .end local v15    # "dimension":I
    :cond_59
    :goto_2b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto/16 :goto_25

    .end local v16    # "bias":F
    .restart local v1    # "bias":F
    :cond_5a
    move/from16 v16, v1

    .end local v1    # "bias":F
    .restart local v16    # "bias":F
    move v1, v6

    goto :goto_2c

    .line 427
    .end local v2    # "gap":I
    .end local v6    # "position":I
    .end local v11    # "i":I
    .end local v16    # "bias":F
    .restart local v21    # "position":I
    :cond_5b
    move/from16 v1, v21

    .line 491
    .end local v21    # "position":I
    .local v1, "position":I
    :goto_2c
    return-void

    .line 123
    .end local v1    # "position":I
    .end local v3    # "distance":I
    .end local v4    # "size":I
    .end local v5    # "numMatchConstraints":I
    .end local v7    # "numVisibleWidgets":I
    .end local v8    # "count":I
    .end local v9    # "firstVisibleWidget":I
    .end local v10    # "lastVisibleWidget":I
    .end local v12    # "matchConstraintsDimension":I
    .end local v19    # "parent":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v23    # "isInRtl":Z
    .end local v24    # "weights":F
    :cond_5c
    :goto_2d
    return-void
.end method
