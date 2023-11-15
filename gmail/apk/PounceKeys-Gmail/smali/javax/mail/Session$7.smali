.class Ljavax/mail/Session$7;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "[",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Ljavax/mail/Session$7;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 1317
    invoke-virtual {p0}, Ljavax/mail/Session$7;->run()[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public run()[Ljava/net/URL;
    .locals 3

    .line 1320
    const/4 v0, 0x0

    .line 1322
    .local v0, "ret":[Ljava/net/URL;
    :try_start_0
    iget-object v1, p0, Ljavax/mail/Session$7;->val$name:Ljava/lang/String;

    .line 1323
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 1322
    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1324
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1325
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/net/URL;

    move-object v0, v2

    .line 1326
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1329
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1328
    :catch_1
    move-exception v1

    .line 1329
    :cond_0
    :goto_0
    nop

    .line 1330
    return-object v0
.end method
