.class public Landroidx/core/view/MenuHostHelper;
.super Ljava/lang/Object;
.source "MenuHostHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/MenuHostHelper$LifecycleContainer;
    }
.end annotation


# instance fields
.field private final mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/core/view/MenuProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnInvalidateMenuCallback:Ljava/lang/Runnable;

.field private final mProviderToLifecycleContainers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/core/view/MenuProvider;",
            "Landroidx/core/view/MenuHostHelper$LifecycleContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onInvalidateMenuCallback"    # Ljava/lang/Runnable;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/util/Map;

    .line 67
    iput-object p1, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Runnable;

    .line 68
    return-void
.end method


# virtual methods
.method public addMenuProvider(Landroidx/core/view/MenuProvider;)V
    .locals 1
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;

    .line 132
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 134
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;
    .param p2, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 146
    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 147
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 148
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/MenuHostHelper$LifecycleContainer;

    .line 149
    .local v1, "lifecycleContainer":Landroidx/core/view/MenuHostHelper$LifecycleContainer;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->clearObservers()V

    .line 152
    :cond_0
    new-instance v2, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/MenuHostHelper;Landroidx/core/view/MenuProvider;)V

    .line 157
    .local v2, "observer":Landroidx/lifecycle/LifecycleEventObserver;
    iget-object v3, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/util/Map;

    new-instance v4, Landroidx/core/view/MenuHostHelper$LifecycleContainer;

    invoke-direct {v4, v0, v2}, Landroidx/core/view/MenuHostHelper$LifecycleContainer;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 5
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;
    .param p2, "owner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 175
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 176
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/MenuHostHelper$LifecycleContainer;

    .line 177
    .local v1, "lifecycleContainer":Landroidx/core/view/MenuHostHelper$LifecycleContainer;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->clearObservers()V

    .line 180
    :cond_0
    new-instance v2, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p3, p1}, Landroidx/core/view/MenuHostHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/core/view/MenuHostHelper;Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/MenuProvider;)V

    .line 190
    .local v2, "observer":Landroidx/lifecycle/LifecycleEventObserver;
    iget-object v3, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/util/Map;

    new-instance v4, Landroidx/core/view/MenuHostHelper$LifecycleContainer;

    invoke-direct {v4, v0, v2}, Landroidx/core/view/MenuHostHelper$LifecycleContainer;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method synthetic lambda$addMenuProvider$0$androidx-core-view-MenuHostHelper(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;
    .param p2, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 153
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p3, v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 156
    :cond_0
    return-void
.end method

.method synthetic lambda$addMenuProvider$1$androidx-core-view-MenuHostHelper(Landroidx/lifecycle/Lifecycle$State;Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;
    .param p2, "provider"    # Landroidx/core/view/MenuProvider;
    .param p3, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p4, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 181
    invoke-static {p1}, Landroidx/lifecycle/Lifecycle$Event;->upTo(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    if-ne p4, v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Landroidx/core/view/MenuHostHelper;->addMenuProvider(Landroidx/core/view/MenuProvider;)V

    goto :goto_0

    .line 183
    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p4, v0, :cond_1

    .line 184
    invoke-virtual {p0, p2}, Landroidx/core/view/MenuHostHelper;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {p1}, Landroidx/lifecycle/Lifecycle$Event;->downFrom(Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    if-ne p4, v0, :cond_2

    .line 186
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 189
    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 92
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/MenuProvider;

    .line 93
    .local v1, "menuProvider":Landroidx/core/view/MenuProvider;
    invoke-interface {v1, p1, p2}, Landroidx/core/view/MenuProvider;->onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 94
    .end local v1    # "menuProvider":Landroidx/core/view/MenuProvider;
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public onMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 121
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/MenuProvider;

    .line 122
    .local v1, "menuProvider":Landroidx/core/view/MenuProvider;
    invoke-interface {v1, p1}, Landroidx/core/view/MenuProvider;->onMenuClosed(Landroid/view/Menu;)V

    .line 123
    .end local v1    # "menuProvider":Landroidx/core/view/MenuProvider;
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 106
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/MenuProvider;

    .line 107
    .local v1, "menuProvider":Landroidx/core/view/MenuProvider;
    invoke-interface {v1, p1}, Landroidx/core/view/MenuProvider;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    .end local v1    # "menuProvider":Landroidx/core/view/MenuProvider;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 79
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/MenuProvider;

    .line 80
    .local v1, "menuProvider":Landroidx/core/view/MenuProvider;
    invoke-interface {v1, p1}, Landroidx/core/view/MenuProvider;->onPrepareMenu(Landroid/view/Menu;)V

    .line 81
    .end local v1    # "menuProvider":Landroidx/core/view/MenuProvider;
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method public removeMenuProvider(Landroidx/core/view/MenuProvider;)V
    .locals 2
    .param p1, "provider"    # Landroidx/core/view/MenuProvider;

    .line 199
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/MenuHostHelper$LifecycleContainer;

    .line 201
    .local v0, "lifecycleContainer":Landroidx/core/view/MenuHostHelper$LifecycleContainer;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroidx/core/view/MenuHostHelper$LifecycleContainer;->clearObservers()V

    .line 204
    :cond_0
    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 205
    return-void
.end method
