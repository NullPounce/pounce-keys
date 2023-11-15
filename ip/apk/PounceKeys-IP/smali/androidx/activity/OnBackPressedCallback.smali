.class public abstract Landroidx/activity/OnBackPressedCallback;
.super Ljava/lang/Object;
.source "OnBackPressedCallback.java"


# instance fields
.field private mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/activity/Cancellable;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mEnabledConsumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedCallback;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback;->mEnabled:Z

    .line 61
    return-void
.end method


# virtual methods
.method addCancellable(Landroidx/activity/Cancellable;)V
    .locals 1
    .param p1, "cancellable"    # Landroidx/activity/Cancellable;

    .line 112
    iget-object v0, p0, Landroidx/activity/OnBackPressedCallback;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public abstract handleOnBackPressed()V
.end method

.method public final isEnabled()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Landroidx/activity/OnBackPressedCallback;->mEnabled:Z

    return v0
.end method

.method public final remove()V
    .locals 2

    .line 100
    iget-object v0, p0, Landroidx/activity/OnBackPressedCallback;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/Cancellable;

    .line 101
    .local v1, "cancellable":Landroidx/activity/Cancellable;
    invoke-interface {v1}, Landroidx/activity/Cancellable;->cancel()V

    .line 102
    .end local v1    # "cancellable":Landroidx/activity/Cancellable;
    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method removeCancellable(Landroidx/activity/Cancellable;)V
    .locals 1
    .param p1, "cancellable"    # Landroidx/activity/Cancellable;

    .line 116
    iget-object v0, p0, Landroidx/activity/OnBackPressedCallback;->mCancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 77
    iput-boolean p1, p0, Landroidx/activity/OnBackPressedCallback;->mEnabled:Z

    .line 78
    iget-object v0, p0, Landroidx/activity/OnBackPressedCallback;->mEnabledConsumer:Landroidx/core/util/Consumer;

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-void
.end method

.method setIsEnabledConsumer(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "isEnabled":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Landroidx/activity/OnBackPressedCallback;->mEnabledConsumer:Landroidx/core/util/Consumer;

    .line 121
    return-void
.end method
