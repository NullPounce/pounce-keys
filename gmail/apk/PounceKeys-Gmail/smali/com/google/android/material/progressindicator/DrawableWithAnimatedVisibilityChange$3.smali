.class Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;
.super Landroid/util/Property;
.source "DrawableWithAnimatedVisibilityChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "arg1"    # Ljava/lang/String;

    .line 442
    .local p1, "arg0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)Ljava/lang/Float;
    .locals 1
    .param p1, "drawable"    # Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 445
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getGrowFraction()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 442
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {p0, p1}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;->get(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;Ljava/lang/Float;)V
    .locals 1
    .param p1, "drawable"    # Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    .param p2, "value"    # Ljava/lang/Float;

    .line 450
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setGrowFraction(F)V

    .line 451
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 442
    check-cast p1, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$3;->set(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;Ljava/lang/Float;)V

    return-void
.end method
