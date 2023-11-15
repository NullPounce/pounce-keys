.class public Lcom/sun/mail/imap/IMAPStore;
.super Ljavax/mail/Store;
.source "IMAPStore.java"

# interfaces
.implements Ljavax/mail/QuotaAwareStore;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ID_ADDRESS:Ljava/lang/String; = "address"

.field public static final ID_ARGUMENTS:Ljava/lang/String; = "arguments"

.field public static final ID_COMMAND:Ljava/lang/String; = "command"

.field public static final ID_DATE:Ljava/lang/String; = "date"

.field public static final ID_ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final ID_NAME:Ljava/lang/String; = "name"

.field public static final ID_OS:Ljava/lang/String; = "os"

.field public static final ID_OS_VERSION:Ljava/lang/String; = "os-version"

.field public static final ID_SUPPORT_URL:Ljava/lang/String; = "support-url"

.field public static final ID_VENDOR:Ljava/lang/String; = "vendor"

.field public static final ID_VERSION:Ljava/lang/String; = "version"

.field public static final RESPONSE:I = 0x3e8


# instance fields
.field private final appendBufferSize:I

.field protected authorizationID:Ljava/lang/String;

.field private final blksize:I

.field private closeFoldersOnStoreFailure:Z

.field private volatile connectionFailed:Z

.field private final connectionFailedLock:Ljava/lang/Object;

.field private debugpassword:Z

.field private debugusername:Z

.field protected final defaultPort:I

.field private enableCompress:Z

.field private enableImapEvents:Z

.field private enableResponseEvents:Z

.field private enableSASL:Z

.field private enableStartTLS:Z

.field private finalizeCleanClose:Z

.field private volatile folderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile folderConstructorLI:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile forceClose:Z

.field private forcePasswordRefresh:Z

.field private guid:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field private ignoreSize:Z

.field protected final isSSL:Z

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field private messageCacheDebug:Z

.field private final minIdleTime:I

.field protected final name:Ljava/lang/String;

.field private namespaces:Lcom/sun/mail/imap/protocol/Namespaces;

.field private nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

.field protected password:Ljava/lang/String;

.field private peek:Z

.field private final pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

.field private volatile port:I

.field protected proxyAuthUser:Ljava/lang/String;

.field private requireStartTLS:Z

.field private saslMechanisms:[Ljava/lang/String;

.field protected saslRealm:Ljava/lang/String;

.field private final statusCacheTimeout:I

.field private throwSearchException:Z

.field protected user:Ljava/lang/String;

.field private usingSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 141
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .line 405
    const-string v0, "imap"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/imap/IMAPStore;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 406
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .line 418
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct/range {p0 .. p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 178
    const/4 v0, -0x1

    iput v0, v1, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 190
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    .line 191
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    .line 192
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z

    .line 193
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    .line 195
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    .line 197
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    .line 199
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    .line 201
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    .line 202
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    .line 203
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    .line 204
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->enableCompress:Z

    .line 205
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->finalizeCleanClose:Z

    .line 216
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 217
    iput-boolean v4, v1, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 218
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    .line 227
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    .line 228
    iput-object v6, v1, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    .line 386
    new-instance v6, Lcom/sun/mail/imap/IMAPStore$1;

    invoke-direct {v6, v1}, Lcom/sun/mail/imap/IMAPStore$1;-><init>(Lcom/sun/mail/imap/IMAPStore;)V

    iput-object v6, v1, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    .line 419
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v6

    .line 421
    .local v6, "props":Ljava/util/Properties;
    if-eqz p2, :cond_0

    .line 422
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .end local p3    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    goto :goto_0

    .line 421
    .end local v7    # "name":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    :cond_0
    move-object/from16 v7, p3

    .line 423
    .end local p3    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :goto_0
    iput-object v7, v1, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    .line 424
    const-string v8, "mail."

    if-nez p4, :cond_1

    .line 425
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".ssl.enable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v9

    .end local p4    # "isSSL":Z
    .local v9, "isSSL":Z
    goto :goto_1

    .line 424
    .end local v9    # "isSSL":Z
    .restart local p4    # "isSSL":Z
    :cond_1
    move/from16 v9, p4

    .line 427
    .end local p4    # "isSSL":Z
    .restart local v9    # "isSSL":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 428
    const/16 v10, 0x3e1

    iput v10, v1, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    goto :goto_2

    .line 430
    :cond_2
    const/16 v10, 0x8f

    iput v10, v1, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    .line 431
    :goto_2
    iput-boolean v9, v1, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 433
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v10

    iput-boolean v10, v1, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    .line 434
    const-string v10, "mail.debug.auth.username"

    invoke-static {v6, v10, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v1, Lcom/sun/mail/imap/IMAPStore;->debugusername:Z

    .line 436
    const-string v10, "mail.debug.auth.password"

    invoke-static {v6, v10, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v1, Lcom/sun/mail/imap/IMAPStore;->debugpassword:Z

    .line 438
    new-instance v10, Lcom/sun/mail/util/MailLogger;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DEBUG "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 439
    invoke-virtual {v7, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 440
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v14

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v10, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    .line 442
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".partialfetch"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v10

    .line 444
    .local v10, "partialFetch":Z
    if-nez v10, :cond_3

    .line 445
    iput v0, v1, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 446
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "mail.imap.partialfetch: false"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    goto :goto_3

    .line 448
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".fetchsize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x4000

    invoke-static {v6, v11, v12}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v11

    iput v11, v1, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 450
    iget-object v12, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v13, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v12, v13}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 451
    iget-object v12, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mail.imap.fetchsize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 454
    :cond_4
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ignorebodystructuresize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    .line 456
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 457
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mail.imap.ignorebodystructuresize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v1, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 459
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".statuscachetimeout"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3e8

    invoke-static {v6, v11, v12}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v11

    iput v11, v1, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    .line 461
    iget-object v12, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v13, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v12, v13}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 462
    iget-object v12, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mail.imap.statuscachetimeout: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 465
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".appendbuffersize"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v0}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    .line 467
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 468
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mail.imap.appendbuffersize: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 470
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ".minidletime"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0xa

    invoke-static {v6, v0, v11}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    .line 472
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 473
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mail.imap.minidletime: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 476
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ".proxyauth.user"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 478
    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .line 479
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 480
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mail.imap.proxyauth.user: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 484
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".starttls.enable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    .line 486
    if-eqz v11, :cond_a

    .line 487
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "enable STARTTLS"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 490
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".starttls.required"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    .line 492
    if-eqz v11, :cond_b

    .line 493
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "require STARTTLS"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 496
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".sasl.enable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    .line 498
    if-eqz v11, :cond_c

    .line 499
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "enable SASL"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 502
    :cond_c
    iget-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v11, :cond_10

    .line 503
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".sasl.mechanisms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_10

    .line 505
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 506
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SASL mechanisms allowed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 507
    :cond_d
    new-instance v11, Ljava/util/ArrayList;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .local v11, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, " ,"

    invoke-direct {v12, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v12, "st":Ljava/util/StringTokenizer;
    :goto_4
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 510
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 511
    .local v13, "m":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_e

    .line 512
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v13    # "m":Ljava/lang/String;
    :cond_e
    goto :goto_4

    .line 514
    :cond_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    iput-object v13, v1, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    .line 515
    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 520
    .end local v11    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".sasl.authorizationid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_11

    .line 522
    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    .line 523
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v13, "mail.imap.sasl.authorizationid: {0}"

    iget-object v14, v1, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".sasl.realm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    if-eqz v0, :cond_12

    .line 530
    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    .line 531
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v13, "mail.imap.sasl.realm: {0}"

    iget-object v14, v1, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".forcepasswordrefresh"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    .line 537
    if-eqz v11, :cond_13

    .line 538
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "enable forcePasswordRefresh"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 541
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".enableresponseevents"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    .line 543
    if-eqz v11, :cond_14

    .line 544
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "enable IMAP response events"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 547
    :cond_14
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".enableimapevents"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    .line 549
    if-eqz v11, :cond_15

    .line 550
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "enable IMAP IDLE events"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 553
    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".messagecache.debug"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->messageCacheDebug:Z

    .line 556
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".yahoo.guid"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    .line 557
    if-eqz v11, :cond_16

    .line 558
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v12, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v13, "mail.imap.yahoo.guid: {0}"

    iget-object v14, v1, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 561
    :cond_16
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".throwsearchexception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    .line 563
    if-eqz v11, :cond_17

    .line 564
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "throw SearchException"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 567
    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".peek"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    .line 569
    if-eqz v11, :cond_18

    .line 570
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "peek"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 573
    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".closefoldersonstorefailure"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    .line 575
    if-eqz v11, :cond_19

    .line 576
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "closeFoldersOnStoreFailure"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 579
    :cond_19
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".compress.enable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->enableCompress:Z

    .line 581
    if-eqz v11, :cond_1a

    .line 582
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "enable COMPRESS"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 585
    :cond_1a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".finalizecleanclose"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v1, Lcom/sun/mail/imap/IMAPStore;->finalizeCleanClose:Z

    .line 587
    if-eqz v11, :cond_1b

    .line 588
    iget-object v11, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v12, "close connection cleanly in finalize"

    invoke-virtual {v11, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 590
    :cond_1b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ".folder.class"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 591
    .end local v0    # "s":Ljava/lang/String;
    .local v8, "s":Ljava/lang/String;
    if-eqz v8, :cond_1c

    .line 592
    iget-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v11, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v12, "IMAP: folder class: {0}"

    invoke-virtual {v0, v11, v12, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v0

    .line 597
    .local v11, "cl":Ljava/lang/ClassLoader;
    const/4 v12, 0x0

    .line 602
    .local v12, "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-static {v8, v4, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 608
    .end local v12    # "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_5

    .line 603
    .end local v0    # "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 607
    .local v0, "ex1":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    move-object v12, v13

    move-object v0, v12

    .line 610
    .end local v12    # "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v4

    sget-object v13, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v5

    const/4 v13, 0x2

    aput-object v3, v12, v13

    const-class v14, Ljava/lang/Boolean;

    const/4 v15, 0x3

    aput-object v14, v12, v15

    .line 612
    .local v12, "c":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    iput-object v14, v1, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    .line 613
    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Lcom/sun/mail/imap/protocol/ListInfo;

    aput-object v14, v13, v4

    aput-object v3, v13, v5

    move-object v3, v13

    .line 614
    .local v3, "c2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    iput-object v4, v1, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 618
    .end local v0    # "folderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "c2":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v11    # "cl":Ljava/lang/ClassLoader;
    .end local v12    # "c":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_6

    .line 615
    :catch_1
    move-exception v0

    .line 616
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v3, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "IMAP: failed to load folder class"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1c
    :goto_6
    new-instance v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    iget-object v3, v1, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v0, v7, v3, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;-><init>(Ljava/lang/String;Lcom/sun/mail/util/MailLogger;Ljavax/mail/Session;)V

    iput-object v0, v1, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 622
    return-void
.end method

.method private authenticate(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 845
    const-string v0, "PLAIN LOGIN NTLM XOAUTH2"

    .line 850
    .local v0, "defaultAuthenticationMechanisms":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".auth.mechanisms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "mechs":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 853
    move-object v1, v0

    .line 861
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 862
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 863
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, "m":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 869
    const-string v5, "XOAUTH2"

    if-ne v1, v0, :cond_2

    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".auth."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 871
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".disable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 872
    .local v6, "dprop":Ljava/lang/String;
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    .line 873
    invoke-virtual {v7}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v7

    .line 874
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 872
    invoke-static {v7, v6, v8}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v7

    .line 875
    .local v7, "disabled":Z
    if-eqz v7, :cond_2

    .line 876
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 877
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mechanism "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " disabled by property: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 883
    .end local v6    # "dprop":Ljava/lang/String;
    .end local v7    # "disabled":Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AUTH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "LOGIN"

    if-nez v6, :cond_4

    .line 884
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "AUTH-LOGIN"

    invoke-virtual {p1, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 885
    :cond_3
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "mechanism {0} not supported by server"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 887
    goto/16 :goto_0

    .line 890
    :cond_4
    const-string v6, "PLAIN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 891
    invoke-virtual {p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 892
    :cond_5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 893
    invoke-virtual {p1, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 894
    :cond_6
    const-string v6, "NTLM"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 895
    invoke-virtual {p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authntlm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 896
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 897
    invoke-virtual {p1, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authoauth2(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_1
    return-void

    .line 899
    :cond_8
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "no authenticator for mechanism {0}"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 900
    goto/16 :goto_0

    .line 905
    .end local v4    # "m":Ljava/lang/String;
    :cond_9
    const-string v3, "LOGINDISABLED"

    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 906
    invoke-virtual {p1, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void

    .line 910
    :cond_a
    new-instance v3, Lcom/sun/mail/iap/ProtocolException;

    const-string v4, "No login methods supported!"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkConnected()V
    .locals 2

    .line 1958
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1961
    return-void

    .line 1960
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1958
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private declared-synchronized cleanup()V
    .locals 4

    monitor-enter p0

    .line 1632
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPStore cleanup, not connected"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1634
    monitor-exit p0

    return-void

    .line 1644
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1645
    :try_start_2
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1646
    .local v1, "force":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1647
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1648
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1649
    :try_start_3
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1650
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMAPStore cleanup, force "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1652
    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    if-eqz v0, :cond_3

    .line 1653
    :cond_2
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->closeAllFolders(Z)V

    .line 1656
    :cond_3
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1660
    :try_start_4
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1663
    goto :goto_0

    .line 1661
    :catch_0
    move-exception v0

    .line 1664
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "IMAPStore cleanup done"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1665
    monitor-exit p0

    return-void

    .line 1648
    .end local v1    # "force":Z
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1631
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeAllFolders(Z)V
    .locals 7
    .param p1, "force"    # Z

    .line 1671
    const/4 v0, 0x0

    .line 1672
    .local v0, "foldersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/IMAPFolder;>;"
    const/4 v1, 0x1

    .line 1684
    .local v1, "done":Z
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    .line 1685
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1686
    const/4 v1, 0x0

    .line 1687
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    move-object v0, v3

    .line 1688
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$402(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)Ljava/util/Vector;

    goto :goto_1

    .line 1690
    :cond_0
    const/4 v1, 0x1

    .line 1692
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1693
    if-eqz v1, :cond_1

    .line 1694
    nop

    .line 1719
    return-void

    .line 1697
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "fsize":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1698
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/IMAPFolder;

    .line 1701
    .local v4, "f":Lcom/sun/mail/imap/IMAPFolder;
    if-eqz p1, :cond_2

    .line 1702
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "force folder to close"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPFolder;->forceClose()V

    goto :goto_3

    .line 1708
    :cond_2
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "close folder"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1709
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/IMAPFolder;->close(Z)V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1713
    :catch_0
    move-exception v5

    goto :goto_4

    .line 1711
    :catch_1
    move-exception v5

    .line 1715
    :goto_3
    nop

    .line 1697
    .end local v4    # "f":Lcom/sun/mail/imap/IMAPFolder;
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v3    # "fsize":I
    :cond_3
    goto :goto_0

    .line 1692
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private emptyConnectionPool(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 1382
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    .line 1383
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    .line 1384
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1386
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1387
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1388
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1389
    if-eqz p1, :cond_0

    .line 1390
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto :goto_1

    .line 1392
    :cond_0
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1393
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_0
    move-exception v2

    :goto_1
    nop

    .line 1384
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1396
    .end local v1    # "index":I
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 1397
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1399
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    const-string v1, "removed all authenticated connections from pool"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1400
    return-void

    .line 1397
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private declared-synchronized getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1851
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1853
    const/4 v0, 0x0

    .line 1855
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 1857
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 1858
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->namespace()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1866
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1867
    goto :goto_1

    .line 1866
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1863
    :catch_0
    move-exception v1

    .line 1864
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v2

    .line 1861
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catch_1
    move-exception v1

    .line 1862
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1866
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1867
    throw v1

    .line 1859
    :catch_2
    move-exception v1

    .line 1866
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1867
    nop

    .line 1869
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1850
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1123
    const/4 v0, 0x0

    .line 1125
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    if-nez v0, :cond_7

    .line 1126
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 1127
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->waitIfIdle()V

    .line 1131
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1132
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    const-string v3, "getStoreProtocol() - no connections in the pool, creating a new one"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    :try_start_1
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz v2, :cond_0

    .line 1136
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->refreshPassword()V

    .line 1138
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, v2, v3}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 1140
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1147
    goto :goto_3

    .line 1141
    :catch_0
    move-exception v2

    .line 1142
    .local v2, "ex1":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1144
    :try_start_2
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1145
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    .line 1146
    :cond_1
    :goto_2
    const/4 v0, 0x0

    .line 1149
    .end local v2    # "ex1":Ljava/lang/Exception;
    :goto_3
    if-eqz v0, :cond_2

    .line 1153
    :try_start_3
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1154
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 1150
    :cond_2
    new-instance v2, Lcom/sun/mail/iap/ConnectionException;

    const-string v3, "failed to create new store connection"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v2

    .line 1158
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1159
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStoreProtocol() - connection available -- size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1161
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1159
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1162
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object v0, v2

    .line 1165
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1166
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getProxyAuthUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "X-UNAUTHENTICATE"

    .line 1167
    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1168
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unauthenticate()V

    .line 1169
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$200(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    .line 1177
    const/4 v0, 0x0

    .line 1178
    :try_start_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1187
    goto :goto_5

    .line 1179
    :catch_2
    move-exception v2

    .line 1182
    .local v2, "ex":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1185
    new-instance v3, Lcom/sun/mail/iap/ProtocolException;

    const-string v4, "Interrupted getStoreProtocol"

    invoke-direct {v3, v4, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v3

    .line 1189
    .end local v2    # "ex":Ljava/lang/InterruptedException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z

    .line 1191
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    const-string v3, "getStoreProtocol() -- storeConnectionInUse"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1194
    :goto_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1195
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 1197
    :cond_7
    return-object v0
.end method

.method private login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 749
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isSSL()Z

    move-result v0

    if-nez v0, :cond_3

    .line 750
    const-string v0, "STARTTLS"

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->startTLS()V

    .line 753
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    goto :goto_0

    .line 754
    :cond_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "STARTTLS required but not supported by server"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 756
    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    return-void

    .line 764
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->preLogin(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 768
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 770
    .local v0, "gmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "GUID"

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;

    .line 779
    .end local v0    # "gmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    const-string v2, "__PRELOGIN__"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 782
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    .local v0, "authzid":Ljava/lang/String;
    goto :goto_1

    .line 783
    .end local v0    # "authzid":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 784
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .restart local v0    # "authzid":Ljava/lang/String;
    goto :goto_1

    .line 786
    .end local v0    # "authzid":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    .line 788
    .restart local v0    # "authzid":Ljava/lang/String;
    :goto_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v1, :cond_9

    .line 790
    :try_start_0
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    move-object v3, p1

    move-object v6, v0

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 796
    goto :goto_2

    .line 792
    :cond_8
    new-instance v1, Lcom/sun/mail/iap/CommandFailedException;

    const-string v3, "SASL authentication failed"

    invoke-direct {v1, v3}, Lcom/sun/mail/iap/CommandFailedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "authzid":Ljava/lang/String;
    .end local p1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p2    # "u":Ljava/lang/String;
    .end local p3    # "pw":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .restart local v0    # "authzid":Ljava/lang/String;
    .restart local p1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p2    # "u":Ljava/lang/String;
    .restart local p3    # "pw":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 799
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_a

    .line 800
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sun/mail/imap/IMAPStore;->authenticate(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :cond_a
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 803
    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyauth(Ljava/lang/String;)V

    .line 809
    :cond_b
    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 811
    :try_start_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    .line 817
    goto :goto_3

    .line 815
    :catch_1
    move-exception v1

    goto :goto_3

    .line 812
    :catch_2
    move-exception v1

    .line 813
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    throw v1

    .line 820
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :cond_c
    :goto_3
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->enableCompress:Z

    if-eqz v1, :cond_d

    .line 821
    const-string v1, "COMPRESS=DEFLATE"

    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 822
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->compress()V

    .line 828
    :cond_d
    const-string v1, "UTF8=ACCEPT"

    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "UTF8=ONLY"

    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 829
    :cond_e
    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    .line 830
    :cond_f
    return-void
.end method

.method private namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 7
    .param p1, "ns"    # [Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    .param p2, "user"    # Ljava/lang/String;

    .line 1874
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/Folder;

    .line 1875
    .local v0, "fa":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1876
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    .line 1877
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 1879
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 1880
    .local v4, "len":I
    if-lez v4, :cond_0

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-object v6, p1, v1

    iget-char v6, v6, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-ne v5, v6, :cond_0

    .line 1881
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1882
    .end local v4    # "len":I
    :cond_0
    goto :goto_1

    .line 1884
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1886
    :goto_1
    aget-object v4, p1, v1

    iget-char v4, v4, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-nez p2, :cond_2

    const/4 v3, 0x1

    .line 1887
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1886
    invoke-virtual {p0, v2, v4, v3}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1875
    .end local v2    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1889
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private refreshPassword()V
    .locals 8

    .line 1219
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh password, user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1223
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    .local v0, "addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 1224
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 1227
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    iget v4, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 1228
    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v1

    .line 1230
    .local v1, "pa":Ljavax/mail/PasswordAuthentication;
    if-eqz v1, :cond_1

    .line 1231
    invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 1232
    invoke-virtual {v1}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    .line 1234
    :cond_1
    return-void
.end method

.method private releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 4
    .param p1, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1324
    if-nez p1, :cond_0

    .line 1325
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1326
    return-void

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1336
    .local v1, "failed":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1340
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v3

    .line 1341
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z

    .line 1342
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1344
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    const-string v2, "releaseStoreProtocol()"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1346
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1347
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1355
    if-eqz v1, :cond_1

    .line 1356
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1357
    :cond_1
    return-void

    .line 1354
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1347
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1337
    .end local v1    # "failed":Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private timeoutConnections()V
    .locals 9

    .line 1407
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    .line 1411
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$700(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1412
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$800(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1413
    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 1415
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checking for connections to prune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$700(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1416
    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1418
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientTimeoutInterval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1419
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$900(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1418
    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1427
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .line 1428
    .local v1, "index":I
    :goto_0
    if-lez v1, :cond_3

    .line 1429
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    .line 1430
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1431
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1432
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocol last used: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1432
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1434
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1435
    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$900(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1437
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    const-string v4, "authenticated connection timed out, logging out the connection"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1442
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    :try_start_1
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1

    .line 1428
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1449
    .end local v1    # "index":I
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$702(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)J

    .line 1451
    :cond_4
    monitor-exit v0

    .line 1452
    return-void

    .line 1451
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private tracePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 2208
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debugpassword:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 2209
    :cond_0
    if-nez p1, :cond_1

    const-string v0, "<null>"

    goto :goto_0

    :cond_1
    const-string v0, "<non-null>"

    .line 2208
    :goto_0
    return-object v0
.end method

.method private traceUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .line 2204
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debugusername:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "<user name suppressed>"

    :goto_0
    return-object v0
.end method

.method private waitIfIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2123
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2124
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 2127
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2131
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2139
    goto :goto_0

    .line 2132
    :catch_0
    move-exception v0

    .line 2138
    .local v0, "ex":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Interrupted waitIfIdle"

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2141
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1
    return-void

    .line 2123
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method allowReadOnlySelect()Z
    .locals 3

    .line 1242
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".allowreadonlyselect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1602
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    .line 1606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->closeAllFolders(Z)V

    .line 1607
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    monitor-exit p0

    return-void

    .line 1601
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1612
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->finalizeCleanClose:Z

    if-nez v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1615
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1616
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1617
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    goto :goto_0

    .line 1617
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1621
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1623
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 1624
    nop

    .line 1625
    return-void

    .line 1623
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 1624
    throw v0
.end method

.method getAppendBufferSize()I
    .locals 1

    .line 1486
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    return v0
.end method

.method getConnectionPoolLogger()Lcom/sun/mail/util/MailLogger;
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDefaultFolder()Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1727
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1728
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1726
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFetchBlockSize()I
    .locals 1

    .line 1458
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    return v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1737
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1738
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1736
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1747
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1748
    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    const v1, 0xffff

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1746
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    .end local p1    # "url":Ljavax/mail/URLName;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1204
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1205
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1206
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1207
    return-object v0
.end method

.method getMessageCacheDebug()Z
    .locals 1

    .line 1264
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->messageCacheDebug:Z

    return v0
.end method

.method getMinIdleTime()I
    .locals 1

    .line 1493
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    return v0
.end method

.method getPeek()Z
    .locals 1

    .line 1507
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    return v0
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1819
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1820
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1822
    :cond_0
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    return-object v1

    .line 1821
    :cond_1
    :goto_0
    invoke-super {p0}, Ljavax/mail/Store;->getPersonalNamespaces()[Ljavax/mail/Folder;

    move-result-object v1

    return-object v1
.end method

.method getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 6
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 982
    const/4 v0, 0x0

    .line 985
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    if-nez v0, :cond_a

    .line 993
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 997
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 998
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 999
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$200(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1023
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection available -- size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1024
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1023
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1027
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-object v0, v2

    .line 1028
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1032
    .local v2, "lastUsed":J
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$300(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 1039
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1040
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1041
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 1042
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1043
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    goto :goto_2

    .line 1044
    :catch_0
    move-exception v4

    .line 1046
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1047
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1050
    goto :goto_1

    .line 1048
    :catch_1
    move-exception v5

    .line 1051
    :goto_1
    const/4 v0, 0x0

    .line 1052
    :try_start_3
    monitor-exit v1

    goto/16 :goto_0

    .line 1057
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1058
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getProxyAuthUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "X-UNAUTHENTICATE"

    .line 1059
    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_3

    .line 1066
    :try_start_4
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1067
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1068
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unauthenticate()V

    .line 1069
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1071
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1081
    goto :goto_4

    .line 1072
    :catch_2
    move-exception v4

    .line 1074
    .restart local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1075
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1078
    goto :goto_3

    .line 1076
    :catch_3
    move-exception v5

    .line 1079
    :goto_3
    const/4 v0, 0x0

    .line 1080
    :try_start_6
    monitor-exit v1

    goto/16 :goto_0

    .line 1085
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :cond_3
    :goto_4
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    goto :goto_9

    .line 1001
    .end local v2    # "lastUsed":J
    :cond_4
    :goto_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "no connections in the pool, creating a new one"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1003
    :try_start_7
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz v2, :cond_5

    .line 1004
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->refreshPassword()V

    .line 1006
    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, v2, v3}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 1007
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1009
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1017
    goto :goto_8

    .line 1011
    :catch_4
    move-exception v2

    .line 1012
    .local v2, "ex1":Ljava/lang/Exception;
    if-eqz v0, :cond_6

    .line 1014
    :try_start_8
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1015
    :goto_6
    goto :goto_7

    :catch_5
    move-exception v3

    goto :goto_6

    .line 1016
    :cond_6
    :goto_7
    const/4 v0, 0x0

    .line 1019
    .end local v2    # "ex1":Ljava/lang/Exception;
    :goto_8
    if-eqz v0, :cond_9

    .line 1089
    :goto_9
    :try_start_9
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1092
    if-eqz p1, :cond_8

    .line 1093
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1094
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-static {v2, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$402(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1095
    :cond_7
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1097
    :cond_8
    monitor-exit v1

    goto/16 :goto_0

    .line 1020
    :cond_9
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "connection failure"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    throw v2

    .line 1097
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v2

    .line 1101
    :cond_a
    return-object v0
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .locals 1

    .line 1552
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 5
    .param p1, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1911
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1912
    const/4 v0, 0x0

    .line 1914
    .local v0, "qa":[Ljavax/mail/Quota;
    const/4 v1, 0x0

    .line 1916
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1917
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;

    move-result-object v2
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 1925
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1926
    nop

    .line 1927
    monitor-exit p0

    return-object v0

    .line 1925
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1922
    :catch_0
    move-exception v2

    .line 1923
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "qa":[Ljavax/mail/Quota;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "root":Ljava/lang/String;
    throw v3

    .line 1920
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "qa":[Ljavax/mail/Quota;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "root":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1921
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/StoreClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .end local v0    # "qa":[Ljavax/mail/Quota;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "root":Ljava/lang/String;
    throw v3

    .line 1918
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "qa":[Ljavax/mail/Quota;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "root":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1919
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "QUOTA not supported"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "qa":[Ljavax/mail/Quota;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "root":Ljava/lang/String;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1925
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "qa":[Ljavax/mail/Quota;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "root":Ljava/lang/String;
    :goto_0
    :try_start_4
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1926
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1910
    .end local v0    # "qa":[Ljavax/mail/Quota;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "root":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getSession()Ljavax/mail/Session;
    .locals 1

    .line 1472
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1844
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1845
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1847
    :cond_0
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    return-object v1

    .line 1846
    :cond_1
    :goto_0
    invoke-super {p0}, Ljavax/mail/Store;->getSharedNamespaces()[Ljavax/mail/Folder;

    move-result-object v1

    return-object v1
.end method

.method getStatusCacheTimeout()I
    .locals 1

    .line 1479
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    return v0
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1832
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    .line 1833
    .local v0, "ns":Lcom/sun/mail/imap/protocol/Namespaces;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1835
    :cond_0
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, v1, p1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    return-object v1

    .line 1834
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljavax/mail/Store;->getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v1

    return-object v1
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 3
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 1969
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 1971
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1972
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPStore connection dead"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1975
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1976
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1977
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1978
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1979
    :cond_2
    monitor-exit v0

    .line 1980
    return-void

    .line 1979
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1982
    :cond_3
    return-void
.end method

.method handleResponseCode(Lcom/sun/mail/iap/Response;)V
    .locals 5
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 2182
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    if-eqz v0, :cond_0

    .line 2183
    const/16 v0, 0x3e8

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    .line 2184
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v0

    .line 2185
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2186
    .local v1, "isAlert":Z
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2187
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2189
    .local v2, "i":I
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ALERT]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2190
    const/4 v1, 0x1

    .line 2192
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2194
    .end local v2    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 2195
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    goto :goto_0

    .line 2196
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 2200
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    .line 2201
    :cond_4
    :goto_0
    return-void
.end method

.method public declared-synchronized hasCapability(Ljava/lang/String;)Z
    .locals 4
    .param p1, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1521
    const/4 v0, 0x0

    .line 1523
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 1524
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1524
    monitor-exit p0

    return v1

    .line 1528
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1525
    :catch_0
    move-exception v1

    .line 1526
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "capability":Ljava/lang/String;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1528
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "capability":Ljava/lang/String;
    :goto_0
    :try_start_3
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1529
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1520
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "capability":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method hasSeparateStoreConnection()Z
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized id(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
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

    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 2158
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2159
    const/4 v0, 0x0

    .line 2161
    .local v0, "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2163
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 2164
    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 2172
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2173
    nop

    .line 2174
    monitor-exit p0

    return-object v0

    .line 2172
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2169
    :catch_0
    move-exception v2

    .line 2170
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v3

    .line 2167
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 2168
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/StoreClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .end local v0    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v3

    .line 2165
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v2

    .line 2166
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "ID not supported"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2172
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    :try_start_4
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2173
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2157
    .end local v0    # "serverParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public idle()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2021
    const/4 v0, 0x0

    .line 2024
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2025
    monitor-enter p0

    .line 2026
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 2027
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2028
    const/4 v1, 0x0

    .line 2030
    .local v1, "needNotification":Z
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2031
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v5

    move-object v0, v5

    .line 2032
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v5, :cond_1

    .line 2038
    :try_start_3
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2045
    nop

    .line 2046
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2106
    if-eqz v1, :cond_0

    .line 2107
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4

    .line 2108
    :try_start_5
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2109
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2110
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2111
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2113
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2046
    return-void

    .line 2039
    :catch_0
    move-exception v5

    .line 2042
    .local v5, "ex":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 2044
    new-instance v6, Ljavax/mail/MessagingException;

    const-string v7, "idle interrupted"

    invoke-direct {v6, v7, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "needNotification":Z
    throw v6

    .line 2048
    .end local v5    # "ex":Ljava/lang/InterruptedException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "needNotification":Z
    :cond_1
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    .line 2049
    const/4 v1, 0x1

    .line 2050
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2051
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2052
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2068
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 2069
    .local v4, "r":Lcom/sun/mail/iap/Response;
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v5
    :try_end_7
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2070
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 2077
    :cond_2
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2078
    :try_start_9
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2079
    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {p0, v6, v5}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V
    :try_end_9
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2081
    .end local v4    # "r":Lcom/sun/mail/iap/Response;
    :cond_3
    goto :goto_1

    .line 2071
    .restart local v4    # "r":Lcom/sun/mail/iap/Response;
    :cond_4
    :goto_2
    :try_start_a
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2072
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2073
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 2074
    const/4 v1, 0x0

    .line 2075
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2088
    .end local v4    # "r":Lcom/sun/mail/iap/Response;
    :try_start_b
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v4
    :try_end_b
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 2089
    .local v4, "minidle":I
    if-lez v4, :cond_5

    .line 2091
    int-to-long v5, v4

    :try_start_c
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2096
    goto :goto_3

    .line 2092
    :catch_1
    move-exception v5

    .line 2095
    .restart local v5    # "ex":Ljava/lang/InterruptedException;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_d
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_d .. :try_end_d} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2106
    .end local v4    # "minidle":I
    .end local v5    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 2107
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4

    .line 2108
    :try_start_e
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2109
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2110
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2111
    monitor-exit v4

    goto :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v2

    .line 2113
    :cond_6
    :goto_4
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2114
    nop

    .line 2115
    return-void

    .line 2077
    .local v4, "r":Lcom/sun/mail/iap/Response;
    :catchall_2
    move-exception v6

    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "needNotification":Z
    :try_start_10
    throw v6
    :try_end_10
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 2052
    .end local v4    # "r":Lcom/sun/mail/iap/Response;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "needNotification":Z
    :catchall_3
    move-exception v5

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "needNotification":Z
    :try_start_12
    throw v5
    :try_end_12
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 2106
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "needNotification":Z
    :catchall_4
    move-exception v4

    goto :goto_5

    .line 2103
    :catch_2
    move-exception v4

    .line 2104
    .local v4, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_13
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "needNotification":Z
    throw v5

    .line 2101
    .end local v4    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "needNotification":Z
    :catch_3
    move-exception v4

    .line 2102
    .local v4, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v5, Ljavax/mail/StoreClosedException;

    invoke-virtual {v4}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "needNotification":Z
    throw v5

    .line 2099
    .end local v4    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "needNotification":Z
    :catch_4
    move-exception v4

    .line 2100
    .local v4, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "IDLE not supported"

    invoke-direct {v5, v6, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "needNotification":Z
    throw v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 2106
    .end local v4    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "needNotification":Z
    :goto_5
    if-eqz v1, :cond_7

    .line 2107
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v5

    .line 2108
    :try_start_14
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v6, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2109
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2110
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2111
    monitor-exit v5

    goto :goto_6

    :catchall_5
    move-exception v2

    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v2

    .line 2113
    :cond_7
    :goto_6
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2114
    throw v4

    .line 2027
    .end local v1    # "needNotification":Z
    :catchall_6
    move-exception v1

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    throw v1

    .line 2024
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method ignoreBodyStructureSize()Z
    .locals 1

    .line 1465
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    return v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    .line 1561
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1564
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 1583
    :cond_0
    const/4 v0, 0x0

    .line 1585
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 1586
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1590
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1591
    goto :goto_0

    .line 1590
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1591
    throw v1

    .line 1587
    :catch_0
    move-exception v1

    .line 1590
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1591
    nop

    .line 1594
    :goto_0
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v1

    .line 1560
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isConnectionPoolFull()Z
    .locals 4

    .line 1272
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    .line 1273
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection pool current size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1275
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   pool size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1276
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$600(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1274
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$600(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 937
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 937
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;
    .locals 5
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;

    .line 1798
    const/4 v0, 0x0

    .line 1799
    .local v0, "f":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 1801
    :try_start_0
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v1

    .line 1802
    .local v1, "o":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPFolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1806
    .end local v1    # "o":[Ljava/lang/Object;
    goto :goto_0

    .line 1803
    :catch_0
    move-exception v1

    .line 1804
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "exception creating IMAPFolder class LI"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1808
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1809
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {v1, p1, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    move-object v0, v1

    .line 1810
    :cond_1
    return-object v0
.end method

.method protected newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;
    .locals 1
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .line 1787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v0

    return-object v0
.end method

.method protected newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;
    .locals 5
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "isNamespace"    # Ljava/lang/Boolean;

    .line 1762
    const/4 v0, 0x0

    .line 1763
    .local v0, "f":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_0

    .line 1765
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1766
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    .line 1767
    .local v1, "o":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPFolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1771
    .end local v1    # "o":[Ljava/lang/Object;
    goto :goto_0

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "exception creating IMAPFolder class"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1773
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1774
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    move-object v0, v1

    .line 1775
    :cond_1
    return-object v0
.end method

.method protected newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 738
    new-instance v7, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    .line 739
    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Properties;ZLcom/sun/mail/util/MailLogger;)V

    .line 738
    return-object v7
.end method

.method protected preLogin(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 0
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 928
    return-void
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "pport"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 639
    const/4 v0, 0x0

    .line 642
    .local v0, "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_a

    if-eqz p4, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 652
    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 653
    :try_start_0
    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    goto :goto_0

    .line 655
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".port"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-static {v2, v3, v4}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 660
    :goto_0
    iget v2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    if-ne v2, v1, :cond_2

    .line 661
    iget v1, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput v1, p0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 666
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 667
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    .line 668
    .local v2, "poolEmpty":Z
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 670
    if-eqz v2, :cond_5

    .line 671
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 672
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trying to connect to host \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSSL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 674
    :cond_3
    iget v1, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 675
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 676
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocolConnect login, host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 678
    invoke-direct {p0, p3}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", password="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 679
    invoke-direct {p0, p4}, Lcom/sun/mail/imap/IMAPStore;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 676
    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 680
    :cond_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 681
    invoke-direct {p0, v0, p3, p4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 683
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 685
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isSSL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z

    .line 687
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    .line 688
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 689
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    .line 691
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1
    :try_end_3
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 692
    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 693
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "pport":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    :try_start_5
    throw v3
    :try_end_5
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 719
    .end local v2    # "poolEmpty":Z
    .restart local v0    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "pport":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :cond_5
    :goto_1
    nop

    .line 721
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 668
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "pport":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    :try_start_7
    throw v2
    :try_end_7
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 717
    .restart local v0    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "pport":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 718
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_8
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 715
    .end local v1    # "ioex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 716
    .local v1, "scex":Lcom/sun/mail/util/SocketConnectException;
    new-instance v2, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v2, v1}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v2

    .line 709
    .end local v1    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_2
    move-exception v1

    .line 711
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    if-eqz v0, :cond_6

    .line 712
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 713
    :cond_6
    const/4 v0, 0x0

    .line 714
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 701
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v1

    .line 703
    .local v1, "cex":Lcom/sun/mail/iap/CommandFailedException;
    if-eqz v0, :cond_7

    .line 704
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 705
    :cond_7
    const/4 v0, 0x0

    .line 706
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 707
    .local v2, "r":Lcom/sun/mail/iap/Response;
    new-instance v3, Ljavax/mail/AuthenticationFailedException;

    .line 708
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-direct {v3, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 695
    .end local v1    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    :catch_4
    move-exception v1

    .line 697
    .local v1, "ex":Lcom/sun/mail/imap/protocol/IMAPReferralException;
    if-eqz v0, :cond_9

    .line 698
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 699
    :cond_9
    const/4 v0, 0x0

    .line 700
    new-instance v2, Lcom/sun/mail/imap/ReferralException;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPReferralException;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPReferralException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/mail/imap/ReferralException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 643
    .end local v1    # "ex":Lcom/sun/mail/imap/protocol/IMAPReferralException;
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 644
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocolConnect returning false, host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 646
    invoke-direct {p0, p3}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", password="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 647
    invoke-direct {p0, p4}, Lcom/sun/mail/imap/IMAPStore;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 648
    :cond_b
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 638
    .end local v0    # "protocol":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "pport":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 3
    .param p1, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1363
    if-nez p1, :cond_0

    .line 1364
    return-void

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1366
    invoke-virtual {p1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1367
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    .line 1368
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z

    .line 1369
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1371
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    const-string v2, "releaseFolderStoreProtocol()"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1373
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1374
    monitor-exit v0

    .line 1375
    return-void

    .line 1374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 4
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "protocol"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1288
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    .line 1289
    if-eqz p2, :cond_1

    .line 1292
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1294
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1296
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1297
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added an Authenticated connection -- size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1299
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1297
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 1301
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "pool is full, not adding an Authenticated connection"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    :try_start_1
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1305
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1309
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1310
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1312
    :cond_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1313
    monitor-exit v0

    .line 1314
    return-void

    .line 1313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    monitor-enter p0

    .line 972
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    monitor-exit p0

    return-void

    .line 971
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    .end local p1    # "password":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProxyAuthUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .line 1542
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .line 1543
    return-void
.end method

.method public declared-synchronized setQuota(Ljavax/mail/Quota;)V
    .locals 4
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1941
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1942
    const/4 v0, 0x0

    .line 1944
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 1945
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1953
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1954
    nop

    .line 1955
    monitor-exit p0

    return-void

    .line 1953
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1950
    :catch_0
    move-exception v1

    .line 1951
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "quota":Ljavax/mail/Quota;
    throw v2

    .line 1948
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "quota":Ljavax/mail/Quota;
    :catch_1
    move-exception v1

    .line 1949
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "quota":Ljavax/mail/Quota;
    throw v2

    .line 1946
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "quota":Ljavax/mail/Quota;
    :catch_2
    move-exception v1

    .line 1947
    .local v1, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "QUOTA not supported"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "quota":Ljavax/mail/Quota;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1953
    .end local v1    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "quota":Ljavax/mail/Quota;
    :goto_0
    :try_start_4
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1954
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1940
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "quota":Ljavax/mail/Quota;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    monitor-enter p0

    .line 957
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    monitor-exit p0

    return-void

    .line 956
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPStore;
    .end local p1    # "user":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method throwSearchException()Z
    .locals 1

    .line 1500
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    return v0
.end method
