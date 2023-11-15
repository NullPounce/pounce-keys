.class public Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;
.super Landroid/app/SharedElementCallback;
.source "MaterialContainerTransformSharedElementCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    }
.end annotation


# static fields
.field private static capturedSharedElement:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entering:Z

.field private returnEndBounds:Landroid/graphics/Rect;

.field private shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

.field private sharedElementReenterTransitionEnabled:Z

.field private transparentWindowBackgroundEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 58
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 61
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeableViewShapeProvider;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    return-void
.end method

.method static synthetic access$000(Landroid/view/Window;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/Window;

    .line 53
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->removeWindowBackground(Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/Window;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/Window;

    .line 53
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->restoreWindowBackground(Landroid/view/Window;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 53
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ref/WeakReference;

    .line 53
    sput-object p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static getWindowBackground(Landroid/view/Window;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "window"    # Landroid/view/Window;

    .line 328
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static removeWindowBackground(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 302
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->getWindowBackground(Landroid/view/Window;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    .local v0, "windowBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    nop

    .line 307
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    .line 309
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroidx/core/graphics/BlendModeColorFilterCompat;->createBlendModeColorFilterCompat(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 308
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 311
    return-void
.end method

.method private static restoreWindowBackground(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 319
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->getWindowBackground(Landroid/view/Window;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 320
    .local v0, "windowBackground":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 324
    return-void
.end method

.method private setUpEnterTransform(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .line 232
    invoke-virtual {p1}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 233
    .local v0, "transition":Landroid/transition/Transition;
    instance-of v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    if-eqz v1, :cond_1

    .line 234
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 235
    .local v1, "transform":Lcom/google/android/material/transition/platform/MaterialContainerTransform;
    iget-boolean v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    if-nez v2, :cond_0

    .line 236
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/Window;->setSharedElementReenterTransition(Landroid/transition/Transition;)V

    .line 238
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    if-eqz v2, :cond_1

    .line 239
    invoke-static {p1, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V

    .line 240
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 254
    .end local v1    # "transform":Lcom/google/android/material/transition/platform/MaterialContainerTransform;
    :cond_1
    return-void
.end method

.method private setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "window"    # Landroid/view/Window;

    .line 257
    invoke-virtual {p2}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 258
    .local v0, "transition":Landroid/transition/Transition;
    instance-of v1, v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    if-eqz v1, :cond_0

    .line 259
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 260
    .local v1, "transform":Lcom/google/android/material/transition/platform/MaterialContainerTransform;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->setHoldAtEndEnabled(Z)V

    .line 261
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 279
    iget-boolean v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    if-eqz v2, :cond_0

    .line 280
    invoke-static {p2, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V

    .line 281
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$3;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;Landroid/view/Window;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 290
    .end local v1    # "transform":Lcom/google/android/material/transition/platform/MaterialContainerTransform;
    :cond_0
    return-void
.end method

.method private static updateBackgroundFadeDuration(Landroid/view/Window;Lcom/google/android/material/transition/platform/MaterialContainerTransform;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "transform"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 337
    invoke-virtual {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 338
    invoke-virtual {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setTransitionBackgroundFadeDuration(J)V

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public getShapeProvider()Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    return-object v0
.end method

.method public isSharedElementReenterTransitionEnabled()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    return v0
.end method

.method public isTransparentWindowBackgroundEnabled()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    return v0
.end method

.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .line 96
    invoke-super {p0, p1, p2}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "snapshotView":Landroid/view/View;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->capturedSharedElement:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 99
    .local v1, "sharedElement":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    invoke-interface {v2, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;->provideShape(Landroid/view/View;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v2

    .line 101
    .local v2, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    if-eqz v2, :cond_0

    .line 103
    sget v3, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 107
    .end local v1    # "sharedElement":Landroid/view/View;
    .end local v2    # "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    :cond_0
    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 115
    .local v0, "sharedElement":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/internal/ContextUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 117
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 119
    .local v2, "window":Landroid/view/Window;
    iget-boolean v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    if-eqz v3, :cond_0

    .line 120
    invoke-direct {p0, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpEnterTransform(Landroid/view/Window;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->setUpReturnTransform(Landroid/app/Activity;Landroid/view/Window;)V

    .line 127
    .end local v0    # "sharedElement":Landroid/view/View;
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "window":Landroid/view/Window;
    :cond_1
    :goto_0
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 158
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 164
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->getRelativeBoundsRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    .line 167
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    .line 168
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget v2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->entering:Z

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 143
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 144
    .local v0, "sharedElement":Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 145
    .local v1, "widthSpec":I
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 146
    .local v2, "heightSpec":I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 147
    iget-object v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->returnEndBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 150
    .end local v0    # "sharedElement":Landroid/view/View;
    .end local v1    # "widthSpec":I
    .end local v2    # "heightSpec":I
    :cond_1
    return-void
.end method

.method public setShapeProvider(Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;)V
    .locals 0
    .param p1, "shapeProvider"    # Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 184
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->shapeProvider:Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback$ShapeProvider;

    .line 185
    return-void
.end method

.method public setSharedElementReenterTransitionEnabled(Z)V
    .locals 0
    .param p1, "sharedElementReenterTransitionEnabled"    # Z

    .line 228
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->sharedElementReenterTransitionEnabled:Z

    .line 229
    return-void
.end method

.method public setTransparentWindowBackgroundEnabled(Z)V
    .locals 0
    .param p1, "transparentWindowBackgroundEnabled"    # Z

    .line 209
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransformSharedElementCallback;->transparentWindowBackgroundEnabled:Z

    .line 210
    return-void
.end method
