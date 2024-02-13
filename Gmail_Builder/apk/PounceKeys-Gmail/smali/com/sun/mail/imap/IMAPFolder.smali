.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;,
        Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I = 0x0

.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'


# instance fields
.field protected volatile attributes:[Ljava/lang/String;

.field protected availableFlags:Ljavax/mail/Flags;

.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;

.field private cachedStatusTime:J

.field private connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

.field private doExpungeNotification:Z

.field protected volatile exists:Z

.field protected volatile fullName:Ljava/lang/String;

.field private hasMessageCountListener:Z

.field private volatile highestmodseq:J

.field private idleManager:Lcom/sun/mail/imap/IdleManager;

.field private idleState:I

.field protected isNamespace:Z

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field protected messageCache:Lcom/sun/mail/imap/MessageCache;

.field protected final messageCacheLock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field private volatile opened:Z

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected volatile protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private realTotal:I

.field private reallyClosed:Z

.field private volatile recent:I

.field protected separator:C

.field private volatile total:I

.field protected type:I

.field private uidNotSticky:Z

.field protected uidTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Lcom/sun/mail/imap/IMAPMessage;",
            ">;"
        }
    .end annotation
.end field

.field private uidnext:J

.field private uidvalidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 156
    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .locals 3
    .param p1, "li"    # Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;

    .line 411
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    .line 413
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v0, :cond_0

    .line 414
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 415
    :cond_0
    iget-boolean v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 416
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 417
    :cond_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 418
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 419
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "separator"    # C
    .param p3, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p4, "isNamespace"    # Ljava/lang/Boolean;

    .line 370
    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 171
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    .line 183
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 247
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 250
    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 252
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 253
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 255
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 256
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 257
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidNotSticky:Z

    .line 258
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 259
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 261
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 262
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 264
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    .line 371
    if-eqz p1, :cond_2

    .line 373
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 374
    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 375
    new-instance v2, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 376
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebug()Z

    move-result v4

    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v5

    const-string v6, "DEBUG IMAP"

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 377
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolLogger()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    .line 390
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 391
    const v2, 0xffff

    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 393
    .local v2, "i":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 395
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 400
    .end local v2    # "i":I
    :cond_0
    if-eqz p4, :cond_1

    .line 401
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 402
    :cond_1
    return-void

    .line 372
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Folder name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/sun/mail/imap/IMAPFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPFolder;

    .line 156
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sun/mail/imap/IMAPFolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p1, "x1"    # I

    .line 156
    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p1
.end method

.method static synthetic access$100(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/IdleManager;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPFolder;

    .line 156
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/imap/IdleManager;
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p1, "x1"    # Lcom/sun/mail/imap/IdleManager;

    .line 156
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object p1
.end method

.method private addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ife"    # Ljava/lang/Throwable;
    .param p2, "thr"    # Ljava/lang/Throwable;

    .line 1166
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1178
    return-void

    .line 1169
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1170
    instance-of v0, p2, Ljava/lang/Error;

    if-nez v0, :cond_2

    .line 1173
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 1174
    move-object v0, p2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1176
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unexpected exception"

    invoke-direct {v0, v1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1171
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .locals 3
    .param p1, "flags"    # Ljavax/mail/Flags;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 500
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 511
    return-void

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot change flags on READ_ONLY folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private cleanup(Z)V
    .locals 2
    .param p1, "returnToPool"    # Z

    .line 1574
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1577
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 1578
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1579
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1580
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1581
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 1582
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1583
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    .line 1584
    return-void

    .line 1574
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private cleanupAndThrow(Ljavax/mail/MessagingException;)Ljavax/mail/MessagingException;
    .locals 3
    .param p1, "ife"    # Ljavax/mail/MessagingException;

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    goto :goto_0

    .line 1149
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1141
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sun/mail/imap/IMAPFolder;->logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1146
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1147
    nop

    .line 1151
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :goto_0
    goto :goto_2

    .line 1146
    .restart local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catchall_1
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1147
    nop

    .end local p1    # "ife":Ljavax/mail/MessagingException;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1150
    .local v0, "thr":Ljava/lang/Throwable;
    .restart local p1    # "ife":Ljavax/mail/MessagingException;
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1152
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_2
    return-object p1
.end method

.method private close(ZZ)V
    .locals 6
    .param p1, "expunge"    # Z
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1477
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1478
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1485
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1486
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This operation is not allowed on a closed folder"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "expunge":Z
    .end local p2    # "force":Z
    throw v1

    .line 1490
    .restart local p1    # "expunge":Z
    .restart local p2    # "force":Z
    :cond_1
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1496
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_2

    .line 1497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 1499
    :cond_2
    const/4 v1, 0x1

    .line 1501
    .local v1, "reuseProtocol":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 1502
    if-eqz p2, :cond_3

    .line 1503
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "forcing folder {0} to close"

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1505
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_9

    .line 1506
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto/16 :goto_3

    .line 1507
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1509
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "pool is full, not adding an Authenticated connection"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1513
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_4

    .line 1514
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1516
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_9

    .line 1517
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    goto :goto_3

    .line 1522
    :cond_5
    if-nez p1, :cond_8

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1524
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v3, "UNSELECT"

    .line 1525
    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1526
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unselect()V

    goto :goto_2

    .line 1536
    :cond_6
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_7

    .line 1537
    const/4 v2, 0x1

    .line 1539
    .local v2, "selected":Z
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1545
    goto :goto_1

    .line 1541
    :catch_0
    move-exception v3

    .line 1544
    .local v3, "ex":Lcom/sun/mail/iap/CommandFailedException;
    const/4 v2, 0x0

    .line 1546
    .end local v3    # "ex":Lcom/sun/mail/iap/CommandFailedException;
    :goto_1
    if-eqz v2, :cond_7

    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v3, :cond_7

    .line 1547
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1550
    .end local v2    # "selected":Z
    :catch_1
    move-exception v2

    .line 1551
    .local v2, "pex2":Lcom/sun/mail/iap/ProtocolException;
    const/4 v1, 0x0

    .line 1552
    .end local v2    # "pex2":Lcom/sun/mail/iap/ProtocolException;
    :cond_7
    :goto_2
    goto :goto_3

    .line 1554
    :cond_8
    :try_start_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v2, :cond_9

    .line 1555
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1562
    :cond_9
    :goto_3
    :try_start_6
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v2, :cond_a

    .line 1563
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1565
    .end local v1    # "reuseProtocol":Z
    :cond_a
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1566
    return-void

    .line 1562
    .restart local v1    # "reuseProtocol":Z
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1558
    :catch_2
    move-exception v2

    .line 1559
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "reuseProtocol":Z
    .end local p1    # "expunge":Z
    .end local p2    # "force":Z
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1562
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v1    # "reuseProtocol":Z
    .restart local p1    # "expunge":Z
    .restart local p2    # "force":Z
    :goto_4
    :try_start_8
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v3, :cond_b

    .line 1563
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1564
    :cond_b
    nop

    .end local p1    # "expunge":Z
    .end local p2    # "force":Z
    throw v2

    .line 1565
    .end local v1    # "reuseProtocol":Z
    .restart local p1    # "expunge":Z
    .restart local p2    # "force":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1

    .line 1477
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private declared-synchronized copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    .locals 5
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2075
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2077
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 2078
    monitor-exit p0

    return-void

    .line 2081
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_4

    .line 2082
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2084
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 2085
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 2086
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v2, :cond_2

    .line 2089
    if-eqz p3, :cond_1

    .line 2090
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->move([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V

    goto :goto_0

    .line 2092
    :cond_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2105
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :goto_0
    nop

    .line 2106
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2087
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_2
    :try_start_4
    new-instance v3, Ljavax/mail/MessageRemovedException;

    const-string v4, "Messages have been removed"

    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v3
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2106
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2103
    :catch_0
    move-exception v1

    .line 2104
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2101
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_1
    move-exception v1

    .line 2102
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2093
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_2
    move-exception v1

    .line 2094
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRYCREATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 2095
    new-instance v2, Ljavax/mail/FolderNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2097
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2100
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :cond_3
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2106
    .end local v1    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :goto_1
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 2108
    :cond_4
    if-nez p3, :cond_5

    .line 2112
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2113
    :goto_2
    monitor-exit p0

    return-void

    .line 2109
    :cond_5
    :try_start_8
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Move between stores not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2074
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;
    .locals 17
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .param p3, "move"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 2140
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2142
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2143
    monitor-exit p0

    return-object v3

    .line 2146
    :cond_0
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v4, v1, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v0, v4, :cond_2

    .line 2147
    new-instance v0, Ljavax/mail/MessagingException;

    .line 2148
    if-eqz p3, :cond_1

    .line 2149
    const-string v3, "can\'t moveUIDMessages to a different store"

    goto :goto_0

    .line 2150
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    const-string v3, "can\'t copyUIDMessages to a different store"

    :goto_0
    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2154
    :cond_2
    new-instance v0, Ljavax/mail/FetchProfile;

    invoke-direct {v0}, Ljavax/mail/FetchProfile;-><init>()V

    move-object v4, v0

    .line 2155
    .local v4, "fp":Ljavax/mail/FetchProfile;
    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v4, v0}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2156
    invoke-virtual {v1, v2, v4}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2159
    iget-object v5, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2161
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 2163
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-static {v2, v3}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    .line 2164
    .local v3, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v3, :cond_8

    .line 2168
    if-eqz p3, :cond_3

    .line 2169
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v6

    .local v6, "cuid":Lcom/sun/mail/imap/CopyUID;
    goto :goto_1

    .line 2171
    .end local v6    # "cuid":Lcom/sun/mail/imap/CopyUID;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object v6

    .line 2213
    .restart local v6    # "cuid":Lcom/sun/mail/imap/CopyUID;
    :goto_1
    iget-object v7, v6, Lcom/sun/mail/imap/CopyUID;->src:[Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-static {v7}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v7

    .line 2214
    .local v7, "srcuids":[J
    iget-object v8, v6, Lcom/sun/mail/imap/CopyUID;->dst:[Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-static {v8}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v8

    .line 2217
    .local v8, "dstuids":[J
    invoke-virtual {v1, v7}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object v9

    .line 2218
    .local v9, "srcmsgs":[Ljavax/mail/Message;
    array-length v10, v2

    new-array v10, v10, [Lcom/sun/mail/imap/AppendUID;

    .line 2219
    .local v10, "result":[Lcom/sun/mail/imap/AppendUID;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    array-length v12, v2

    if-ge v11, v12, :cond_7

    .line 2220
    move v12, v11

    .line 2222
    .local v12, "j":I
    :goto_3
    aget-object v13, v2, v11

    aget-object v14, v9, v12

    if-ne v13, v14, :cond_4

    .line 2223
    new-instance v13, Lcom/sun/mail/imap/AppendUID;

    iget-wide v14, v6, Lcom/sun/mail/imap/CopyUID;->uidvalidity:J

    move-object/from16 v16, v3

    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .local v16, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    aget-wide v2, v8, v12

    invoke-direct {v13, v14, v15, v2, v3}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    aput-object v13, v10, v11

    .line 2225
    goto :goto_4

    .line 2227
    .end local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_4
    move-object/from16 v16, v3

    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    add-int/lit8 v12, v12, 0x1

    .line 2228
    array-length v2, v9
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v12, v2, :cond_5

    .line 2229
    const/4 v2, 0x0

    move v12, v2

    .line 2230
    :cond_5
    if-ne v12, v11, :cond_6

    .line 2219
    .end local v12    # "j":I
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    goto :goto_2

    .line 2230
    .restart local v12    # "j":I
    :cond_6
    move-object/from16 v2, p1

    move-object/from16 v3, v16

    goto :goto_3

    .line 2219
    .end local v12    # "j":I
    .end local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_7
    move-object/from16 v16, v3

    .line 2232
    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v11    # "i":I
    .restart local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v10

    .line 2165
    .end local v6    # "cuid":Lcom/sun/mail/imap/CopyUID;
    .end local v7    # "srcuids":[J
    .end local v8    # "dstuids":[J
    .end local v9    # "srcmsgs":[Ljavax/mail/Message;
    .end local v10    # "result":[Lcom/sun/mail/imap/AppendUID;
    .end local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_8
    move-object/from16 v16, v3

    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :try_start_4
    new-instance v2, Ljavax/mail/MessageRemovedException;

    const-string v3, "Messages have been removed"

    invoke-direct {v2, v3}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2246
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v16    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catchall_0
    move-exception v0

    move-object/from16 v6, p2

    goto :goto_5

    .line 2243
    :catch_0
    move-exception v0

    .line 2244
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2241
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_1
    move-exception v0

    .line 2242
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2233
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :catch_2
    move-exception v0

    .line 2234
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TRYCREATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 2235
    new-instance v2, Ljavax/mail/FolderNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2237
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " does not exist"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v6, p2

    :try_start_6
    invoke-direct {v2, v6, v3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2240
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :cond_9
    move-object/from16 v6, p2

    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    throw v2

    .line 2246
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v4    # "fp":Ljavax/mail/FetchProfile;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "folder":Ljavax/mail/Folder;
    .restart local p3    # "move":Z
    :goto_5
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 2139
    .end local v4    # "fp":Ljavax/mail/FetchProfile;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    .end local p3    # "move":Z
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createHeaderCommand([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "hdrs"    # [Ljava/lang/String;
    .param p2, "isRev1"    # Z

    .line 1381
    if-eqz p2, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 1384
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RFC822.HEADER.LINES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1386
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 1387
    if-lez v1, :cond_1

    .line 1388
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1392
    .end local v1    # "i":I
    :cond_2
    if-eqz p2, :cond_3

    .line 1393
    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1395
    :cond_3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createMessagesForUIDs([J)[Ljavax/mail/Message;
    .locals 6
    .param p1, "uids"    # [J

    .line 2772
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    .line 2773
    .local v0, "msgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2774
    const/4 v2, 0x0

    .line 2775
    .local v2, "m":Lcom/sun/mail/imap/IMAPMessage;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    .line 2776
    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    .line 2777
    :cond_0
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 2779
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2780
    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2781
    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 2783
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput-object v2, v0, v1

    .line 2773
    .end local v2    # "m":Lcom/sun/mail/imap/IMAPMessage;
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 2785
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "subscribed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 639
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    new-array v0, v1, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 642
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 644
    .local v0, "c":C
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 656
    .local v2, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    if-nez v2, :cond_1

    .line 657
    new-array v1, v1, [Ljavax/mail/Folder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 670
    :cond_1
    const/4 v3, 0x0

    .line 672
    .local v3, "start":I
    :try_start_2
    array-length v4, v2

    if-lez v4, :cond_2

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    const/4 v3, 0x1

    .line 675
    :cond_2
    array-length v1, v2

    sub-int/2addr v1, v3

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    .line 676
    .local v1, "folders":[Lcom/sun/mail/imap/IMAPFolder;
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    .line 677
    .local v4, "st":Lcom/sun/mail/imap/IMAPStore;
    move v5, v3

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 678
    sub-int v6, v5, v3

    aget-object v7, v2, v5

    invoke-virtual {v4, v7}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v7

    aput-object v7, v1, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 679
    .end local v5    # "i":I
    :cond_3
    monitor-exit p0

    return-object v1

    .line 635
    .end local v0    # "c":C
    .end local v1    # "folders":[Lcom/sun/mail/imap/IMAPFolder;
    .end local v2    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v3    # "start":I
    .end local v4    # "st":Lcom/sun/mail/imap/IMAPStore;
    .end local p1    # "pattern":Ljava/lang/String;
    .end local p2    # "subscribed":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .locals 2
    .param p1, "li"    # [Lcom/sun/mail/imap/protocol/ListInfo;
    .param p2, "lname"    # Ljava/lang/String;

    .line 605
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 606
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    goto :goto_1

    .line 605
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_1
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_2

    .line 613
    const/4 v0, 0x0

    .line 615
    :cond_2
    return v0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1788
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v0

    .line 1791
    .local v0, "statusCacheTimeout":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v1, :cond_0

    .line 1792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 1793
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    return-object v1

    .line 1795
    :cond_0
    const/4 v1, 0x0

    .line 1798
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1799
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v2

    .line 1801
    .local v2, "s":Lcom/sun/mail/imap/protocol/Status;
    if-lez v0, :cond_1

    .line 1802
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1805
    :cond_1
    nop

    .line 1807
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1805
    return-object v2

    .line 1807
    .end local v2    # "s":Lcom/sun/mail/imap/protocol/Status;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1808
    throw v2
.end method

.method private isDirectory()Z
    .locals 1

    .line 4033
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecoverable(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 1181
    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/LinkageError;

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

.method private logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;
    .locals 2
    .param p1, "why"    # Ljava/lang/String;
    .param p2, "t"    # Lcom/sun/mail/iap/ProtocolException;

    .line 1156
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1158
    .local v0, "ife":Ljavax/mail/MessagingException;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    goto :goto_0

    .line 1159
    :catchall_0
    move-exception v1

    .line 1160
    .local v1, "thr":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1162
    .end local v1    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method private processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;
    .locals 9
    .param p1, "fr"    # Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 3604
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    .line 3605
    .local v0, "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-eqz v0, :cond_4

    .line 3606
    const/4 v1, 0x0

    .line 3608
    .local v1, "notify":Z
    const-class v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    .line 3609
    .local v2, "uid":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 3610
    iget-wide v3, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 3611
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 3612
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 3613
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    iget-wide v4, v2, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3614
    const/4 v1, 0x1

    .line 3617
    :cond_1
    const-class v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    .line 3618
    .local v3, "modseq":Lcom/sun/mail/imap/protocol/MODSEQ;
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->_getModSeq()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 3619
    iget-wide v4, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    invoke-virtual {v0, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setModSeq(J)V

    .line 3626
    const/4 v1, 0x1

    .line 3630
    :cond_2
    const-class v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {p1, v4}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/FLAGS;

    .line 3631
    .local v4, "flags":Lcom/sun/mail/imap/protocol/FLAGS;
    if-eqz v4, :cond_3

    .line 3632
    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    .line 3633
    const/4 v1, 0x1

    .line 3638
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    .line 3640
    if-nez v1, :cond_4

    .line 3641
    const/4 v0, 0x0

    .line 3643
    .end local v1    # "notify":Z
    .end local v2    # "uid":Lcom/sun/mail/imap/protocol/UID;
    .end local v3    # "modseq":Lcom/sun/mail/imap/protocol/MODSEQ;
    .end local v4    # "flags":Lcom/sun/mail/imap/protocol/FLAGS;
    :cond_4
    return-object v0
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .locals 2
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .param p2, "mod"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3037
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 3046
    return-void
.end method


# virtual methods
.method public addACL(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2939
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2940
    return-void
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/MessageCountListener;

    monitor-enter p0

    .line 2486
    :try_start_0
    invoke-super {p0, p1}, Ljavax/mail/Folder;->addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V

    .line 2487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    monitor-exit p0

    return-void

    .line 2485
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "l":Ljavax/mail/event/MessageCountListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1969
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1970
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/internet/MimeMessage;

    .line 1971
    .local v0, "rmsgs":[Ljavax/mail/Message;
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v1

    .line 1972
    .local v1, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1973
    aget-object v3, v1, v2

    .line 1974
    .local v3, "auid":Lcom/sun/mail/imap/AppendUID;
    if-eqz v3, :cond_0

    .line 1975
    iget-wide v4, v3, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 1977
    :try_start_1
    iget-wide v4, v3, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v0, v2
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1980
    goto :goto_1

    .line 1978
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v4

    .line 1972
    .end local v3    # "auid":Lcom/sun/mail/imap/AppendUID;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1984
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 1968
    .end local v0    # "rmsgs":[Ljavax/mail/Message;
    .end local v1    # "uids":[Lcom/sun/mail/imap/AppendUID;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2972
    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2973
    return-void
.end method

.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1846
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1853
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    .line 1855
    .local v0, "maxsize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 1856
    aget-object v2, p1, v1

    .line 1857
    .local v2, "m":Ljavax/mail/Message;
    invoke-virtual {v2}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v3

    .line 1858
    .local v3, "d":Ljava/util/Date;
    if-nez v3, :cond_0

    .line 1859
    invoke-virtual {v2}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v4

    move-object v3, v4

    .line 1860
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    move-object v4, v3

    .line 1861
    .local v4, "dd":Ljava/util/Date;
    invoke-virtual {v2}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1866
    .local v5, "f":Ljavax/mail/Flags;
    :try_start_1
    new-instance v6, Lcom/sun/mail/imap/MessageLiteral;

    .line 1867
    invoke-virtual {v2}, Ljavax/mail/Message;->getSize()I

    move-result v7

    if-le v7, v0, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-direct {v6, v2, v7}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1873
    .local v6, "mos":Lcom/sun/mail/imap/MessageLiteral;
    nop

    .line 1875
    :try_start_2
    new-instance v7, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v7, p0, v5, v4, v6}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    goto :goto_2

    .line 1871
    .end local v6    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    :catch_0
    move-exception v6

    .line 1872
    .local v6, "mrex":Ljavax/mail/MessageRemovedException;
    nop

    .line 1855
    .end local v2    # "m":Ljavax/mail/Message;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "dd":Ljava/util/Date;
    .end local v5    # "f":Ljavax/mail/Flags;
    .end local v6    # "mrex":Ljavax/mail/MessageRemovedException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1868
    .restart local v2    # "m":Ljavax/mail/Message;
    .restart local v3    # "d":Ljava/util/Date;
    .restart local v4    # "dd":Ljava/util/Date;
    .restart local v5    # "f":Ljavax/mail/Flags;
    :catch_1
    move-exception v6

    .line 1869
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljavax/mail/MessagingException;

    const-string v8, "IOException while appending messages"

    invoke-direct {v7, v8, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1884
    .end local v1    # "i":I
    .end local v2    # "m":Ljavax/mail/Message;
    .end local v3    # "d":Ljava/util/Date;
    .end local v4    # "dd":Ljava/util/Date;
    .end local v5    # "f":Ljavax/mail/Flags;
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_2
    monitor-exit p0

    return-void

    .line 1845
    .end local v0    # "maxsize":I
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .locals 9
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1906
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1913
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    .line 1915
    .local v0, "maxsize":I
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/mail/imap/AppendUID;

    .line 1916
    .local v1, "uids":[Lcom/sun/mail/imap/AppendUID;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1917
    aget-object v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    .local v3, "m":Ljavax/mail/Message;
    :try_start_1
    new-instance v4, Lcom/sun/mail/imap/MessageLiteral;

    .line 1923
    invoke-virtual {v3}, Ljavax/mail/Message;->getSize()I

    move-result v5

    if-le v5, v0, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-direct {v4, v3, v5}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1929
    .local v4, "mos":Lcom/sun/mail/imap/MessageLiteral;
    nop

    .line 1931
    :try_start_2
    invoke-virtual {v3}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v5

    .line 1932
    .local v5, "d":Ljava/util/Date;
    if-nez v5, :cond_1

    .line 1933
    invoke-virtual {v3}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    .line 1934
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    move-object v6, v5

    .line 1935
    .local v6, "dd":Ljava/util/Date;
    invoke-virtual {v3}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v7

    .line 1936
    .local v7, "f":Ljavax/mail/Flags;
    new-instance v8, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v8, p0, v7, v6, v4}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/mail/imap/AppendUID;

    .line 1943
    .local v8, "auid":Lcom/sun/mail/imap/AppendUID;
    aput-object v8, v1, v2

    goto :goto_2

    .line 1927
    .end local v4    # "mos":Lcom/sun/mail/imap/MessageLiteral;
    .end local v5    # "d":Ljava/util/Date;
    .end local v6    # "dd":Ljava/util/Date;
    .end local v7    # "f":Ljavax/mail/Flags;
    .end local v8    # "auid":Lcom/sun/mail/imap/AppendUID;
    :catch_0
    move-exception v4

    .line 1928
    .local v4, "mrex":Ljavax/mail/MessageRemovedException;
    nop

    .line 1916
    .end local v3    # "m":Ljavax/mail/Message;
    .end local v4    # "mrex":Ljavax/mail/MessageRemovedException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1924
    .restart local v3    # "m":Ljavax/mail/Message;
    :catch_1
    move-exception v4

    .line 1925
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "IOException while appending messages"

    invoke-direct {v5, v6, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1945
    .end local v2    # "i":I
    .end local v3    # "m":Ljavax/mail/Message;
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 1905
    .end local v0    # "maxsize":I
    .end local v1    # "uids":[Lcom/sun/mail/imap/AppendUID;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected checkClosed()V
    .locals 2

    .line 440
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 444
    return-void

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on an open folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExists()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 430
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1
    :goto_0
    return-void
.end method

.method protected checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 451
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_1

    .line 453
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on a closed folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    new-instance v0, Ljavax/mail/FolderClosedException;

    const-string v1, "Lost folder connection to server"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    return-void

    .line 451
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected checkRange(I)V
    .locals 4
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 471
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 474
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_0

    .line 475
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    nop

    .line 489
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_1

    .line 493
    return-void

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgno":I
    throw v2

    .line 483
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgno":I
    :catch_1
    move-exception v1

    .line 485
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgno":I
    throw v2

    .line 489
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgno":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 472
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "message number < 1"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close(Z)V
    .locals 1
    .param p1, "expunge"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1460
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1461
    monitor-exit p0

    return-void

    .line 1459
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "expunge":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1994
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    monitor-exit p0

    return-void

    .line 1993
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2019
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2019
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized create(I)Z
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "c":C
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 784
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v1

    move v0, v1

    .line 785
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    move v1, v0

    .line 786
    .local v1, "sep":C
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    .local v2, "ret":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 816
    monitor-exit p0

    const/4 v3, 0x0

    return v3

    .line 821
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v3

    .line 822
    .local v3, "retb":Z
    if-eqz v3, :cond_2

    .line 823
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    :cond_2
    monitor-exit p0

    return v3

    .line 781
    .end local v0    # "c":C
    .end local v1    # "sep":C
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "retb":Z
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Z)Z
    .locals 3
    .param p1, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 911
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 913
    if-eqz p1, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v0

    .line 916
    .local v0, "f":[Ljavax/mail/Folder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 917
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljavax/mail/Folder;->delete(Z)Z

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v0    # "f":[Ljavax/mail/Folder;
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 932
    monitor-exit p0

    return v1

    .line 935
    :cond_1
    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 936
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 939
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 940
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 910
    .end local v0    # "ret":Ljava/lang/Object;
    .end local p1    # "recurse":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3839
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3843
    :catch_0
    move-exception v0

    .line 3844
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3840
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 3842
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3845
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    nop

    .line 3846
    const/4 v0, 0x0

    return-object v0
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3867
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3873
    :catch_0
    move-exception v0

    .line 3874
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3870
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 3872
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3875
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    nop

    .line 3876
    return-object v0

    .line 3868
    :catch_2
    move-exception v1

    .line 3869
    .local v1, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    return-object v0
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 3
    .param p1, "err"    # Ljava/lang/String;
    .param p2, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3852
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3858
    :catch_0
    move-exception v0

    .line 3859
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 3855
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 3857
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    .line 3860
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    nop

    .line 3861
    const/4 v0, 0x0

    return-object v0

    .line 3853
    :catch_2
    move-exception v0

    .line 3854
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-direct {v1, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected declared-synchronized doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 2
    .param p1, "cmd"    # Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3886
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3887
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3888
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 3889
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 3893
    :cond_0
    const/4 v0, 0x0

    .line 3896
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 3897
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3899
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3897
    monitor-exit p0

    return-object v1

    .line 3899
    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3900
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 3885
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local p1    # "cmd":Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;
    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exists()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 559
    const/4 v0, 0x0

    .line 561
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v1, :cond_0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v1, :cond_0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "lname":Ljava/lang/String;
    goto :goto_0

    .line 564
    .end local v1    # "lname":Ljava/lang/String;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 566
    .restart local v1    # "lname":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v2, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v2

    .line 573
    if-eqz v0, :cond_4

    .line 574
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v2

    .line 575
    .local v2, "i":I
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 576
    aget-object v3, v0, v2

    iget-char v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 577
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 578
    .local v3, "len":I
    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    .line 579
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v4, v6, :cond_1

    .line 580
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 582
    :cond_1
    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 583
    aget-object v4, v0, v2

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v4, :cond_2

    .line 584
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 585
    :cond_2
    aget-object v4, v0, v2

    iget-boolean v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 586
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 587
    :cond_3
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 588
    aget-object v4, v0, v2

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 589
    .end local v2    # "i":I
    .end local v3    # "len":I
    goto :goto_1

    .line 590
    :cond_4
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 591
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 594
    :goto_1
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 558
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2254
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2254
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 10
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2269
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2271
    if-eqz p1, :cond_0

    .line 2273
    new-instance v0, Ljavax/mail/FetchProfile;

    invoke-direct {v0}, Ljavax/mail/FetchProfile;-><init>()V

    .line 2274
    .local v0, "fp":Ljavax/mail/FetchProfile;
    sget-object v1, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v0, v1}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2275
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2279
    .end local v0    # "fp":Ljavax/mail/FetchProfile;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2280
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2282
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2283
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    if-eqz p1, :cond_1

    .line 2284
    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V

    goto :goto_0

    .line 2286
    :cond_1
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2300
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    :try_start_3
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2301
    nop

    .line 2304
    if-eqz p1, :cond_2

    .line 2305
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .local v2, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_1

    .line 2307
    .end local v2    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v2}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2308
    .restart local v2    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_4

    .line 2309
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 2310
    aget-object v4, v2, v3

    .line 2312
    .local v4, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v5

    .line 2313
    .local v5, "uid":J
    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_3

    .line 2314
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2309
    .end local v4    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v5    # "uid":J
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2319
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v3}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 2320
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2323
    :try_start_4
    array-length v0, v2

    if-lez v0, :cond_5

    .line 2324
    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2325
    :cond_5
    monitor-exit p0

    return-object v2

    .line 2300
    .end local v2    # "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2296
    :catch_0
    move-exception v2

    .line 2298
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3

    .line 2294
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :catch_1
    move-exception v2

    .line 2295
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3

    .line 2287
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :catch_2
    move-exception v2

    .line 2289
    .local v2, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    .line 2290
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot expunge READ_ONLY folder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3

    .line 2293
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :cond_6
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2300
    .end local v2    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :goto_3
    :try_start_6
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2301
    nop

    .end local p1    # "msgs":[Ljavax/mail/Message;
    throw v2

    .line 2320
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2268
    .end local p1    # "msgs":[Ljavax/mail/Message;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 23
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "fp"    # Ljavax/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1194
    :try_start_0
    iget-object v3, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 1195
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1196
    iget-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v0

    move v4, v0

    .line 1197
    .local v4, "isRev1":Z
    iget-object v0, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;

    move-result-object v0

    move-object v5, v0

    .line 1198
    .local v5, "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 1200
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 1201
    .local v3, "command":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1202
    .local v0, "first":Z
    const/4 v6, 0x0

    .line 1204
    .local v6, "allHeaders":Z
    sget-object v7, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1205
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getEnvelopeCommand()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    const/4 v0, 0x0

    .line 1208
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    sget-object v7, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1209
    if-eqz v0, :cond_1

    const-string v7, "FLAGS"

    goto :goto_0

    :cond_1
    const-string v7, " FLAGS"

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    const/4 v0, 0x0

    .line 1212
    :cond_2
    sget-object v7, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1213
    if-eqz v0, :cond_3

    const-string v7, "BODYSTRUCTURE"

    goto :goto_1

    :cond_3
    const-string v7, " BODYSTRUCTURE"

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    const/4 v0, 0x0

    .line 1216
    :cond_4
    sget-object v7, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1217
    if-eqz v0, :cond_5

    const-string v7, "UID"

    goto :goto_2

    :cond_5
    const-string v7, " UID"

    :goto_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    const/4 v0, 0x0

    .line 1220
    :cond_6
    sget-object v7, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1221
    const/4 v6, 0x1

    .line 1222
    if-eqz v4, :cond_8

    .line 1223
    if-eqz v0, :cond_7

    .line 1224
    const-string v7, "BODY.PEEK[HEADER]"

    goto :goto_3

    :cond_7
    const-string v7, " BODY.PEEK[HEADER]"

    .line 1223
    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1226
    :cond_8
    if-eqz v0, :cond_9

    const-string v7, "RFC822.HEADER"

    goto :goto_4

    :cond_9
    const-string v7, " RFC822.HEADER"

    :goto_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    :goto_5
    const/4 v0, 0x0

    .line 1229
    :cond_a
    sget-object v7, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1230
    const/4 v6, 0x1

    .line 1231
    if-eqz v4, :cond_c

    .line 1232
    if-eqz v0, :cond_b

    const-string v7, "BODY.PEEK[]"

    goto :goto_6

    :cond_b
    const-string v7, " BODY.PEEK[]"

    :goto_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1234
    :cond_c
    if-eqz v0, :cond_d

    const-string v7, "RFC822"

    goto :goto_7

    :cond_d
    const-string v7, " RFC822"

    :goto_7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :goto_8
    const/4 v0, 0x0

    .line 1237
    :cond_e
    sget-object v7, Ljavax/mail/FetchProfile$Item;->SIZE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-nez v7, :cond_f

    sget-object v7, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    .line 1238
    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1239
    :cond_f
    if-eqz v0, :cond_10

    const-string v7, "RFC822.SIZE"

    goto :goto_9

    :cond_10
    const-string v7, " RFC822.SIZE"

    :goto_9
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    const/4 v0, 0x0

    .line 1242
    :cond_11
    sget-object v7, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->INTERNALDATE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1243
    if-eqz v0, :cond_12

    const-string v7, "INTERNALDATE"

    goto :goto_a

    :cond_12
    const-string v7, " INTERNALDATE"

    :goto_a
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const/4 v0, 0x0

    move v7, v0

    goto :goto_b

    .line 1242
    :cond_13
    move v7, v0

    .line 1248
    .end local v0    # "first":Z
    .local v7, "first":Z
    :goto_b
    const/4 v0, 0x0

    .line 1249
    .local v0, "hdrs":[Ljava/lang/String;
    if-nez v6, :cond_16

    .line 1250
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 1251
    array-length v8, v0

    if-lez v8, :cond_15

    .line 1252
    if-nez v7, :cond_14

    .line 1253
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_14
    invoke-direct {v1, v0, v4}, Lcom/sun/mail/imap/IMAPFolder;->createHeaderCommand([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_15
    move-object v8, v0

    goto :goto_c

    .line 1249
    :cond_16
    move-object v8, v0

    .line 1261
    .end local v0    # "hdrs":[Ljava/lang/String;
    .local v8, "hdrs":[Ljava/lang/String;
    :goto_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v9, v5

    if-ge v0, v9, :cond_19

    .line 1262
    aget-object v9, v5, v0

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/FetchItem;->getFetchProfileItem()Ljavax/mail/FetchProfile$Item;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_17

    .line 1264
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    :cond_17
    aget-object v9, v5, v0

    invoke-virtual {v9}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1269
    .end local v0    # "i":I
    :cond_19
    new-instance v0, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;

    invoke-direct {v0, v2, v5}, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    move-object v9, v0

    .line 1273
    .local v9, "condition":Lcom/sun/mail/imap/Utility$Condition;
    iget-object v10, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 1276
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1280
    move-object/from16 v11, p1

    :try_start_4
    invoke-static {v11, v9}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v12, v0

    .line 1282
    .local v12, "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-nez v12, :cond_1a

    .line 1284
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 1345
    .end local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    goto/16 :goto_16

    .line 1286
    .restart local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_1a
    const/4 v13, 0x0

    .line 1288
    .local v13, "r":[Lcom/sun/mail/iap/Response;
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object v14, v0

    .line 1290
    .local v14, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v12, v15}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0
    :try_end_8
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v13, v0

    .line 1297
    move-object/from16 v16, v3

    goto :goto_f

    .line 1293
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_e

    .line 1291
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    goto/16 :goto_14

    .line 1295
    :catch_2
    move-exception v0

    .line 1296
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    new-instance v15, Ljavax/mail/MessagingException;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v16, v3

    .end local v3    # "command":Ljava/lang/StringBuilder;
    .local v16, "command":Ljava/lang/StringBuilder;
    :try_start_a
    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "isRev1":Z
    .end local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v6    # "allHeaders":Z
    .end local v7    # "first":Z
    .end local v8    # "hdrs":[Ljava/lang/String;
    .end local v9    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local v16    # "command":Ljava/lang/StringBuilder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "fp":Ljavax/mail/FetchProfile;
    throw v15

    .line 1345
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .end local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v13    # "r":[Lcom/sun/mail/iap/Response;
    .end local v14    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .restart local v4    # "isRev1":Z
    .restart local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v6    # "allHeaders":Z
    .restart local v7    # "first":Z
    .restart local v8    # "hdrs":[Ljava/lang/String;
    .restart local v9    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .restart local v16    # "command":Ljava/lang/StringBuilder;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "fp":Ljavax/mail/FetchProfile;
    :catchall_1
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    goto/16 :goto_16

    .end local v16    # "command":Ljava/lang/StringBuilder;
    .restart local v3    # "command":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    .end local v3    # "command":Ljava/lang/StringBuilder;
    .restart local v16    # "command":Ljava/lang/StringBuilder;
    goto/16 :goto_16

    .line 1293
    .end local v16    # "command":Ljava/lang/StringBuilder;
    .restart local v3    # "command":Ljava/lang/StringBuilder;
    .restart local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v13    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v14    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    .line 1297
    .end local v3    # "command":Ljava/lang/StringBuilder;
    .restart local v16    # "command":Ljava/lang/StringBuilder;
    :goto_e
    nop

    .line 1299
    :goto_f
    if-nez v13, :cond_1b

    .line 1300
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    monitor-exit p0

    return-void

    .line 1302
    :cond_1b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    :try_start_b
    array-length v3, v13

    if-ge v0, v3, :cond_24

    .line 1303
    aget-object v3, v13, v0

    if-nez v3, :cond_1c

    .line 1304
    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    goto/16 :goto_13

    .line 1305
    :cond_1c
    aget-object v3, v13, v0

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/FetchResponse;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-nez v3, :cond_1d

    .line 1306
    :try_start_c
    aget-object v3, v13, v0

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1307
    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    goto/16 :goto_13

    .line 1311
    :cond_1d
    :try_start_d
    aget-object v3, v13, v0

    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1313
    .local v3, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v15

    .line 1315
    .local v15, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move/from16 v18, v17

    .line 1316
    .local v18, "count":I
    const/16 v17, 0x0

    .line 1318
    .local v17, "unsolicitedFlags":Z
    const/16 v19, 0x0

    move/from16 v22, v19

    move/from16 v19, v4

    move/from16 v4, v22

    .local v4, "j":I
    .local v19, "isRev1":Z
    :goto_11
    move-object/from16 v20, v5

    move/from16 v5, v18

    .end local v18    # "count":I
    .local v5, "count":I
    .local v20, "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    if-ge v4, v5, :cond_21

    .line 1319
    :try_start_e
    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v18
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v21, v18

    .line 1321
    .local v21, "item":Lcom/sun/mail/imap/protocol/Item;
    move/from16 v18, v5

    move-object/from16 v5, v21

    move/from16 v21, v7

    .end local v7    # "first":Z
    .local v5, "item":Lcom/sun/mail/imap/protocol/Item;
    .restart local v18    # "count":I
    .local v21, "first":Z
    :try_start_f
    instance-of v7, v5, Ljavax/mail/Flags;

    if-eqz v7, :cond_1f

    sget-object v7, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    .line 1322
    invoke-virtual {v2, v7}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v7

    if-eqz v7, :cond_1e

    if-nez v15, :cond_1f

    .line 1325
    :cond_1e
    const/4 v7, 0x1

    move/from16 v17, v7

    .end local v17    # "unsolicitedFlags":Z
    .local v7, "unsolicitedFlags":Z
    goto :goto_12

    .line 1326
    .end local v7    # "unsolicitedFlags":Z
    .restart local v17    # "unsolicitedFlags":Z
    :cond_1f
    if-eqz v15, :cond_20

    .line 1327
    invoke-virtual {v15, v5, v8, v6}, Lcom/sun/mail/imap/IMAPMessage;->handleFetchItem(Lcom/sun/mail/imap/protocol/Item;[Ljava/lang/String;Z)Z

    .line 1318
    .end local v5    # "item":Lcom/sun/mail/imap/protocol/Item;
    :cond_20
    :goto_12
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v20

    move/from16 v7, v21

    goto :goto_11

    .line 1345
    .end local v0    # "i":I
    .end local v3    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v4    # "j":I
    .end local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v13    # "r":[Lcom/sun/mail/iap/Response;
    .end local v14    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .end local v15    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v17    # "unsolicitedFlags":Z
    .end local v18    # "count":I
    .end local v21    # "first":Z
    .local v7, "first":Z
    :catchall_3
    move-exception v0

    move/from16 v21, v7

    .end local v7    # "first":Z
    .restart local v21    # "first":Z
    goto :goto_16

    .line 1318
    .end local v21    # "first":Z
    .restart local v0    # "i":I
    .restart local v3    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .restart local v4    # "j":I
    .local v5, "count":I
    .restart local v7    # "first":Z
    .restart local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v13    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v14    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .restart local v15    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v17    # "unsolicitedFlags":Z
    :cond_21
    move/from16 v18, v5

    move/from16 v21, v7

    .line 1329
    .end local v4    # "j":I
    .end local v5    # "count":I
    .end local v7    # "first":Z
    .restart local v18    # "count":I
    .restart local v21    # "first":Z
    if-eqz v15, :cond_22

    .line 1330
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    .line 1334
    :cond_22
    if-eqz v17, :cond_23

    .line 1335
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    .end local v3    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v15    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    .end local v17    # "unsolicitedFlags":Z
    .end local v18    # "count":I
    :cond_23
    :goto_13
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v7, v21

    goto/16 :goto_10

    .end local v19    # "isRev1":Z
    .end local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v21    # "first":Z
    .local v4, "isRev1":Z
    .local v5, "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v7    # "first":Z
    :cond_24
    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    .line 1339
    .end local v0    # "i":I
    .end local v4    # "isRev1":Z
    .end local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v7    # "first":Z
    .restart local v19    # "isRev1":Z
    .restart local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v21    # "first":Z
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1340
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    .line 1341
    .local v0, "responses":[Lcom/sun/mail/iap/Response;
    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1342
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    .line 1345
    .end local v0    # "responses":[Lcom/sun/mail/iap/Response;
    .end local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v13    # "r":[Lcom/sun/mail/iap/Response;
    .end local v14    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    :cond_25
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1346
    monitor-exit p0

    return-void

    .line 1345
    .end local v19    # "isRev1":Z
    .end local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v21    # "first":Z
    .restart local v4    # "isRev1":Z
    .restart local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v7    # "first":Z
    :catchall_4
    move-exception v0

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    .end local v4    # "isRev1":Z
    .end local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v7    # "first":Z
    .restart local v19    # "isRev1":Z
    .restart local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v21    # "first":Z
    goto :goto_16

    .line 1291
    .end local v16    # "command":Ljava/lang/StringBuilder;
    .end local v19    # "isRev1":Z
    .end local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v21    # "first":Z
    .local v3, "command":Ljava/lang/StringBuilder;
    .restart local v4    # "isRev1":Z
    .restart local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v7    # "first":Z
    .restart local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v13    # "r":[Lcom/sun/mail/iap/Response;
    .restart local v14    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    :catch_4
    move-exception v0

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    .line 1292
    .end local v3    # "command":Ljava/lang/StringBuilder;
    .end local v4    # "isRev1":Z
    .end local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v7    # "first":Z
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v16    # "command":Ljava/lang/StringBuilder;
    .restart local v19    # "isRev1":Z
    .restart local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v21    # "first":Z
    :goto_14
    :try_start_10
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v6    # "allHeaders":Z
    .end local v8    # "hdrs":[Ljava/lang/String;
    .end local v9    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local v16    # "command":Ljava/lang/StringBuilder;
    .end local v19    # "isRev1":Z
    .end local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v21    # "first":Z
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "fp":Ljavax/mail/FetchProfile;
    throw v3

    .line 1345
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local v12    # "msgsets":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v13    # "r":[Lcom/sun/mail/iap/Response;
    .end local v14    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/iap/Response;>;"
    .restart local v3    # "command":Ljava/lang/StringBuilder;
    .restart local v4    # "isRev1":Z
    .restart local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v6    # "allHeaders":Z
    .restart local v7    # "first":Z
    .restart local v8    # "hdrs":[Ljava/lang/String;
    .restart local v9    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "fp":Ljavax/mail/FetchProfile;
    :catchall_5
    move-exception v0

    goto :goto_15

    :catchall_6
    move-exception v0

    move-object/from16 v11, p1

    :goto_15
    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    .end local v3    # "command":Ljava/lang/StringBuilder;
    .end local v4    # "isRev1":Z
    .end local v5    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v7    # "first":Z
    .restart local v16    # "command":Ljava/lang/StringBuilder;
    .restart local v19    # "isRev1":Z
    .restart local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .restart local v21    # "first":Z
    :goto_16
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :catchall_7
    move-exception v0

    goto :goto_16

    .line 1198
    .end local v6    # "allHeaders":Z
    .end local v8    # "hdrs":[Ljava/lang/String;
    .end local v9    # "condition":Lcom/sun/mail/imap/Utility$Condition;
    .end local v16    # "command":Ljava/lang/StringBuilder;
    .end local v19    # "isRev1":Z
    .end local v20    # "fitems":[Lcom/sun/mail/imap/protocol/FetchItem;
    .end local v21    # "first":Z
    :catchall_8
    move-exception v0

    move-object/from16 v11, p1

    :goto_17
    :try_start_12
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_9
    move-exception v0

    goto :goto_17

    .line 1193
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "fp":Ljavax/mail/FetchProfile;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1469
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1470
    monitor-exit p0

    return-void

    .line 1468
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2920
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0
.end method

.method public declared-synchronized getAttributes()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 3057
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 3058
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3059
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 3060
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 3056
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 3385
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1759
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1760
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1762
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 1767
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1768
    .local v0, "f":Ljavax/mail/Flags;
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1770
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1771
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1772
    .local v2, "matches":[I
    array-length v3, v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    .line 1773
    .end local v2    # "matches":[I
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "f":Ljavax/mail/Flags;
    :try_start_5
    throw v2
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1776
    .restart local v0    # "f":Ljavax/mail/Flags;
    :catch_0
    move-exception v1

    .line 1778
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1774
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 1775
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1758
    .end local v0    # "f":Ljavax/mail/Flags;
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getEnvelopeCommand()Ljava/lang/String;
    .locals 1

    .line 1358
    const-string v0, "ENVELOPE INTERNALDATE RFC822.SIZE"

    return-object v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 899
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot contain subfolders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 901
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 902
    .local v0, "c":C
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 897
    .end local v0    # "c":C
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHighestModSeq()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2797
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2798
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 2800
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/4 v0, 0x0

    .line 2801
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 2804
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 2805
    const-string v2, "CONDSTORE"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2807
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "HIGHESTMODSEQ"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2808
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2818
    .end local v2    # "item":[Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2806
    :cond_1
    :try_start_3
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "CONDSTORE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v2
    :try_end_3
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2818
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2815
    :catch_0
    move-exception v2

    .line 2816
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3

    .line 2812
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v2

    .line 2814
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2818
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2819
    :goto_0
    nop

    .line 2821
    if-eqz v1, :cond_2

    .line 2823
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 2822
    :cond_2
    :try_start_6
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2809
    :catch_2
    move-exception v2

    .line 2811
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_7
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2818
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_1
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2819
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2796
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 1
    .param p1, "msgnum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1817
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1818
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1820
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1816
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgnum":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 3
    .param p1, "seqnum"    # I

    .line 3989
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3994
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3995
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring message number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " outside range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 3996
    invoke-virtual {v2}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3995
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3997
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 3999
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .locals 4
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2580
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2582
    const/4 v0, 0x0

    .line 2585
    .local v0, "m":Lcom/sun/mail/imap/IMAPMessage;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2586
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2588
    .local v2, "l":Ljava/lang/Long;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    .line 2590
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    move-object v0, v3

    .line 2591
    if-eqz v0, :cond_1

    .line 2592
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2594
    :cond_0
    :try_start_3
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2598
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)V

    .line 2600
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v3, :cond_2

    .line 2602
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    move-object v0, v3

    .line 2603
    if-eqz v0, :cond_2

    .line 2604
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2606
    .end local v2    # "l":Ljava/lang/Long;
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2611
    nop

    .line 2613
    monitor-exit p0

    return-object v0

    .line 2606
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local p1    # "uid":J
    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local p1    # "uid":J
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2609
    :catch_0
    move-exception v1

    .line 2610
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_7
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 2607
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 2608
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2579
    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "uid":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1618
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1619
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    .line 1623
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1624
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 1631
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1627
    :catch_0
    move-exception v1

    .line 1628
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1625
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 1626
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1631
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :cond_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1635
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1637
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1638
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_7
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    return v1

    .line 1657
    .end local v0    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_2
    move-exception v0

    .line 1658
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1655
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v0

    .line 1656
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1639
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_4
    move-exception v0

    .line 1642
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, 0x0

    .line 1645
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1646
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1647
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1648
    iget v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
    :try_end_9
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1653
    :try_start_a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1648
    monitor-exit p0

    return v3

    .line 1653
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 1649
    :catch_5
    move-exception v2

    .line 1651
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_b
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1653
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1654
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1631
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_2
    move-exception v1

    :goto_1
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1617
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1832
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1833
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageCount()I

    move-result v0

    .line 1834
    .local v0, "total":I
    new-array v1, v0, [Ljavax/mail/Message;

    .line 1835
    .local v1, "msgs":[Ljavax/mail/Message;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 1836
    add-int/lit8 v3, v2, -0x1

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v4, v2}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1835
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1837
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 1831
    .end local v0    # "total":I
    .end local v1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;
    .locals 7
    .param p1, "seqnums"    # [I

    .line 4013
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    .line 4014
    .local v0, "msgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v1, 0x0

    .line 4016
    .local v1, "nulls":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 4017
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4018
    aget-object v3, v0, v2

    if-nez v3, :cond_0

    .line 4019
    add-int/lit8 v1, v1, 0x1

    .line 4016
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4021
    .end local v2    # "i":I
    :cond_1
    if-lez v1, :cond_4

    .line 4022
    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [Lcom/sun/mail/imap/IMAPMessage;

    .line 4023
    .local v2, "nmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 4024
    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    .line 4025
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "j":I
    .local v5, "j":I
    aget-object v6, v0, v3

    aput-object v6, v2, v4

    move v4, v5

    .line 4023
    .end local v5    # "j":I
    .restart local v4    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4027
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_3
    move-object v0, v2

    .line 4029
    .end local v2    # "nmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    :cond_4
    return-object v0
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .locals 7
    .param p1, "start"    # J
    .param p3, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2624
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2629
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2630
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 2631
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2634
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[J

    move-result-object v1

    .line 2636
    .local v1, "ua":[J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2638
    .local v2, "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 2639
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Message;

    .line 2640
    .local v4, "m":Ljavax/mail/Message;
    if-eqz v4, :cond_1

    .line 2641
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2638
    .end local v4    # "m":Ljavax/mail/Message;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2643
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Message;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljavax/mail/Message;

    move-object v1, v3

    .line 2644
    .end local v2    # "ma":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Message;>;"
    .local v1, "msgs":[Ljavax/mail/Message;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2649
    nop

    .line 2651
    monitor-exit p0

    return-object v1

    .line 2644
    .end local v1    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "start":J
    .end local p3    # "end":J
    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "start":J
    .restart local p3    # "end":J
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 2647
    :catch_0
    move-exception v0

    .line 2648
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2645
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2646
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2623
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "start":J
    .end local p3    # "end":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .locals 9
    .param p1, "uids"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2664
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2667
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2668
    move-object v1, p1

    .line 2669
    .local v1, "unavailUids":[J
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_3

    .line 2671
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    .local v2, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, p1, v4

    .line 2673
    .local v5, "uid":J
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2675
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2672
    .end local v5    # "uid":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2679
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2680
    .local v3, "vsize":I
    new-array v4, v3, [J

    move-object v1, v4

    .line 2681
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 2682
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v4

    .line 2681
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2684
    .end local v2    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "vsize":I
    .end local v4    # "i":I
    :cond_2
    goto :goto_2

    .line 2685
    :cond_3
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2687
    :goto_2
    array-length v2, v1

    if-lez v2, :cond_4

    .line 2689
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)V

    .line 2693
    :cond_4
    array-length v2, p1

    new-array v2, v2, [Ljavax/mail/Message;

    .line 2694
    .local v2, "msgs":[Ljavax/mail/Message;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 2695
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Message;

    aput-object v4, v2, v3

    .line 2694
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2696
    .end local v3    # "i":I
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 2697
    .end local v1    # "unavailUids":[J
    .end local v2    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v1

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "uids":[J
    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "uids":[J
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2698
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2699
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2663
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "uids":[J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUIDChangedSince(JJJ)[Ljavax/mail/Message;
    .locals 9
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "modseq"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2843
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2846
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2847
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 2848
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const-string v2, "CONDSTORE"

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2852
    move-object v2, v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidfetchChangedSince(JJJ)[I

    move-result-object v2

    .line 2853
    .local v2, "nums":[I
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    .line 2849
    .end local v2    # "nums":[I
    :cond_0
    :try_start_3
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "CONDSTORE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    .end local p1    # "start":J
    .end local p3    # "end":J
    .end local p5    # "modseq":J
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2854
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local p1    # "start":J
    .restart local p3    # "end":J
    .restart local p5    # "modseq":J
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p1    # "start":J
    .end local p3    # "end":J
    .end local p5    # "modseq":J
    :try_start_5
    throw v1
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "start":J
    .restart local p3    # "end":J
    .restart local p5    # "modseq":J
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 2857
    :catch_0
    move-exception v0

    .line 2858
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2855
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2856
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2842
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .end local p1    # "start":J
    .end local p3    # "end":J
    .end local p5    # "modseq":J
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 523
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 524
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v0

    .line 528
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1667
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1668
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_0

    .line 1672
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1673
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    .line 1680
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1676
    :catch_0
    move-exception v1

    .line 1677
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1674
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 1675
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1680
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :cond_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1684
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1686
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1687
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_7
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    return v1

    .line 1706
    .end local v0    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_2
    move-exception v0

    .line 1707
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1704
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v0

    .line 1705
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1688
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_4
    move-exception v0

    .line 1691
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    const/4 v1, 0x0

    .line 1694
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_9
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v1, v2

    .line 1695
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v2

    .line 1696
    .local v2, "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1697
    iget v3, v2, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
    :try_end_9
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1702
    :try_start_a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1697
    monitor-exit p0

    return v3

    .line 1702
    .end local v2    # "minfo":Lcom/sun/mail/imap/protocol/MailboxInfo;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 1698
    :catch_5
    move-exception v2

    .line 1700
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_b
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1702
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :goto_0
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1703
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1680
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_2
    move-exception v1

    :goto_1
    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1666
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 544
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 546
    .local v0, "c":C
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 547
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 548
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-virtual {v1, v3, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 550
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v1, v3}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 543
    .end local v0    # "c":C
    .end local v2    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .locals 1

    monitor-enter p0

    .line 1608
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1609
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 1610
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1607
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3721
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3722
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3726
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3728
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0

    .line 3727
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3721
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2880
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    const-string v1, "QUOTA not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 687
    :try_start_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v1

    .line 704
    if-eqz v0, :cond_0

    .line 705
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-char v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    goto :goto_0

    .line 707
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/16 v1, 0x2f

    iput-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 709
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;)[Ljavax/mail/Message;
    .locals 1
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2431
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2431
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 4
    .param p1, "term"    # [Lcom/sun/mail/imap/SortTerm;
    .param p2, "sterm"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2451
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2454
    const/4 v0, 0x0

    .line 2456
    .local v0, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2457
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 2458
    .local v2, "matches":[I
    if-eqz v2, :cond_0

    .line 2459
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    move-object v0, v3

    .line 2460
    .end local v2    # "matches":[I
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2461
    monitor-exit p0

    return-object v0

    .line 2460
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    .end local p2    # "sterm":Ljavax/mail/search/SearchTerm;
    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    .restart local p2    # "sterm":Ljavax/mail/search/SearchTerm;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2471
    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    :catch_0
    move-exception v0

    .line 2473
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2469
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2470
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 2466
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 2468
    .local v0, "sex":Ljavax/mail/search/SearchException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljavax/mail/search/SearchException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2463
    .end local v0    # "sex":Ljavax/mail/search/SearchException;
    :catch_3
    move-exception v0

    .line 2465
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2450
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "term":[Lcom/sun/mail/imap/SortTerm;
    .end local p2    # "sterm":Ljavax/mail/search/SearchTerm;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getStatusItem(Ljava/lang/String;)J
    .locals 6
    .param p1, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 3429
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 3430
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3432
    const/4 v0, 0x0

    .line 3433
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v3, 0x0

    .line 3435
    .local v3, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    move-object v0, v4

    .line 3436
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 3437
    .local v4, "items":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v5

    .line 3438
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3, p1}, Lcom/sun/mail/imap/protocol/Status;->getItem(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_2
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3449
    .end local v4    # "items":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 3446
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3444
    :catch_1
    move-exception v1

    goto :goto_2

    .line 3439
    :catch_2
    move-exception v4

    goto :goto_4

    .line 3449
    .restart local v4    # "items":[Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3438
    monitor-exit p0

    return-wide v1

    .line 3449
    .end local v4    # "items":[Ljava/lang/String;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 3446
    :catch_3
    move-exception v1

    .line 3447
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :goto_1
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p1    # "item":Ljava/lang/String;
    throw v2

    .line 3444
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .restart local p1    # "item":Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 3445
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_2
    new-instance v2, Ljavax/mail/StoreClosedException;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p1    # "item":Ljava/lang/String;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3449
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .restart local p1    # "item":Ljava/lang/String;
    :goto_3
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3450
    throw v1

    .line 3439
    :catch_5
    move-exception v4

    .line 3443
    .local v4, "bex":Lcom/sun/mail/iap/BadCommandException;
    :goto_4
    nop

    .line 3449
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3443
    monitor-exit p0

    return-wide v1

    .line 3452
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local v4    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :cond_1
    monitor-exit p0

    return-wide v1

    .line 3428
    .end local p1    # "item":Ljava/lang/String;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3684
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "getStoreProtocol() borrowing a connection"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3685
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3683
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 717
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    goto :goto_0

    .line 722
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 724
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 716
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .locals 8
    .param p1, "message"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2711
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 2715
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2717
    instance-of v0, p1, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v0, :cond_3

    .line 2719
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPMessage;

    .line 2722
    .local v0, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v3, v1

    .local v3, "uid":J
    const-wide/16 v5, -0x1

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    .line 2723
    monitor-exit p0

    return-wide v3

    .line 2725
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2727
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2728
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 2729
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v5

    .line 2731
    .local v5, "u":Lcom/sun/mail/imap/protocol/UID;
    if-eqz v5, :cond_2

    .line 2732
    iget-wide v6, v5, Lcom/sun/mail/imap/protocol/UID;->uid:J

    move-wide v3, v6

    .line 2733
    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2736
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v6, :cond_1

    .line 2737
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2738
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2744
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "u":Lcom/sun/mail/imap/protocol/UID;
    :cond_2
    nop

    .line 2745
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2747
    monitor-exit p0

    return-wide v3

    .line 2745
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2742
    :catch_0
    move-exception v2

    .line 2743
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "uid":J
    .end local p1    # "message":Ljavax/mail/Message;
    throw v5

    .line 2740
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v3    # "uid":J
    .restart local p1    # "message":Ljavax/mail/Message;
    :catch_1
    move-exception v2

    .line 2741
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v5, Ljavax/mail/FolderClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "uid":J
    .end local p1    # "message":Ljavax/mail/Message;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2745
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .restart local v3    # "uid":J
    .restart local p1    # "message":Ljavax/mail/Message;
    :goto_0
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2718
    .end local v0    # "m":Lcom/sun/mail/imap/IMAPMessage;
    .end local v3    # "uid":J
    :cond_3
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "message is not an IMAPMessage"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2712
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Message does not belong to this folder"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2710
    .end local p1    # "message":Ljavax/mail/Message;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUIDNext()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2546
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2547
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 2549
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/4 v0, 0x0

    .line 2550
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 2553
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 2554
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UIDNEXT"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2555
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2565
    .end local v2    # "item":[Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2562
    :catch_0
    move-exception v2

    .line 2563
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3

    .line 2559
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v2

    .line 2561
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2565
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2566
    :goto_0
    nop

    .line 2568
    if-eqz v1, :cond_1

    .line 2570
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 2569
    :cond_1
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDNext"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2556
    :catch_2
    move-exception v2

    .line 2558
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_6
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain UIDNext"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2565
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_1
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2566
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2545
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDNotSticky()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2764
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2765
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidNotSticky:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2763
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDValidity()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2499
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2500
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-wide v0

    .line 2502
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    const/4 v0, 0x0

    .line 2503
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v1, 0x0

    .line 2506
    .local v1, "status":Lcom/sun/mail/imap/protocol/Status;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    move-object v0, v2

    .line 2507
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UIDVALIDITY"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2508
    .local v2, "item":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 2518
    .end local v2    # "item":[Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2515
    :catch_0
    move-exception v2

    .line 2516
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_3
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3

    .line 2512
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_1
    move-exception v2

    .line 2514
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2518
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2519
    :goto_0
    nop

    .line 2521
    if-eqz v1, :cond_1

    .line 2523
    iget-wide v2, v1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-wide v2

    .line 2522
    :cond_1
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDValidity"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2509
    :catch_2
    move-exception v2

    .line 2511
    .local v2, "bex":Lcom/sun/mail/iap/BadCommandException;
    :try_start_6
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Cannot obtain UIDValidity"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2518
    .end local v2    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .restart local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :goto_1
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2519
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2498
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v1    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1717
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1722
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1723
    .local v0, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v1, v0, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    .line 1731
    .end local v0    # "status":Lcom/sun/mail/imap/protocol/Status;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1729
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 1730
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1724
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 1728
    .local v0, "bex":Lcom/sun/mail/iap/BadCommandException;
    monitor-exit p0

    const/4 v1, -0x1

    return v1

    .line 1738
    .end local v0    # "bex":Lcom/sun/mail/iap/BadCommandException;
    :cond_0
    :try_start_3
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1739
    .local v0, "f":Ljavax/mail/Flags;
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1741
    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1742
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 1743
    .local v2, "matches":[I
    array-length v3, v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    .line 1744
    .end local v2    # "matches":[I
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "f":Ljavax/mail/Flags;
    :try_start_7
    throw v2
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1747
    .restart local v0    # "f":Ljavax/mail/Flags;
    :catch_3
    move-exception v1

    .line 1749
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_8
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1745
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_4
    move-exception v1

    .line 1746
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1716
    .end local v0    # "f":Ljavax/mail/Flags;
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleIdle(Z)Z
    .locals 9
    .param p1, "once"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3225
    const/4 v0, 0x0

    .line 3227
    .local v0, "r":Lcom/sun/mail/iap/Response;
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 3229
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3230
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-ne v2, v4, :cond_3

    .line 3238
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 3239
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v5, v2, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Ljava/io/InterruptedIOException;

    iget v5, v5, Ljava/io/InterruptedIOException;->bytesTransferred:I

    if-nez v5, :cond_3

    .line 3242
    instance-of v5, v2, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_1

    .line 3243
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "handleIdle: ignoring socket timeout"

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3245
    const/4 v0, 0x0

    goto :goto_0

    .line 3247
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "handleIdle: interrupting IDLE"

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3248
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3249
    .local v5, "im":Lcom/sun/mail/imap/IdleManager;
    if-eqz v5, :cond_2

    .line 3250
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "handleIdle: request IdleManager to abort"

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3252
    invoke-virtual {v5, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    goto :goto_0

    .line 3254
    :cond_2
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "handleIdle: abort IDLE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3255
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3256
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3260
    .end local v5    # "im":Lcom/sun/mail/imap/IdleManager;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 3263
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x1

    .line 3265
    .local v2, "done":Z
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 3266
    invoke-virtual {v7, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_4

    goto :goto_3

    .line 3268
    :cond_4
    const/4 v2, 0x0

    .line 3270
    if-eqz v2, :cond_5

    .line 3271
    :try_start_3
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v8, "handleIdle: set to RUNNING"

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3272
    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3273
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3274
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 3277
    :cond_5
    if-eqz p1, :cond_6

    .line 3278
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v5, v4, :cond_6

    .line 3280
    :try_start_4
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3285
    goto :goto_1

    .line 3281
    :catch_0
    move-exception v5

    .line 3286
    :goto_1
    :try_start_5
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3289
    .end local v2    # "done":Z
    :cond_6
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3295
    nop

    .line 3297
    :goto_2
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasResponse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3298
    return v4

    .line 3267
    .restart local v2    # "done":Z
    :cond_7
    :goto_3
    nop

    .line 3270
    if-eqz v2, :cond_8

    .line 3271
    :try_start_6
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: set to RUNNING"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3272
    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3273
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3274
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_8
    monitor-exit v1

    .line 3267
    return v6

    .line 3270
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_9

    .line 3271
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "handleIdle: set to RUNNING"

    invoke-virtual {v4, v7}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3272
    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3273
    iput-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3274
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 3276
    :cond_9
    nop

    .end local v0    # "r":Lcom/sun/mail/iap/Response;
    .end local p1    # "once":Z
    throw v3

    .line 3289
    .end local v2    # "done":Z
    .restart local v0    # "r":Lcom/sun/mail/iap/Response;
    .restart local p1    # "once":Z
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "r":Lcom/sun/mail/iap/Response;
    .end local p1    # "once":Z
    :try_start_7
    throw v2
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1

    .line 3293
    .restart local v0    # "r":Lcom/sun/mail/iap/Response;
    .restart local p1    # "once":Z
    :catch_1
    move-exception v1

    .line 3294
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 3290
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_2
    move-exception v1

    .line 3292
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 12
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 3469
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3474
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

    .line 3475
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 3481
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3482
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_2

    .line 3483
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 3484
    :cond_2
    return-void

    .line 3485
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3487
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 3488
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 3489
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 3490
    .local v0, "s":Ljava/lang/String;
    const-string v1, "HIGHESTMODSEQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3491
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 3493
    .end local v0    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->reset()V

    .line 3494
    return-void

    .line 3495
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3496
    return-void

    .line 3500
    :cond_6
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v0, :cond_7

    .line 3503
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNEXPECTED RESPONSE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3504
    return-void

    .line 3507
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 3509
    .local v0, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v2, "EXISTS"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    .line 3510
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v1

    .line 3511
    .local v1, "exists":I
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-gt v1, v2, :cond_8

    .line 3513
    return-void

    .line 3515
    :cond_8
    sub-int v4, v1, v2

    .line 3516
    .local v4, "count":I
    new-array v5, v4, [Ljavax/mail/Message;

    .line 3519
    .local v5, "msgs":[Ljavax/mail/Message;
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    add-int/2addr v2, v3

    invoke-virtual {v6, v4, v2}, Lcom/sun/mail/imap/MessageCache;->addMessages(II)V

    .line 3520
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3521
    .local v2, "oldtotal":I
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3522
    iget v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3525
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v3, :cond_a

    .line 3526
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_9

    .line 3527
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    aput-object v6, v5, v3

    .line 3526
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3530
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    .line 3533
    .end local v1    # "exists":I
    .end local v2    # "oldtotal":I
    .end local v4    # "count":I
    .end local v5    # "msgs":[Ljavax/mail/Message;
    :cond_a
    goto/16 :goto_3

    :cond_b
    const-string v2, "EXPUNGE"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3536
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v2

    .line 3537
    .local v2, "seqnum":I
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-le v2, v4, :cond_c

    .line 3542
    return-void

    .line 3544
    :cond_c
    const/4 v4, 0x0

    .line 3545
    .local v4, "msgs":[Ljavax/mail/Message;
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v5, :cond_d

    .line 3548
    new-array v5, v3, [Ljavax/mail/Message;

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    aput-object v6, v5, v1

    move-object v4, v5

    .line 3549
    aget-object v5, v4, v1

    if-nez v5, :cond_d

    .line 3550
    const/4 v4, 0x0

    .line 3553
    :cond_d
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v5, v2}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3556
    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3558
    if-eqz v4, :cond_e

    .line 3559
    invoke-virtual {p0, v1, v4}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    .line 3561
    .end local v2    # "seqnum":I
    .end local v4    # "msgs":[Ljavax/mail/Message;
    :cond_e
    goto/16 :goto_3

    :cond_f
    const-string v2, "VANISHED"

    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3567
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v2

    .line 3568
    .local v2, "s":[Ljava/lang/String;
    if-nez v2, :cond_12

    .line 3569
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 3570
    .local v4, "uids":Ljava/lang/String;
    invoke-static {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v5

    .line 3572
    .local v5, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    iget v6, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    int-to-long v6, v6

    invoke-static {v5}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-int v7, v6

    iput v7, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3573
    invoke-static {v5}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v6

    .line 3574
    .local v6, "luid":[J
    invoke-direct {p0, v6}, Lcom/sun/mail/imap/IMAPFolder;->createMessagesForUIDs([J)[Ljavax/mail/Message;

    move-result-object v7

    .line 3575
    .local v7, "msgs":[Ljavax/mail/Message;
    array-length v8, v7

    :goto_1
    if-ge v1, v8, :cond_11

    aget-object v9, v7, v1

    .line 3576
    .local v9, "m":Ljavax/mail/Message;
    invoke-virtual {v9}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v10

    if-lez v10, :cond_10

    .line 3577
    iget-object v10, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v9}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3575
    .end local v9    # "m":Ljavax/mail/Message;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3579
    :cond_11
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v1, :cond_12

    .line 3580
    invoke-virtual {p0, v3, v7}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    .line 3584
    .end local v2    # "s":[Ljava/lang/String;
    .end local v4    # "uids":Ljava/lang/String;
    .end local v5    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v6    # "luid":[J
    .end local v7    # "msgs":[Ljavax/mail/Message;
    :cond_12
    goto :goto_3

    :cond_13
    const-string v1, "FETCH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3585
    instance-of v1, v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v1, :cond_14

    .line 3586
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v1

    .line 3587
    .local v1, "msg":Ljavax/mail/Message;
    if-eqz v1, :cond_16

    .line 3588
    invoke-virtual {p0, v3, v1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    goto :goto_2

    .line 3585
    .end local v1    # "msg":Ljavax/mail/Message;
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "!ir instanceof FetchResponse"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 3591
    :cond_15
    const-string v1, "RECENT"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3593
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v1

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    goto :goto_3

    .line 3591
    :cond_16
    :goto_2
    nop

    .line 3595
    :goto_3
    return-void

    .line 3469
    .end local v0    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;

    .line 3653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3654
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 3655
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    .line 3653
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3657
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public declared-synchronized hasNewMessages()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 833
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 837
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    nop

    .line 843
    :try_start_3
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    .line 845
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 840
    :catch_0
    move-exception v1

    .line 841
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 838
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v1

    .line 839
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 845
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :cond_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 850
    const/4 v0, 0x0

    .line 852
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_6
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v1, :cond_2

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v4, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "lname":Ljava/lang/String;
    goto :goto_0

    .line 855
    .end local v1    # "lname":Ljava/lang/String;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 856
    .restart local v1    # "lname":Ljava/lang/String;
    :goto_0
    new-instance v4, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v4, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/sun/mail/imap/protocol/ListInfo;

    move-object v0, v4

    .line 864
    if-eqz v0, :cond_6

    .line 867
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v4

    .line 868
    .local v4, "i":I
    aget-object v5, v0, v4

    iget v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v5, v3, :cond_3

    .line 869
    monitor-exit p0

    return v3

    .line 870
    :cond_3
    :try_start_7
    aget-object v5, v0, v4

    iget v5, v5, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 871
    monitor-exit p0

    return v2

    .line 875
    :cond_4
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v5

    .line 876
    .local v5, "status":Lcom/sun/mail/imap/protocol/Status;
    iget v6, v5, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_8
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-lez v6, :cond_5

    .line 877
    monitor-exit p0

    return v3

    .line 879
    :cond_5
    monitor-exit p0

    return v2

    .line 885
    .end local v5    # "status":Lcom/sun/mail/imap/protocol/Status;
    :catch_2
    move-exception v2

    .line 886
    .local v2, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_9
    new-instance v3, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 883
    .end local v2    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_3
    move-exception v2

    .line 884
    .local v2, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v3, Ljavax/mail/StoreClosedException;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 880
    .end local v2    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_4
    move-exception v3

    .line 882
    .local v3, "bex":Lcom/sun/mail/iap/BadCommandException;
    monitor-exit p0

    return v2

    .line 865
    .end local v3    # "bex":Lcom/sun/mail/iap/BadCommandException;
    .end local v4    # "i":I
    :cond_6
    :try_start_a
    new-instance v2, Ljavax/mail/FolderNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 845
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :goto_1
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 831
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
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

    .line 3404
    .local p1, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 3405
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$20;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$20;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/util/Map;)V

    const-string v1, "ID not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public idle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3087
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->idle(Z)V

    .line 3088
    return-void
.end method

.method public idle(Z)V
    .locals 3
    .param p1, "once"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3103
    monitor-enter p0

    .line 3112
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3113
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "idle method not supported with SocketChannels"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "once":Z
    throw v0

    .line 3115
    .restart local p1    # "once":Z
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3117
    return-void

    .line 3135
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3136
    nop

    .line 3144
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v0

    .line 3145
    .local v0, "minidle":I
    if-lez v0, :cond_3

    .line 3147
    int-to-long v1, v0

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3151
    goto :goto_1

    .line 3148
    :catch_0
    move-exception v1

    .line 3150
    .local v1, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3153
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    return-void

    .line 3115
    .end local v0    # "minidle":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method idleAbort()V
    .locals 3

    .line 3347
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3348
    :try_start_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_0

    .line 3349
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3350
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3352
    :cond_0
    monitor-exit v0

    .line 3353
    return-void

    .line 3352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method idleAbortWait()V
    .locals 5

    .line 3360
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3361
    :try_start_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_1

    .line 3362
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3363
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3368
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 3369
    nop

    .line 3374
    goto :goto_0

    .line 3371
    :catch_0
    move-exception v1

    .line 3373
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception in idleAbortWait"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3375
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "IDLE aborted"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3377
    :cond_1
    monitor-exit v0

    .line 3378
    return-void

    .line 3377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 1591
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1593
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1595
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1596
    :goto_0
    goto :goto_1

    .line 1598
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1596
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1598
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1600
    :try_start_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return v0

    .line 1598
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1590
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubscribed()Z
    .locals 4

    monitor-enter p0

    .line 732
    const/4 v0, 0x0

    .line 734
    .local v0, "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v1, :cond_0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v1, :cond_0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "lname":Ljava/lang/String;
    goto :goto_0

    .line 737
    .end local v1    # "lname":Ljava/lang/String;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    .restart local v1    # "lname":Ljava/lang/String;
    :goto_0
    :try_start_1
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v2, p0, v1}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/ListInfo;
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 748
    goto :goto_1

    .line 747
    :catch_0
    move-exception v2

    .line 750
    :goto_1
    if-eqz v0, :cond_1

    .line 751
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v2

    .line 752
    .local v2, "i":I
    aget-object v3, v0, v2

    iget-boolean v3, v3, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v3

    .line 754
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 731
    .end local v0    # "li":[Lcom/sun/mail/imap/protocol/ListInfo;
    .end local v1    # "lname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected keepConnectionAlive(Z)V
    .locals 8
    .param p1, "keepStoreAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3957
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3958
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_0

    .line 3959
    return-void

    .line 3960
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3961
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3962
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    .line 3963
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 3966
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3967
    const/4 v0, 0x0

    .line 3969
    .local v0, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    move-object v0, v1

    .line 3970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_2

    .line 3971
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3973
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3974
    goto :goto_0

    .line 3973
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v2, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3974
    throw v1

    .line 3976
    .end local v0    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_3
    :goto_0
    return-void

    .line 3957
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3007
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 631
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized moveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2037
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2038
    monitor-exit p0

    return-void

    .line 2036
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .locals 1
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2064
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2064
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "folder":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3025
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method protected newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 1
    .param p1, "msgnum"    # I

    .line 1371
    new-instance v0, Lcom/sun/mail/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public declared-synchronized open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    .locals 13
    .param p1, "mode"    # I
    .param p2, "rd"    # Lcom/sun/mail/imap/ResyncData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/mail/imap/ResyncData;",
            ")",
            "Ljava/util/List<",
            "Ljavax/mail/event/MailEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 992
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 994
    const/4 v0, 0x0

    .line 996
    .local v0, "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 998
    const/4 v1, 0x0

    .line 999
    .local v1, "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1007
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1016
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p2, :cond_2

    .line 1017
    :try_start_2
    sget-object v6, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v6, :cond_1

    .line 1018
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "CONDSTORE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    .line 1019
    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1020
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "CONDSTORE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1021
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "CONDSTORE"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1027
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v7, "QRESYNC"

    invoke-virtual {v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 1123
    :catchall_0
    move-exception v3

    goto/16 :goto_8

    .line 1060
    :catch_0
    move-exception v3

    goto/16 :goto_6

    .line 1035
    :catch_1
    move-exception v6

    goto/16 :goto_7

    .line 1031
    :cond_2
    :goto_0
    if-ne p1, v5, :cond_3

    .line 1032
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v6
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    goto :goto_1

    .line 1034
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v6
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v0, v6

    .line 1067
    :goto_1
    nop

    .line 1069
    :try_start_4
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eq v6, p1, :cond_5

    .line 1070
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    :try_start_5
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne v6, v5, :cond_4

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v6, Lcom/sun/mail/imap/IMAPStore;

    .line 1071
    invoke-virtual {v6}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 1074
    :cond_4
    new-instance v3, Ljavax/mail/ReadOnlyFolderException;

    const-string v4, "Cannot open in desired mode"

    invoke-direct {v3, p0, v4}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .line 1076
    .local v3, "ife":Ljavax/mail/ReadOnlyFolderException;
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->cleanupAndThrow(Ljavax/mail/MessagingException;)Ljavax/mail/MessagingException;

    move-result-object v4

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1081
    .end local v3    # "ife":Ljavax/mail/ReadOnlyFolderException;
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :cond_5
    :goto_2
    :try_start_6
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1082
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1083
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    .line 1084
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    .line 1085
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 1086
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 1087
    iget v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput v6, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 1088
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 1089
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 1090
    iget-boolean v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidNotSticky:Z

    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPFolder;->uidNotSticky:Z

    .line 1091
    iget-wide v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    iput-wide v6, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 1094
    new-instance v6, Lcom/sun/mail/imap/MessageCache;

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v7, Lcom/sun/mail/imap/IMAPStore;

    iget v8, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-direct {v6, p0, v7, v8}, Lcom/sun/mail/imap/MessageCache;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IMAPStore;I)V

    iput-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1097
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v6, :cond_c

    .line 1098
    :try_start_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 1099
    iget-object v6, v0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1100
    .local v7, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "VANISHED"

    invoke-virtual {v7, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1102
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v8

    .line 1104
    .local v8, "s":[Ljava/lang/String;
    if-eqz v8, :cond_6

    array-length v9, v8

    if-ne v9, v5, :cond_6

    aget-object v9, v8, v4

    const-string v10, "EARLIER"

    .line 1105
    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1106
    goto :goto_3

    .line 1107
    :cond_7
    invoke-virtual {v7}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v9

    .line 1108
    .local v9, "uids":Ljava/lang/String;
    invoke-static {v9}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v10

    .line 1109
    .local v10, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v11, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    invoke-static {v10, v11, v12}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J

    move-result-object v11

    .line 1110
    .local v11, "luid":[J
    if-eqz v11, :cond_a

    array-length v12, v11

    if-lez v12, :cond_a

    .line 1111
    new-instance v12, Lcom/sun/mail/imap/MessageVanishedEvent;

    invoke-direct {v12, p0, v11}, Lcom/sun/mail/imap/MessageVanishedEvent;-><init>(Ljavax/mail/Folder;[J)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1113
    .end local v8    # "s":[Ljava/lang/String;
    .end local v9    # "uids":Ljava/lang/String;
    .end local v10    # "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v11    # "luid":[J
    :cond_8
    const-string v8, "FETCH"

    invoke-virtual {v7, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1114
    instance-of v8, v7, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v8, :cond_9

    .line 1116
    move-object v8, v7

    check-cast v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v8}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v8

    .line 1117
    .local v8, "msg":Ljavax/mail/Message;
    if-eqz v8, :cond_b

    .line 1118
    new-instance v9, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v9, p0, v5, v8}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1114
    .end local v8    # "msg":Ljavax/mail/Message;
    :cond_9
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "!ir instanceof FetchResponse"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1113
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :cond_a
    :goto_4
    nop

    .line 1121
    .end local v7    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_b
    :goto_5
    goto :goto_3

    .line 1123
    :cond_c
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1125
    :try_start_9
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1126
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1127
    iput v5, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1130
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1132
    monitor-exit p0

    return-object v1

    .line 1060
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catch_2
    move-exception v3

    .line 1063
    .local v3, "pex":Lcom/sun/mail/iap/ProtocolException;
    :goto_6
    :try_start_a
    invoke-virtual {v3}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/sun/mail/imap/IMAPFolder;->logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;

    move-result-object v5

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1065
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catchall_1
    move-exception v5

    :try_start_b
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1066
    nop

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1035
    .end local v3    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catch_3
    move-exception v6

    .line 1044
    .local v6, "cex":Lcom/sun/mail/iap/CommandFailedException;
    :goto_7
    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1046
    iget v7, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/2addr v7, v5

    if-nez v7, :cond_d

    .line 1047
    new-instance v7, Ljavax/mail/MessagingException;

    const-string v8, "folder cannot contain messages"

    invoke-direct {v7, v8}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v7

    .line 1049
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :cond_d
    new-instance v7, Ljavax/mail/MessagingException;

    invoke-virtual {v6}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1053
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catchall_2
    move-exception v7

    :try_start_d
    iput-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1054
    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1055
    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1057
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1058
    nop

    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    throw v7

    .line 1123
    .end local v6    # "cex":Lcom/sun/mail/iap/CommandFailedException;
    .restart local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .restart local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .restart local p1    # "mode":I
    .restart local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catchall_3
    move-exception v3

    :goto_8
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 991
    .end local v0    # "mi":Lcom/sun/mail/imap/protocol/MailboxInfo;
    .end local v1    # "openEvents":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/event/MailEvent;>;"
    .end local p1    # "mode":I
    .end local p2    # "rd":Lcom/sun/mail/imap/ResyncData;
    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized open(I)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 977
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    monitor-exit p0

    return-void

    .line 976
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected releaseProtocol(Z)V
    .locals 3
    .param p1, "returnToPool"    # Z

    .line 3930
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    .line 3931
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 3933
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3934
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1, p0, v2}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3936
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 3937
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3939
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 3941
    :cond_1
    return-void
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 2
    .param p1, "p"    # Lcom/sun/mail/imap/protocol/IMAPProtocol;

    monitor-enter p0

    .line 3913
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_0

    .line 3914
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3917
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "releasing our protocol as store protocol?"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3919
    :goto_0
    monitor-exit p0

    return-void

    .line 3912
    .end local p1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeACL(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2951
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2960
    return-void
.end method

.method public removeRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/sun/mail/imap/ACL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2984
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    .line 2985
    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .param p1, "f"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 949
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 950
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 951
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_1

    .line 955
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    .local v0, "ret":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 964
    monitor-exit p0

    return v1

    .line 966
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 967
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 968
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 969
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 952
    .end local v0    # "ret":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    :try_start_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t rename across Stores"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    .end local p1    # "f":Ljavax/mail/Folder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 4
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2345
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2348
    const/4 v0, 0x0

    .line 2350
    .local v0, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2351
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v2

    .line 2352
    .local v2, "matches":[I
    if-eqz v2, :cond_0

    .line 2353
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    move-object v0, v3

    .line 2354
    .end local v2    # "matches":[I
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2355
    monitor-exit p0

    return-object v0

    .line 2354
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "term":Ljavax/mail/search/SearchTerm;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2367
    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    :catch_0
    move-exception v0

    .line 2369
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2365
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2366
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 2360
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 2362
    .local v0, "sex":Ljavax/mail/search/SearchException;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->throwSearchException()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2364
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2363
    :cond_1
    :try_start_6
    throw v0

    .line 2357
    .end local v0    # "sex":Ljavax/mail/search/SearchException;
    :catch_3
    move-exception v0

    .line 2359
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2344
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 6
    .param p1, "term"    # Ljavax/mail/search/SearchTerm;
    .param p2, "msgs"    # [Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2381
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2383
    array-length v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 2385
    monitor-exit p0

    return-object p2

    .line 2388
    :cond_0
    const/4 v0, 0x0

    .line 2390
    .local v0, "matchMsgs":[Ljavax/mail/Message;
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2391
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2392
    .local v2, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    .line 2393
    .local v3, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v3, :cond_2

    .line 2396
    invoke-virtual {v2, v3, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v4

    .line 2397
    .local v4, "matches":[I
    if-eqz v4, :cond_1

    .line 2398
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v5

    move-object v0, v5

    .line 2399
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .end local v4    # "matches":[I
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2400
    monitor-exit p0

    return-object v0

    .line 2394
    .restart local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_2
    :try_start_3
    new-instance v4, Ljavax/mail/MessageRemovedException;

    const-string v5, "Messages have been removed"

    invoke-direct {v4, v5}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    .end local p2    # "msgs":[Ljavax/mail/Message;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2399
    .end local v2    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v3    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local v0    # "matchMsgs":[Ljavax/mail/Message;
    .restart local p1    # "term":Ljavax/mail/search/SearchTerm;
    .restart local p2    # "msgs":[Ljavax/mail/Message;
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    .end local p2    # "msgs":[Ljavax/mail/Message;
    :try_start_5
    throw v2
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local p1    # "term":Ljavax/mail/search/SearchTerm;
    .restart local p2    # "msgs":[Ljavax/mail/Message;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 2410
    .end local v0    # "matchMsgs":[Ljavax/mail/Message;
    :catch_0
    move-exception v0

    .line 2412
    .local v0, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_6
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2408
    .end local v0    # "pex":Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 2409
    .local v0, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 2405
    .end local v0    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catch_2
    move-exception v0

    .line 2407
    .local v0, "sex":Ljavax/mail/search/SearchException;
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2402
    .end local v0    # "sex":Ljavax/mail/search/SearchException;
    :catch_3
    move-exception v0

    .line 2404
    .local v0, "cfx":Lcom/sun/mail/iap/CommandFailedException;
    :try_start_7
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v1

    .line 2380
    .end local v0    # "cfx":Lcom/sun/mail/iap/CommandFailedException;
    .end local p1    # "term":Ljavax/mail/search/SearchTerm;
    .end local p2    # "msgs":[Ljavax/mail/Message;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "flag"    # Ljavax/mail/Flags;
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1434
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1435
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljavax/mail/Message;

    .line 1436
    .local v0, "msgs":[Ljavax/mail/Message;
    const/4 v1, 0x0

    .line 1437
    .local v1, "i":I
    move v2, p1

    .local v2, "n":I
    :goto_0
    if-gt v2, p2, :cond_0

    .line 1438
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1437
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    .line 1439
    .end local v2    # "n":I
    .end local v3    # "i":I
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .restart local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    monitor-exit p0

    return-void

    .line 1433
    .end local v0    # "msgs":[Ljavax/mail/Message;
    .end local v1    # "i":I
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "flag":Ljavax/mail/Flags;
    .end local p4    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .locals 3
    .param p1, "msgnums"    # [I
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1448
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1449
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/Message;

    .line 1450
    .local v0, "msgs":[Ljavax/mail/Message;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1451
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    monitor-exit p0

    return-void

    .line 1447
    .end local v0    # "msgs":[Ljavax/mail/Message;
    .end local p1    # "msgnums":[I
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 5
    .param p1, "msgs"    # [Ljavax/mail/Message;
    .param p2, "flag"    # Ljavax/mail/Flags;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1406
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1407
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 1409
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 1410
    monitor-exit p0

    return-void

    .line 1412
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1414
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1415
    .local v1, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v2

    .line 1416
    .local v2, "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    if-eqz v2, :cond_1

    .line 1419
    invoke-virtual {v1, v2, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1424
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    nop

    .line 1425
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1426
    monitor-exit p0

    return-void

    .line 1417
    .restart local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    :cond_1
    :try_start_4
    new-instance v3, Ljavax/mail/MessageRemovedException;

    const-string v4, "Messages have been removed"

    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    throw v3
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1425
    .end local v1    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v2    # "ms":[Lcom/sun/mail/imap/protocol/MessageSet;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "flag":Ljavax/mail/Flags;
    .restart local p3    # "value":Z
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1422
    :catch_0
    move-exception v1

    .line 1423
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    throw v2

    .line 1420
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "flag":Ljavax/mail/Flags;
    .restart local p3    # "value":Z
    :catch_1
    move-exception v1

    .line 1421
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1425
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    .restart local p1    # "msgs":[Ljavax/mail/Message;
    .restart local p2    # "flag":Ljavax/mail/Flags;
    .restart local p3    # "value":Z
    :goto_0
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 1405
    .end local p1    # "msgs":[Ljavax/mail/Message;
    .end local p2    # "flag":Ljavax/mail/Flags;
    .end local p3    # "value":Z
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 2
    .param p1, "quota"    # Ljavax/mail/Quota;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2901
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    const-string v1, "QUOTA not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    .line 2910
    return-void
.end method

.method public declared-synchronized setSubscribed(Z)V
    .locals 1
    .param p1, "subscribe"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 763
    :try_start_0
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    .line 762
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    .end local p1    # "subscribe":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method startIdle(Lcom/sun/mail/imap/IdleManager;)Z
    .locals 4
    .param p1, "im"    # Lcom/sun/mail/imap/IdleManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3169
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3170
    monitor-enter p0

    .line 3171
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 3172
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3173
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Folder already being watched by another IdleManager"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "im":Lcom/sun/mail/imap/IdleManager;
    throw v0

    .line 3175
    .restart local p1    # "im":Lcom/sun/mail/imap/IdleManager;
    :cond_1
    :goto_0
    const-string v0, "IDLE not supported"

    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$19;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3207
    .local v0, "started":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "startIdle: return {0}"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3208
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 3209
    .end local v0    # "started":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3169
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .locals 3
    .param p1, "cex"    # Lcom/sun/mail/iap/ConnectionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    monitor-enter p0

    .line 3704
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_1

    .end local p0    # "this":Lcom/sun/mail/imap/IMAPFolder;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_2

    .line 3706
    :cond_1
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 3708
    :cond_2
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3703
    .end local p1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method waitIfIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3307
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3308
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-eqz v0, :cond_4

    .line 3309
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3310
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3311
    .local v0, "im":Lcom/sun/mail/imap/IdleManager;
    if-eqz v0, :cond_0

    .line 3312
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v2, "waitIfIdle: request IdleManager to abort"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3313
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    goto :goto_1

    .line 3315
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v2, "waitIfIdle: abort IDLE"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3316
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3317
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3319
    .end local v0    # "im":Lcom/sun/mail/imap/IdleManager;
    :goto_1
    goto :goto_2

    .line 3320
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "waitIfIdle: idleState {0}"

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3323
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3324
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitIfIdle: wait to be not idle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3325
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3324
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3326
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3327
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3328
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitIfIdle: wait done, idleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3328
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3339
    :cond_3
    goto/16 :goto_0

    .line 3330
    :catch_0
    move-exception v0

    .line 3332
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3338
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Interrupted waitIfIdle"

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3341
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_4
    return-void

    .line 3307
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
