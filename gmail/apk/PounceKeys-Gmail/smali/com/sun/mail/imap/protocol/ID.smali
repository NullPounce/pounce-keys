.class public Lcom/sun/mail/imap/protocol/ID;
.super Ljava/lang/Object;
.source "ID.java"


# instance fields
.field private serverParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    .line 46
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 47
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    .line 48
    .local v0, "c":I
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    .line 56
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "v":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 58
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 59
    aget-object v3, v1, v2

    .line 60
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 62
    add-int/lit8 v4, v2, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 65
    add-int/lit8 v4, v2, 0x1

    aget-object v4, v1, v4

    .line 66
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 63
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID field without value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_2
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    const-string v5, "ID field name null"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    .line 70
    return-void

    .line 52
    .end local v1    # "v":[Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Missing \'(\' at start of ID"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_5
    :goto_1
    return-void
.end method

.method static getArgumentList(Ljava/util/Map;)Lcom/sun/mail/iap/Argument;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sun/mail/iap/Argument;"
        }
    .end annotation

    .line 83
    .local p0, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 84
    .local v0, "arg":Lcom/sun/mail/iap/Argument;
    if-nez p0, :cond_0

    .line 85
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 86
    return-object v0

    .line 88
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 90
    .local v1, "list":Lcom/sun/mail/iap/Argument;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 91
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sun/mail/iap/Argument;->writeNString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 92
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sun/mail/iap/Argument;->writeNString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 93
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 95
    return-object v0
.end method


# virtual methods
.method getServerParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    return-object v0
.end method
