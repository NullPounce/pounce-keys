.class Landroidx/core/content/IntentSanitizer$Api15Impl;
.super Ljava/lang/Object;
.source "IntentSanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/IntentSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api15Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    return-void
.end method

.method static getSelector(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 891
    invoke-virtual {p0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static setSelector(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "selector"    # Landroid/content/Intent;

    .line 886
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 887
    return-void
.end method
