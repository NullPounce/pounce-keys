.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$Api33Impl;,
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
    }
.end annotation


# instance fields
.field private mBackInvokedCallbackRegistered:Z

.field private mEnabledConsumer:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFallbackOnBackPressed:Ljava/lang/Runnable;

.field private mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field final mOnBackPressedCallbacks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/activity/OnBackPressedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "fallbackOnBackPressed"    # Ljava/lang/Runnable;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    .line 123
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    .line 124
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    .line 130
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/activity/OnBackPressedDispatcher;)V

    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->createOnBackInvokedCallback(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 132
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Landroidx/activity/OnBackPressedCallback;)V
    .locals 0
    .param p1, "onBackPressedCallback"    # Landroidx/activity/OnBackPressedCallback;

    .line 150
    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedDispatcher;->addCancellableCallback(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;

    .line 151
    return-void
.end method

.method public addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V
    .locals 3
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "onBackPressedCallback"    # Landroidx/activity/OnBackPressedCallback;

    .line 207
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 208
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    new-instance v1, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v1, p0, v0, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/Lifecycle;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p2, v1}, Landroidx/activity/OnBackPressedCallback;->addCancellable(Landroidx/activity/Cancellable;)V

    .line 214
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    .line 216
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    invoke-virtual {p2, v1}, Landroidx/activity/OnBackPressedCallback;->setIsEnabledConsumer(Landroidx/core/util/Consumer;)V

    .line 218
    :cond_1
    return-void
.end method

.method addCancellableCallback(Landroidx/activity/OnBackPressedCallback;)Landroidx/activity/Cancellable;
    .locals 2
    .param p1, "onBackPressedCallback"    # Landroidx/activity/OnBackPressedCallback;

    .line 168
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;

    invoke-direct {v0, p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/activity/OnBackPressedCallback;)V

    .line 170
    .local v0, "cancellable":Landroidx/activity/OnBackPressedDispatcher$OnBackPressedCancellable;
    invoke-virtual {p1, v0}, Landroidx/activity/OnBackPressedCallback;->addCancellable(Landroidx/activity/Cancellable;)V

    .line 171
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    .line 173
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mEnabledConsumer:Landroidx/core/util/Consumer;

    invoke-virtual {p1, v1}, Landroidx/activity/OnBackPressedCallback;->setIsEnabledConsumer(Landroidx/core/util/Consumer;)V

    .line 175
    :cond_0
    return-object v0
.end method

.method public hasEnabledCallbacks()Z
    .locals 2

    .line 228
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    .line 229
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 230
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/activity/OnBackPressedCallback;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x1

    return v1

    .line 235
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$new$0$androidx-activity-OnBackPressedDispatcher(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 126
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    .line 129
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 250
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackPressedCallbacks:Ljava/util/ArrayDeque;

    .line 251
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 252
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/activity/OnBackPressedCallback;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    .line 254
    .local v1, "callback":Landroidx/activity/OnBackPressedCallback;
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->handleOnBackPressed()V

    .line 256
    return-void

    .line 258
    .end local v1    # "callback":Landroidx/activity/OnBackPressedCallback;
    :cond_0
    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mFallbackOnBackPressed:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 260
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 262
    :cond_2
    return-void
.end method

.method public setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0
    .param p1, "invoker"    # Landroid/window/OnBackInvokedDispatcher;

    .line 83
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    .line 84
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->updateBackInvokedCallbackState()V

    .line 85
    return-void
.end method

.method updateBackInvokedCallbackState()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->hasEnabledCallbacks()Z

    move-result v0

    .line 90
    .local v0, "shouldBeRegistered":Z
    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_1

    .line 91
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    if-nez v3, :cond_0

    .line 92
    iget-object v3, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1, v2, v3}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    goto :goto_0

    .line 98
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Landroidx/activity/OnBackPressedDispatcher;->mOnBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-static {v1, v3}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    iput-boolean v2, p0, Landroidx/activity/OnBackPressedDispatcher;->mBackInvokedCallbackRegistered:Z

    .line 104
    :cond_1
    :goto_0
    return-void
.end method
