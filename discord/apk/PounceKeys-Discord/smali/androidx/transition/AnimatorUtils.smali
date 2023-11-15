.class Landroidx/transition/AnimatorUtils;
.super Ljava/lang/Object;
.source "AnimatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method static addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 31
    nop

    .line 32
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 34
    return-void
.end method

.method static pause(Landroid/animation/Animator;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Landroid/animation/Animator;->pause()V

    .line 50
    return-void
.end method

.method static resume(Landroid/animation/Animator;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Landroid/animation/Animator;->resume()V

    .line 66
    return-void
.end method
