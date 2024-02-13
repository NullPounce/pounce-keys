.class Landroidx/activity/OnBackPressedDispatcher$Api33Impl;
.super Ljava/lang/Object;
.source "OnBackPressedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createOnBackInvokedCallback(Ljava/lang/Runnable;)Landroid/window/OnBackInvokedCallback;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 344
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/activity/OnBackPressedDispatcher$Api33Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p0, "dispatcher"    # Ljava/lang/Object;
    .param p1, "priority"    # I
    .param p2, "callback"    # Ljava/lang/Object;

    .line 331
    move-object v0, p0

    check-cast v0, Landroid/window/OnBackInvokedDispatcher;

    .line 332
    .local v0, "onBackInvokedDispatcher":Landroid/window/OnBackInvokedDispatcher;
    move-object v1, p2

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    .line 333
    .local v1, "onBackInvokedCallback":Landroid/window/OnBackInvokedCallback;
    invoke-interface {v0, p1, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 334
    return-void
.end method

.method static unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "dispatcher"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/Object;

    .line 338
    move-object v0, p0

    check-cast v0, Landroid/window/OnBackInvokedDispatcher;

    .line 339
    .local v0, "onBackInvokedDispatcher":Landroid/window/OnBackInvokedDispatcher;
    move-object v1, p1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    .line 340
    .local v1, "onBackInvokedCallback":Landroid/window/OnBackInvokedCallback;
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 341
    return-void
.end method
