.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->createDefaultAnimator(FFFII)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field final synthetic val$matrix:Landroid/graphics/Matrix;

.field final synthetic val$startAlpha:F

.field final synthetic val$startImageMatrixScale:F

.field final synthetic val$startScaleX:F

.field final synthetic val$startScaleY:F

.field final synthetic val$targetIconScale:F

.field final synthetic val$targetOpacity:F

.field final synthetic val$targetScale:F


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;FFFFFFFLandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 642
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iput p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startAlpha:F

    iput p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetOpacity:F

    iput p4, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startScaleX:F

    iput p5, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetScale:F

    iput p6, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startScaleY:F

    iput p7, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startImageMatrixScale:F

    iput p8, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetIconScale:F

    iput-object p9, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$matrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 645
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 647
    .local v0, "progress":F
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startAlpha:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetOpacity:F

    const/4 v4, 0x0

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 648
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startScaleX:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetScale:F

    invoke-static {v2, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 649
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startScaleY:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetScale:F

    invoke-static {v2, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 650
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startImageMatrixScale:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetIconScale:F

    .line 651
    invoke-static {v2, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    .line 650
    invoke-static {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$202(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;F)F

    .line 652
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$startImageMatrixScale:F

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$targetIconScale:F

    .line 653
    invoke-static {v2, v3, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$matrix:Landroid/graphics/Matrix;

    .line 652
    invoke-static {v1, v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$300(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;FLandroid/graphics/Matrix;)V

    .line 654
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$4;->val$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 655
    return-void
.end method
