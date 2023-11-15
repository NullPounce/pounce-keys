.class public interface abstract Landroidx/core/util/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static isEqual(Ljava/lang/Object;)Landroidx/core/util/Predicate;
    .locals 1
    .param p0, "targetRef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 109
    if-nez p0, :cond_0

    .line 110
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda1;-><init>()V

    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$and$0(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "other"    # Landroidx/core/util/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$isEqual$3(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 110
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "targetRef"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$negate$1(Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "t"    # Ljava/lang/Object;

    .line 72
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p1}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "_this"    # Landroidx/core/util/Predicate;
    .param p1, "other"    # Landroidx/core/util/Predicate;
    .param p2, "t"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    invoke-interface {p0, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Landroidx/core/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static not(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p0, "target":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {p0}, Landroidx/core/util/Predicate;->negate()Landroidx/core/util/Predicate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public and(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    .local p1, "other":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda3;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public negate()Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda4;-><init>(Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public or(Landroidx/core/util/Predicate;)Landroidx/core/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Predicate<",
            "-TT;>;)",
            "Landroidx/core/util/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<TT;>;"
    .local p1, "other":Landroidx/core/util/Predicate;, "Landroidx/core/util/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;-><init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
