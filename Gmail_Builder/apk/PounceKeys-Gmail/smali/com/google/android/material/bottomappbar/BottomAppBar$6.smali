.class Lcom/google/android/material/bottomappbar/BottomAppBar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 968
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 976
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1700(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 977
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$002(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)Z

    .line 978
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2002(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 979
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 971
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1600(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 972
    return-void
.end method
