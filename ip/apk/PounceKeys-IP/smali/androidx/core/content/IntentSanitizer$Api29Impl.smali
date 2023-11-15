.class Landroidx/core/content/IntentSanitizer$Api29Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    return-void
.end method

.method static getIdentifier(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static setIdentifier(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "identifier"    # Ljava/lang/String;

    .line 995
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
