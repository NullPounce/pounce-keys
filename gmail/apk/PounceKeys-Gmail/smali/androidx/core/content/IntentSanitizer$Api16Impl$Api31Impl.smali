.class Landroidx/core/content/IntentSanitizer$Api16Impl$Api31Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer$Api16Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    return-void
.end method

.method static checkOtherMembers(ILandroid/content/ClipData$Item;Landroidx/core/util/Consumer;)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/ClipData$Item;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 978
    .local p2, "penalty":Landroidx/core/util/Consumer;, "Landroidx/core/util/Consumer<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 979
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getTextLinks()Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 980
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipData item at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contains htmlText, textLinks or intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 983
    :cond_1
    return-void
.end method
