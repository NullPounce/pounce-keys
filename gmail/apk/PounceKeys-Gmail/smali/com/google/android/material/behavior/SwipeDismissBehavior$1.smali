.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 238
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xVelocity"    # F

    .line 304
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 305
    nop

    .line 306
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 308
    .local v1, "isRtl":Z
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 310
    return v3

    .line 311
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v4, :cond_4

    .line 314
    if-eqz v1, :cond_2

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    goto :goto_1

    :cond_2
    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    :goto_1
    move v2, v3

    :cond_3
    return v2

    .line 315
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-ne v4, v3, :cond_7

    .line 318
    if-eqz v1, :cond_5

    cmpl-float v0, p2, v0

    if-lez v0, :cond_6

    goto :goto_2

    :cond_5
    cmpg-float v0, p2, v0

    if-gez v0, :cond_6

    :goto_2
    move v2, v3

    :cond_6
    return v2

    .line 320
    .end local v1    # "isRtl":Z
    :cond_7
    nop

    .line 326
    return v2

    .line 321
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr v0, v1

    .line 322
    .local v0, "distance":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 323
    .local v1, "thresholdDistance":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v4, v1, :cond_9

    move v2, v3

    :cond_9
    return v2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 336
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    nop

    .line 337
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    .local v0, "isRtl":Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-nez v2, :cond_2

    .line 342
    if-eqz v0, :cond_1

    .line 343
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 344
    .local v1, "min":I
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .local v2, "max":I
    goto :goto_1

    .line 346
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_1
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 347
    .restart local v1    # "min":I
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .restart local v2    # "max":I
    goto :goto_1

    .line 349
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    if-ne v2, v1, :cond_4

    .line 350
    if-eqz v0, :cond_3

    .line 351
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 352
    .restart local v1    # "min":I
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .restart local v2    # "max":I
    goto :goto_1

    .line 354
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_3
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 355
    .restart local v1    # "min":I
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .restart local v2    # "max":I
    goto :goto_1

    .line 358
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_4
    iget v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 359
    .restart local v1    # "min":I
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 362
    .restart local v2    # "max":I
    :goto_1
    invoke-static {v1, p2, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(III)I

    move-result v3

    return v3
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 367
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 331
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 3
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .line 253
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 259
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->access$002(Lcom/google/android/material/behavior/SwipeDismissBehavior;Z)Z

    .line 264
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 265
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->access$002(Lcom/google/android/material/behavior/SwipeDismissBehavior;Z)Z

    .line 267
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 271
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 372
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    nop

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    mul-float/2addr v0, v1

    .line 374
    .local v0, "startAlphaDistance":F
    nop

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v2, v2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    mul-float/2addr v1, v2

    .line 376
    .local v1, "endAlphaDistance":F
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 378
    .local v2, "currentDistance":F
    cmpg-float v3, v2, v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_0

    .line 379
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 380
    :cond_0
    cmpl-float v3, v2, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_1

    .line 381
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {v0, v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->fraction(FFF)F

    move-result v3

    .line 385
    .local v3, "distance":F
    sub-float v6, v4, v3

    invoke-static {v5, v6, v4}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 387
    .end local v3    # "distance":F
    :goto_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "xVelocity"    # F
    .param p3, "yVelocity"    # F

    .line 279
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 283
    .local v0, "childWidth":I
    const/4 v1, 0x0

    .line 285
    .local v1, "dismiss":Z
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    add-int/2addr v3, v0

    goto :goto_1

    .line 288
    :cond_1
    :goto_0
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int v3, v2, v0

    .line 289
    :goto_1
    move v2, v3

    .line 290
    .local v2, "targetLeft":I
    const/4 v1, 0x1

    goto :goto_2

    .line 293
    .end local v2    # "targetLeft":I
    :cond_2
    iget v2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 296
    .restart local v2    # "targetLeft":I
    :goto_2
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    new-instance v3, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;

    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {v3, v4, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 298
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    if-eqz v3, :cond_4

    .line 299
    iget-object v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v3, v3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v3, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 301
    :cond_4
    :goto_3
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 247
    .local p0, "this":Lcom/google/android/material/behavior/SwipeDismissBehavior$1;, "Lcom/google/android/material/behavior/SwipeDismissBehavior$1;"
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 248
    invoke-virtual {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0
.end method
