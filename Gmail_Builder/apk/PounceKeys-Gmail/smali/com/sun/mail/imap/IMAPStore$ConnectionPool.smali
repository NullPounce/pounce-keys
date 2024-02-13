.class Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
.super Ljava/lang/Object;
.source "IMAPStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/IMAPStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionPool"
.end annotation


# static fields
.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I


# instance fields
.field private authenticatedConnections:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sun/mail/imap/protocol/IMAPProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private final clientTimeoutInterval:J

.field private folders:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field

.field private idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private idleState:I

.field private lastTimePruned:J

.field private final logger:Lcom/sun/mail/util/MailLogger;

.field private final poolSize:I

.field private final pruningInterval:J

.field private final separateStoreConnection:Z

.field private final serverTimeoutInterval:J

.field private storeConnectionInUse:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sun/mail/util/MailLogger;Ljavax/mail/Session;)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plogger"    # Lcom/sun/mail/util/MailLogger;
    .param p3, "session"    # Ljavax/mail/Session;

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    .line 242
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    .line 311
    iput v2, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    .line 316
    invoke-virtual/range {p3 .. p3}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 318
    .local v3, "props":Ljava/util/Properties;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".connectionpool.debug"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    .line 320
    .local v4, "debug":Z
    const-string v6, "connectionpool"

    const-string v7, "DEBUG IMAP CP"

    move-object/from16 v8, p2

    invoke-virtual {v8, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;

    move-result-object v6

    iput-object v6, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    .line 324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".connectionpoolsize"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    invoke-static {v3, v7, v9}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v7

    .line 326
    .local v7, "size":I
    if-lez v7, :cond_0

    .line 327
    iput v7, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    .line 328
    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v6, v10}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 329
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mail.imap.connectionpoolsize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_0
    const/4 v10, 0x1

    iput v10, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    .line 334
    :cond_1
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".connectionpooltimeout"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v9}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v10

    .line 336
    .local v10, "connectionPoolTimeout":I
    if-lez v10, :cond_2

    .line 337
    int-to-long v11, v10

    iput-wide v11, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    .line 338
    sget-object v13, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v6, v13}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 339
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mail.imap.connectionpooltimeout: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_2
    const-wide/32 v11, 0xafc8

    iput-wide v11, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    .line 345
    :cond_3
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".servertimeout"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11, v9}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v11

    .line 347
    .local v11, "serverTimeout":I
    if-lez v11, :cond_4

    .line 348
    int-to-long v12, v11

    iput-wide v12, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    .line 349
    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v6, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 350
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mail.imap.servertimeout: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    goto :goto_2

    .line 353
    :cond_4
    const-wide/32 v12, 0x1b7740

    iput-wide v12, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    .line 356
    :cond_5
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".pruninginterval"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12, v9}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v9

    .line 358
    .local v9, "pruning":I
    if-lez v9, :cond_6

    .line 359
    int-to-long v12, v9

    iput-wide v12, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    .line 360
    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v6, v14}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 361
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mail.imap.pruninginterval: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    goto :goto_3

    .line 364
    :cond_6
    const-wide/32 v12, 0xea60

    iput-wide v12, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    .line 368
    :cond_7
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ".separatestoreconnection"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-static {v3, v5, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    .line 371
    if-eqz v2, :cond_8

    .line 372
    const-string v2, "dedicate a store connection"

    invoke-virtual {v6, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 374
    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->authenticatedConnections:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->separateStoreConnection:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # I

    .line 232
    iput p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 232
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->idleProtocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # Z

    .line 232
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->storeConnectionInUse:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->serverTimeoutInterval:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # Ljava/util/Vector;

    .line 232
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->folders:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->poolSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    .param p1, "x1"    # J

    .line 232
    iput-wide p1, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->lastTimePruned:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->pruningInterval:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J
    .locals 2
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 232
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->clientTimeoutInterval:J

    return-wide v0
.end method
