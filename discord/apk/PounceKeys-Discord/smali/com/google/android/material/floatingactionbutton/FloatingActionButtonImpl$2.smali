.class Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 541
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$fromUser:Z

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 552
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$002(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I

    .line 553
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$102(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 555
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$listener:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    .line 558
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 544
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$fromUser:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    .line 546
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$002(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I

    .line 547
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-static {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$102(Lcom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 548
    return-void
.end method
