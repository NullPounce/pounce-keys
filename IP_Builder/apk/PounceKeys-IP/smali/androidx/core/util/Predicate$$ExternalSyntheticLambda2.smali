.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidx/core/util/Predicate;->lambda$isEqual$4(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
