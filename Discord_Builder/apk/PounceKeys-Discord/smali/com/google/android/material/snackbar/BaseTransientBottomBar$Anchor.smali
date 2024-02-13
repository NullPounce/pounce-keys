.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Anchor"
.end annotation


# instance fields
.field private final anchorView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final transientBottomBar:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;Landroid/view/View;)V
    .locals 1
    .param p1, "transientBottomBar"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .param p2, "anchorView"    # Landroid/view/View;

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->transientBottomBar:Ljava/lang/ref/WeakReference;

    .line 1433
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->anchorView:Ljava/lang/ref/WeakReference;

    .line 1434
    return-void
.end method

.method static anchor(Lcom/google/android/material/snackbar/BaseTransientBottomBar;Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;
    .locals 2
    .param p0, "transientBottomBar"    # Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .param p1, "anchorView"    # Landroid/view/View;

    .line 1422
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;Landroid/view/View;)V

    .line 1423
    .local v0, "anchor":Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1424
    invoke-static {p1, v0}, Lcom/google/android/material/internal/ViewUtils;->addOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1426
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1427
    return-object v0
.end method

.method private unanchorIfNoTransientBottomBar()Z
    .locals 1

    .line 1467
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->transientBottomBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->unanchor()V

    .line 1469
    const/4 v0, 0x1

    return v0

    .line 1471
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getAnchorView()Landroid/view/View;
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->anchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 1454
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->unanchorIfNoTransientBottomBar()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->transientBottomBar:Ljava/lang/ref/WeakReference;

    .line 1455
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1800(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->transientBottomBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1900(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 1459
    return-void

    .line 1456
    :cond_1
    :goto_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .line 1438
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->unanchorIfNoTransientBottomBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1439
    return-void

    .line 1441
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ViewUtils;->addOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1442
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .line 1446
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->unanchorIfNoTransientBottomBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    return-void

    .line 1449
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/material/internal/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1450
    return-void
.end method

.method unanchor()V
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->anchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->anchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1477
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->anchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p0}, Lcom/google/android/material/internal/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->anchorView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1480
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Anchor;->transientBottomBar:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1481
    return-void
.end method
