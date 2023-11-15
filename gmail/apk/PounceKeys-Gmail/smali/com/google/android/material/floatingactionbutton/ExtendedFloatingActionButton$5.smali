.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->performMotion(ILcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

.field final synthetic val$callback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

.field final synthetic val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/MotionStrategy;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 857
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$callback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->cancelled:Z

    .line 869
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationCancel()V

    .line 870
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 874
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationEnd()V

    .line 875
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->cancelled:Z

    if-nez v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$callback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    invoke-interface {v0, v1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onChange(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V

    .line 878
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 862
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->val$strategy:Lcom/google/android/material/floatingactionbutton/MotionStrategy;

    invoke-interface {v0, p1}, Lcom/google/android/material/floatingactionbutton/MotionStrategy;->onAnimationStart(Landroid/animation/Animator;)V

    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;->cancelled:Z

    .line 864
    return-void
.end method
