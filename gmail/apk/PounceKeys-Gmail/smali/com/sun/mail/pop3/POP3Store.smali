.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "POP3Store.java"


# instance fields
.field volatile cacheWriteTo:Z

.field private capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPort:I

.field volatile disableTop:Z

.field volatile fileCacheDir:Ljava/io/File;

.field volatile finalizeCleanClose:Z

.field volatile forgetTopHeaders:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field volatile keepMessageContent:Z

.field private logger:Lcom/sun/mail/util/MailLogger;

.field volatile messageConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private portNum:I

.field private portOwner:Lcom/sun/mail/pop3/POP3Folder;

.field private requireStartTLS:Z

.field volatile rsetBeforeQuit:Z

.field volatile supportsUidl:Z

.field volatile useFileCache:Z

.field private useStartTLS:Z

.field private user:Ljava/lang/String;

.field private usingSSL:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .line 79
    const-string v0, "pop3"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .line 84
    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 50
    const-string v0, "pop3"

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 51
    const/16 v0, 0x6e

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 52
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 55
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 56
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 57
    const/4 v3, -0x1

    iput v3, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 58
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    .line 61
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    .line 62
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 67
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 68
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 69
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 70
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 71
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    .line 72
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    .line 73
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 74
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    .line 75
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    .line 76
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->finalizeCleanClose:Z

    .line 85
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 87
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 88
    new-instance v2, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 89
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v5

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v6

    const-string v7, "DEBUG POP3"

    invoke-direct {v2, v4, v7, v5, v6}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    .line 91
    const-string v2, "mail."

    if-nez p4, :cond_1

    .line 92
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ssl.enable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    .line 94
    :cond_1
    if-eqz p4, :cond_2

    .line 95
    const/16 v0, 0x3e3

    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    goto :goto_0

    .line 97
    :cond_2
    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 98
    :goto_0
    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    .line 100
    const-string v0, "rsetbeforequit"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 101
    const-string v0, "disabletop"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 102
    const-string v0, "forgettopheaders"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    .line 103
    const-string v0, "cachewriteto"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    .line 104
    const-string v0, "filecache.enable"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".filecache.dir"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "dir":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".filecache.dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 108
    :cond_3
    if-eqz v0, :cond_4

    .line 109
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    .line 110
    :cond_4
    const-string v4, "keepmessagecontent"

    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    .line 113
    const-string v4, "starttls.enable"

    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    .line 116
    const-string v4, "starttls.required"

    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    .line 119
    const-string v4, "finalizecleanclose"

    invoke-direct {p0, v4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/pop3/POP3Store;->finalizeCleanClose:Z

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".message.class"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 123
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v6, "message class: {0}"

    invoke-virtual {v4, v5, v6, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .local v4, "cl":Ljava/lang/ClassLoader;
    const/4 v5, 0x0

    .line 133
    .local v5, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-static {v2, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 139
    goto :goto_1

    .line 134
    :catch_0
    move-exception v6

    .line 138
    .local v6, "ex1":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v5, v7

    .line 141
    .end local v6    # "ex1":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljavax/mail/Folder;

    aput-object v7, v6, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v6, v3

    move-object v1, v6

    .line 142
    .local v1, "c":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    .end local v1    # "c":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    .end local v5    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 143
    :catch_1
    move-exception v1

    .line 144
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "failed to load message class"

    invoke-virtual {v3, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return-void
.end method

.method private authenticate(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "p"    # Lcom/sun/mail/pop3/Protocol;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 357
    move-object v0, p0

    move-object v7, p1

    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".auth.mechanisms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "mechs":Ljava/lang/String;
    const/4 v2, 0x0

    .line 359
    .local v2, "usingDefaultMechs":Z
    if-nez v1, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/sun/mail/pop3/Protocol;->getDefaultMechanisms()Ljava/lang/String;

    move-result-object v1

    .line 361
    const/4 v2, 0x1

    move-object v8, v1

    move v9, v2

    goto :goto_0

    .line 359
    :cond_0
    move-object v8, v1

    move v9, v2

    .line 364
    .end local v1    # "mechs":Ljava/lang/String;
    .end local v2    # "usingDefaultMechs":Z
    .local v8, "mechs":Ljava/lang/String;
    .local v9, "usingDefaultMechs":Z
    :goto_0
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".sasl.authorizationid"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "authzid":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 367
    move-object/from16 v1, p2

    move-object v10, v1

    goto :goto_1

    .line 366
    :cond_1
    move-object v10, v1

    .line 388
    .end local v1    # "authzid":Ljava/lang/String;
    .local v10, "authzid":Ljava/lang/String;
    :goto_1
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to authenticate using mechanisms: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 397
    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v11, v1

    .line 398
    .local v11, "st":Ljava/util/StringTokenizer;
    :cond_3
    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 399
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "m":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 401
    .end local v1    # "m":Ljava/lang/String;
    .local v12, "m":Ljava/lang/String;
    invoke-virtual {p1, v12}, Lcom/sun/mail/pop3/Protocol;->supportsMechanism(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 402
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "no authenticator for mechanism {0}"

    invoke-virtual {v1, v2, v4, v12}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 403
    goto :goto_2

    .line 406
    :cond_4
    invoke-virtual {p1, v12}, Lcom/sun/mail/pop3/Protocol;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 407
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "mechanism {0} not supported by server"

    invoke-virtual {v1, v2, v4, v12}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    goto :goto_2

    .line 415
    :cond_5
    const/4 v13, 0x1

    if-eqz v9, :cond_6

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".auth."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 417
    invoke-virtual {v12, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".disable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "dprop":Ljava/lang/String;
    iget-object v2, v0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    .line 419
    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    .line 420
    invoke-virtual {p1, v12}, Lcom/sun/mail/pop3/Protocol;->isMechanismEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 418
    xor-int/2addr v4, v13

    invoke-static {v2, v1, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    .line 421
    .local v2, "disabled":Z
    if-eqz v2, :cond_6

    .line 422
    iget-object v4, v0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 423
    iget-object v4, v0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mechanism "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " disabled by property: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 430
    .end local v1    # "dprop":Ljava/lang/String;
    .end local v2    # "disabled":Z
    :cond_6
    iget-object v1, v0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Using mechanism {0}"

    invoke-virtual {v1, v2, v3, v12}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    iget-object v3, v0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 432
    move-object v1, p1

    move-object v2, v12

    move-object v4, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/pop3/Protocol;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 435
    return v13

    .line 434
    :cond_7
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    invoke-direct {v2, v1}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    .end local v1    # "msg":Ljava/lang/String;
    .end local v12    # "m":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    const-string v2, "No authentication mechanisms supported by both server and client"

    invoke-direct {v1, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 544
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    return-void

    .line 545
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .param p0, "p"    # Lcom/sun/mail/pop3/Protocol;
    .param p1, "ife"    # Ljava/io/IOException;

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/sun/mail/pop3/POP3Store;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p1, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 329
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object p1

    .line 319
    .restart local v0    # "thr":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 320
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    .line 323
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 324
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 326
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 321
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method

.method private final declared-synchronized getBoolProp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "prop"    # Ljava/lang/String;

    monitor-enter p0

    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 155
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 157
    .local v0, "val":Z
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_0
    monitor-exit p0

    return v0

    .line 153
    .end local v0    # "val":Z
    .end local p1    # "prop":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isRecoverable(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 444
    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/LinkageError;

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


# virtual methods
.method public capabilities()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    .line 516
    .local v0, "c":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    if-eqz v0, :cond_0

    .line 518
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 520
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 516
    .end local v0    # "c":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 456
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    .line 455
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized close(Z)V
    .locals 2
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 461
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 462
    if-eqz p1, :cond_0

    .line 463
    :try_start_1
    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->close()V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 469
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 467
    :catch_0
    move-exception v1

    goto :goto_2

    .line 469
    :cond_1
    :goto_0
    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 472
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    .line 473
    goto :goto_3

    .line 469
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :catchall_1
    move-exception v1

    :goto_1
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 472
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    .line 473
    throw v1

    .line 467
    :catch_1
    move-exception v1

    .line 469
    :goto_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 472
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 473
    nop

    .line 474
    :goto_3
    monitor-exit p0

    return-void

    .line 460
    .end local p1    # "force":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .locals 1
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;

    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_0

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 450
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_0
    monitor-exit p0

    return-void

    .line 447
    .end local p1    # "owner":Lcom/sun/mail/pop3/POP3Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_1

    .line 537
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->finalizeCleanClose:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :cond_1
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 540
    nop

    .line 541
    return-void

    .line 539
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 540
    throw v0
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 478
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 479
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 488
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 493
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 494
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;
    .locals 8
    .param p1, "owner"    # Lcom/sun/mail/pop3/POP3Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_0

    .line 243
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-object v0

    .line 248
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_0
    :try_start_1
    new-instance v7, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    .line 249
    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mail."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;ILcom/sun/mail/util/MailLogger;Ljava/util/Properties;Ljava/lang/String;Z)V

    move-object v0, v7

    .line 251
    .local v0, "p":Lcom/sun/mail/pop3/Protocol;
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-eqz v1, :cond_5

    .line 252
    :cond_1
    const-string v1, "STLS"

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stls()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-nez v1, :cond_3

    goto :goto_0

    .line 257
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "STLS required but failed"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 258
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "STLS required but failed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 261
    :cond_4
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-nez v1, :cond_c

    .line 268
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->getCapabilities()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    .line 269
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->isSSL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 277
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v1, :cond_6

    const-string v3, "TOP"

    .line 278
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 279
    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 280
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "server doesn\'t support TOP, disabling it"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 283
    :cond_6
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v1, :cond_8

    const-string v3, "UIDL"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_1
    iput-boolean v2, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/pop3/POP3Store;->authenticate(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_b

    .line 292
    nop

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    .line 304
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 305
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 307
    :cond_9
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v1, :cond_a

    .line 308
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 309
    :cond_a
    monitor-exit p0

    return-object v0

    .line 287
    :cond_b
    :try_start_4
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "login failed"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    .end local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "owner":Lcom/sun/mail/pop3/POP3Folder;
    throw v1
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    .restart local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    .restart local p1    # "owner":Lcom/sun/mail/pop3/POP3Folder;
    :catch_0
    move-exception v1

    .line 291
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_5
    new-instance v2, Ljava/io/EOFException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 288
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 289
    .local v1, "ex":Ljava/io/EOFException;
    invoke-static {v0, v1}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 262
    .end local v1    # "ex":Ljava/io/EOFException;
    :cond_c
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "STLS required but not supported"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 263
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "STLS required but not supported"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 241
    .end local v0    # "p":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "owner":Lcom/sun/mail/pop3/POP3Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSession()Ljavax/mail/Session;
    .locals 1

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 166
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 3

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    monitor-exit p0

    return v1

    .line 222
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v0, :cond_1

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    goto :goto_0

    .line 224
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :cond_1
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 226
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 225
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NOOP failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_3
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    goto :goto_1

    .line 231
    :catch_1
    move-exception v2

    .line 234
    :goto_1
    monitor-exit p0

    return v1

    .line 216
    .end local v0    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 530
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 530
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "portNum"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 174
    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    .line 179
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v1

    move p2, v1

    goto :goto_0

    .line 173
    .end local p0    # "this":Lcom/sun/mail/pop3/POP3Store;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "portNum":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "passwd":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 183
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "portNum":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "passwd":Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne p2, v0, :cond_2

    .line 184
    iget v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    move p2, v0

    .line 186
    :cond_2
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 187
    iput p2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 188
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 189
    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    nop

    .line 200
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "ioex":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Connect failed"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 194
    .end local v0    # "ioex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "scex":Lcom/sun/mail/util/SocketConnectException;
    new-instance v1, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v1

    .line 192
    .end local v0    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_2
    move-exception v0

    .line 193
    .local v0, "eex":Ljava/io/EOFException;
    new-instance v1, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    .end local v0    # "eex":Ljava/io/EOFException;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "portNum":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "passwd":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1

    .line 175
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "portNum":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "passwd":Ljava/lang/String;
    :cond_3
    :goto_2
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method
