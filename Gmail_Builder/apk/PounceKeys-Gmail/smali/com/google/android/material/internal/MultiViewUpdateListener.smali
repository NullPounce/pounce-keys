.class public Lcom/google/android/material/internal/MultiViewUpdateListener;
.super Ljava/lang/Object;
.source "MultiViewUpdateListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

.field private final views:[Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Mtp5sBfS5LXd-63Z9XctnK3kqJE(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setTranslationY(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rryxfo13bMOcs5cmz2mcweOWiUY(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setScale(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJMU4cyqqeA8DD96LAqv3uCgNCo(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setTranslationX(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gtAYAqr0qsjIEvRsrfPVuv0tXPs(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/MultiViewUpdateListener;->setAlpha(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p2, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    .line 51
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;
    .param p2, "views"    # [Landroid/view/View;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    .line 44
    iput-object p2, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    .line 45
    return-void
.end method

.method public static alphaListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    .line 84
    .local p0, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs alphaListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .param p0, "views"    # [Landroid/view/View;

    .line 75
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    return-object v0
.end method

.method public static scaleListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    .line 106
    .local p0, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs scaleListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .param p0, "views"    # [Landroid/view/View;

    .line 97
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    return-object v0
.end method

.method private static setAlpha(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;
    .param p1, "view"    # Landroid/view/View;

    .line 88
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 89
    return-void
.end method

.method private static setScale(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 2
    .param p0, "animator"    # Landroid/animation/ValueAnimator;
    .param p1, "view"    # Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 111
    .local v0, "scale":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 113
    return-void
.end method

.method private static setTranslationX(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;
    .param p1, "view"    # Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 135
    return-void
.end method

.method private static setTranslationY(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 1
    .param p0, "animator"    # Landroid/animation/ValueAnimator;
    .param p1, "view"    # Landroid/view/View;

    .line 156
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 157
    return-void
.end method

.method public static translationXListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    .line 130
    .local p0, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs translationXListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .param p0, "views"    # [Landroid/view/View;

    .line 121
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    return-object v0
.end method

.method public static translationYListener(Ljava/util/Collection;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/google/android/material/internal/MultiViewUpdateListener;"
        }
    .end annotation

    .line 152
    .local p0, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs translationYListener([Landroid/view/View;)Lcom/google/android/material/internal/MultiViewUpdateListener;
    .locals 2
    .param p0, "views"    # [Landroid/view/View;

    .line 143
    new-instance v0, Lcom/google/android/material/internal/MultiViewUpdateListener;

    new-instance v1, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/android/material/internal/MultiViewUpdateListener$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/MultiViewUpdateListener;-><init>(Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;[Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 55
    iget-object v0, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->views:[Landroid/view/View;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/material/internal/MultiViewUpdateListener;->listener:Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;

    invoke-interface {v4, p1, v3}, Lcom/google/android/material/internal/MultiViewUpdateListener$Listener;->onAnimationUpdate(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 55
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method
