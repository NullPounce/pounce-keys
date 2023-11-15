.class public final synthetic Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda8;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->lambda$allowExtraOutput$16(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
