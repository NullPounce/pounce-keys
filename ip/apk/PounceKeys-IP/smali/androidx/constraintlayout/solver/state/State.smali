.class public Landroidx/constraintlayout/solver/state/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/state/State$Chain;,
        Landroidx/constraintlayout/solver/state/State$Helper;,
        Landroidx/constraintlayout/solver/state/State$Direction;,
        Landroidx/constraintlayout/solver/state/State$Constraint;
    }
.end annotation


# static fields
.field static final CONSTRAINT_RATIO:I = 0x2

.field static final CONSTRAINT_SPREAD:I = 0x0

.field static final CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT:Ljava/lang/Integer;

.field static final UNKNOWN:I = -0x1


# instance fields
.field protected mHelperReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/solver/state/HelperReference;",
            ">;"
        }
    .end annotation
.end field

.field public final mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

.field protected mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/solver/state/Reference;",
            ">;"
        }
    .end annotation
.end field

.field private numHelpers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    .line 96
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    sget-object v2, Landroidx/constraintlayout/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private createHelperKey()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__HELPER_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/state/State;->numHelpers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 9
    .param p1, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 265
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 266
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 267
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/solver/state/Dimension;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/solver/state/Dimension;->apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    .line 268
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/HelperReference;

    .line 270
    .local v2, "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v3

    .line 271
    .local v3, "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    if-eqz v3, :cond_1

    .line 272
    iget-object v4, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/state/Reference;

    .line 273
    .local v4, "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    if-nez v4, :cond_0

    .line 274
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v4

    .line 276
    :cond_0
    invoke-interface {v4, v3}, Landroidx/constraintlayout/solver/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 278
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .end local v3    # "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    .end local v4    # "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    :cond_1
    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 280
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/Reference;

    .line 281
    .local v2, "reference":Landroidx/constraintlayout/solver/state/Reference;
    iget-object v3, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    if-eq v2, v3, :cond_4

    .line 282
    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 283
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 284
    instance-of v4, v2, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    if-eqz v4, :cond_3

    .line 286
    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->apply()V

    .line 288
    :cond_3
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 289
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_2

    .line 290
    :cond_4
    invoke-interface {v2, p1}, Landroidx/constraintlayout/solver/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 292
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/Reference;
    :goto_2
    goto :goto_1

    .line 293
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 294
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/HelperReference;

    .line 295
    .local v2, "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v3

    .line 296
    .local v3, "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    if-eqz v3, :cond_7

    .line 297
    iget-object v4, v2, Landroidx/constraintlayout/solver/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 298
    .local v5, "keyRef":Ljava/lang/Object;
    iget-object v6, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/solver/state/Reference;

    .line 299
    .local v6, "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/solver/widgets/HelperWidget;

    move-result-object v7

    invoke-interface {v6}, Landroidx/constraintlayout/solver/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/HelperWidget;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 300
    .end local v5    # "keyRef":Ljava/lang/Object;
    .end local v6    # "constraintReference":Landroidx/constraintlayout/solver/state/Reference;
    goto :goto_4

    .line 301
    :cond_6
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/state/HelperReference;->apply()V

    .line 303
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    .end local v3    # "helperWidget":Landroidx/constraintlayout/solver/widgets/HelperWidget;
    :cond_7
    goto :goto_3

    .line 304
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 305
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/state/Reference;

    .line 306
    .local v2, "reference":Landroidx/constraintlayout/solver/state/Reference;
    invoke-interface {v2}, Landroidx/constraintlayout/solver/state/Reference;->apply()V

    .line 307
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/Reference;
    goto :goto_5

    .line 308
    :cond_9
    return-void
.end method

.method public barrier(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Direction;)Landroidx/constraintlayout/solver/state/helpers/BarrierReference;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "direction"    # Landroidx/constraintlayout/solver/state/State$Direction;

    .line 223
    sget-object v0, Landroidx/constraintlayout/solver/state/State$Helper;->BARRIER:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;

    .line 224
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/BarrierReference;
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/solver/state/State$Direction;)V

    .line 225
    return-object v0
.end method

.method public varargs centerHorizontally([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;
    .locals 2
    .param p1, "references"    # [Ljava/lang/Object;

    .line 241
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;

    .line 242
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 243
    return-object v0
.end method

.method public varargs centerVertically([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;
    .locals 2
    .param p1, "references"    # [Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;

    .line 248
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 249
    return-object v0
.end method

.method public constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    .line 155
    .local v0, "reference":Landroidx/constraintlayout/solver/state/Reference;
    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    .line 157
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {v0, p1}, Landroidx/constraintlayout/solver/state/Reference;->setKey(Ljava/lang/Object;)V

    .line 160
    :cond_0
    instance-of v1, v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    if-eqz v1, :cond_1

    .line 161
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/state/ConstraintReference;

    return-object v1

    .line 163
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public convertDimension(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 112
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 113
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    .line 115
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 116
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 128
    new-instance v0, Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/state/ConstraintReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    return-object v0
.end method

.method public directMapping()V
    .locals 3

    .line 253
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 254
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v2

    .line 255
    .local v2, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 256
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "orientation"    # I

    .line 211
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    .line 212
    .local v0, "reference":Landroidx/constraintlayout/solver/state/Reference;
    if-nez v0, :cond_0

    .line 213
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    .line 214
    .local v1, "guidelineReference":Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->setOrientation(I)V

    .line 215
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->setKey(Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object v0, v1

    .line 219
    .end local v1    # "guidelineReference":Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    return-object v1
.end method

.method public height(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 136
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;

    move-result-object v0

    return-object v0
.end method

.method public helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "type"    # Landroidx/constraintlayout/solver/state/State$Helper;

    .line 172
    if-nez p1, :cond_0

    .line 173
    invoke-direct {p0}, Landroidx/constraintlayout/solver/state/State;->createHelperKey()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/HelperReference;

    .line 176
    .local v0, "reference":Landroidx/constraintlayout/solver/state/HelperReference;
    if-nez v0, :cond_1

    .line 177
    sget-object v1, Landroidx/constraintlayout/solver/state/State$1;->$SwitchMap$androidx$constraintlayout$solver$state$State$Helper:[I

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/state/State$Helper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 194
    new-instance v1, Landroidx/constraintlayout/solver/state/HelperReference;

    invoke-direct {v1, p0, p2}, Landroidx/constraintlayout/solver/state/HelperReference;-><init>(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/state/State$Helper;)V

    move-object v0, v1

    goto :goto_0

    .line 191
    :pswitch_0
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    .line 192
    goto :goto_0

    .line 188
    :pswitch_1
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/AlignVerticallyReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 185
    :pswitch_2
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/AlignHorizontallyReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    .line 186
    goto :goto_0

    .line 182
    :pswitch_3
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    .line 183
    goto :goto_0

    .line 179
    :pswitch_4
    new-instance v1, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;-><init>(Landroidx/constraintlayout/solver/state/State;)V

    move-object v0, v1

    .line 180
    nop

    .line 197
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs horizontalChain([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
    .locals 2
    .param p1, "references"    # [Ljava/lang/Object;

    .line 235
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;

    .line 236
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/HorizontalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 237
    return-object v0
.end method

.method public horizontalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "view"    # Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    move-result-object v0

    .line 261
    .local v0, "reference":Landroidx/constraintlayout/solver/state/ConstraintReference;
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method reference(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Reference;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/Reference;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 101
    return-void
.end method

.method public setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 145
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 146
    return-object p0
.end method

.method public setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 140
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/State;->mParent:Landroidx/constraintlayout/solver/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/ConstraintReference;

    .line 141
    return-object p0
.end method

.method public varargs verticalChain([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;
    .locals 2
    .param p1, "references"    # [Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/solver/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/solver/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/solver/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/solver/state/State$Helper;)Landroidx/constraintlayout/solver/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;

    .line 230
    .local v0, "reference":Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/helpers/VerticalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/HelperReference;

    .line 231
    return-object v0
.end method

.method public verticalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public width(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;
    .locals 1
    .param p1, "dimension"    # Landroidx/constraintlayout/solver/state/Dimension;

    .line 132
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/state/State;->setWidth(Landroidx/constraintlayout/solver/state/Dimension;)Landroidx/constraintlayout/solver/state/State;

    move-result-object v0

    return-object v0
.end method
