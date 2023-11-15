.class public Lcom/google/android/material/internal/CheckableGroup;
.super Ljava/lang/Object;
.source "CheckableGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/material/internal/MaterialCheckable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final checkables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final checkedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onCheckedStateChangeListener:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

.field private selectionRequired:Z

.field private singleSelection:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/internal/CheckableGroup;
    .param p1, "x1"    # Lcom/google/android/material/internal/MaterialCheckable;

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/internal/CheckableGroup;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/internal/CheckableGroup;

    .line 43
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/internal/CheckableGroup;
    .param p1, "x1"    # Lcom/google/android/material/internal/MaterialCheckable;
    .param p2, "x2"    # Z

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/internal/CheckableGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/internal/CheckableGroup;

    .line 43
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    return-void
.end method

.method private checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MaterialCheckable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    .local p1, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "Lcom/google/android/material/internal/MaterialCheckable<TT;>;"
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v0

    .line 150
    .local v0, "id":I
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 151
    return v2

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getSingleCheckedId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/MaterialCheckable;

    .line 154
    .local v1, "singleCheckedItem":Lcom/google/android/material/internal/MaterialCheckable;, "Lcom/google/android/material/internal/MaterialCheckable<TT;>;"
    if-eqz v1, :cond_1

    .line 155
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    .line 157
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 158
    .local v2, "checkedStateChanged":Z
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 159
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Lcom/google/android/material/internal/MaterialCheckable;->setChecked(Z)V

    .line 161
    :cond_2
    return v2
.end method

.method private onCheckedStateChanged()V
    .locals 2

    .line 183
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;->onCheckedStateChanged(Ljava/util/Set;)V

    .line 186
    :cond_0
    return-void
.end method

.method private uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z
    .locals 5
    .param p2, "selectionRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MaterialCheckable<",
            "TT;>;Z)Z"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    .local p1, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "Lcom/google/android/material/internal/MaterialCheckable<TT;>;"
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v0

    .line 167
    .local v0, "id":I
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 168
    return v2

    .line 170
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-interface {p1, v3}, Lcom/google/android/material/internal/MaterialCheckable;->setChecked(Z)V

    .line 173
    return v2

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 176
    .local v1, "checkedStateChanged":Z
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-interface {p1, v2}, Lcom/google/android/material/internal/MaterialCheckable;->setChecked(Z)V

    .line 179
    :cond_2
    return v1
.end method


# virtual methods
.method public addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    .local p1, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    .line 79
    :cond_0
    new-instance v0, Lcom/google/android/material/internal/CheckableGroup$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/CheckableGroup$1;-><init>(Lcom/google/android/material/internal/CheckableGroup;)V

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    .line 87
    return-void
.end method

.method public check(I)V
    .locals 2
    .param p1, "id"    # I

    .line 96
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/MaterialCheckable;

    .line 97
    .local v0, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "Lcom/google/android/material/internal/MaterialCheckable<TT;>;"
    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    .line 103
    :cond_1
    return-void
.end method

.method public clearCheck()V
    .locals 4

    .line 116
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 117
    .local v0, "checkedStateChanged":Z
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/MaterialCheckable;

    .line 118
    .local v2, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "Lcom/google/android/material/internal/MaterialCheckable<TT;>;"
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    .line 119
    .end local v2    # "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "Lcom/google/android/material/internal/MaterialCheckable<TT;>;"
    goto :goto_0

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    .line 123
    :cond_1
    return-void
.end method

.method public getCheckedIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCheckedIdsSortedByChildOrder(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->getCheckedIds()Ljava/util/Set;

    move-result-object v0

    .line 138
    .local v0, "checkedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "sortedCheckedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 140
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/google/android/material/internal/MaterialCheckable;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getSingleCheckedId()I
    .locals 1

    .line 127
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isSelectionRequired()Z
    .locals 1

    .line 67
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    .line 59
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    return v0
.end method

.method public removeCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    .local p1, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "TT;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/MaterialCheckable;->setInternalOnCheckedChangeListener(Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkedIds:Ljava/util/Set;

    invoke-interface {p1}, Lcom/google/android/material/internal/MaterialCheckable;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public setOnCheckedStateChangeListener(Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    .line 71
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChangeListener:Lcom/google/android/material/internal/CheckableGroup$OnCheckedStateChangeListener;

    .line 72
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "selectionRequired"    # Z

    .line 63
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    .line 64
    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1
    .param p1, "singleSelection"    # Z

    .line 52
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/internal/CheckableGroup;->singleSelection:Z

    .line 54
    invoke-virtual {p0}, Lcom/google/android/material/internal/CheckableGroup;->clearCheck()V

    .line 56
    :cond_0
    return-void
.end method

.method public uncheck(I)V
    .locals 2
    .param p1, "id"    # I

    .line 106
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup;, "Lcom/google/android/material/internal/CheckableGroup<TT;>;"
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup;->checkables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/MaterialCheckable;

    .line 107
    .local v0, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "Lcom/google/android/material/internal/MaterialCheckable<TT;>;"
    if-nez v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V

    .line 113
    :cond_1
    return-void
.end method
