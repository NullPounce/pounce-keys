.class public Lcom/sun/mail/imap/IdleManager;
.super Ljava/lang/Object;
.source "IdleManager.java"


# instance fields
.field private volatile die:Z

.field private es:Ljava/util/concurrent/Executor;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private volatile running:Z

.field private selector:Ljava/nio/channels/Selector;

.field private toAbort:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field

.field private toWatch:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "es"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    .line 132
    iput-object p2, p0, Lcom/sun/mail/imap/IdleManager;->es:Ljava/util/concurrent/Executor;

    .line 133
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v2

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v3

    const-string v4, "DEBUG IMAP"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    .line 135
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    .line 136
    new-instance v0, Lcom/sun/mail/imap/IdleManager$1;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IdleManager$1;-><init>(Lcom/sun/mail/imap/IdleManager;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/imap/IdleManager;

    .line 113
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sun/mail/imap/IdleManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IdleManager;
    .param p1, "x1"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/sun/mail/imap/IdleManager;->running:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sun/mail/imap/IdleManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/imap/IdleManager;

    .line 113
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->select()V

    return-void
.end method

.method private static folderName(Ljavax/mail/Folder;)Ljava/lang/String;
    .locals 3
    .param p0, "folder"    # Ljavax/mail/Folder;

    .line 485
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, "mex":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/mail/Store;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/mail/Folder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private processKeys()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    .line 339
    .local v0, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 340
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 342
    .local v2, "sk":Ljava/nio/channels/SelectionKey;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 344
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 345
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/IMAPFolder;

    .line 346
    .local v4, "folder":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 347
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 348
    invoke-static {v4}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v7

    .line 347
    const-string v8, "IdleManager selected folder: {0}"

    invoke-virtual {v5, v6, v8, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    .line 351
    .local v5, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v5, v3}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 353
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v4, v3}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager continue watching folder {0}"

    .line 357
    invoke-static {v4}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-virtual {v3, v6, v7, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager done watching folder {0}"

    .line 365
    invoke-static {v4}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v8

    .line 363
    invoke-virtual {v3, v6, v7, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_3
    :goto_1
    goto :goto_2

    .line 367
    :catch_0
    move-exception v3

    .line 369
    .local v3, "ex":Ljavax/mail/MessagingException;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IdleManager got exception for folder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 371
    invoke-static {v4}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    invoke-virtual {v6, v7, v8, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .end local v2    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v3    # "ex":Ljavax/mail/MessagingException;
    .end local v5    # "sc":Ljava/nio/channels/SelectableChannel;
    :goto_2
    goto/16 :goto_0

    .line 378
    .end local v4    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPFolder;

    move-object v4, v2

    .restart local v4    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-eqz v2, :cond_9

    .line 379
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 380
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 382
    invoke-static {v4}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v6

    .line 380
    const-string v7, "IdleManager aborting IDLE for folder: {0}"

    invoke-virtual {v2, v5, v7, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    :cond_5
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 384
    .local v2, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v2, :cond_6

    .line 385
    goto :goto_3

    .line 386
    :cond_6
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2, v5}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v5

    .line 388
    .local v5, "sk":Ljava/nio/channels/SelectionKey;
    if-eqz v5, :cond_7

    .line 389
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 391
    :cond_7
    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 394
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    .line 395
    .local v6, "sock":Ljava/net/Socket;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/net/Socket;->getSoTimeout()I

    move-result v7

    if-lez v7, :cond_8

    .line 396
    iget-object v7, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v8, "IdleManager requesting DONE with timeout"

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 397
    iget-object v7, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v7, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 398
    move-object v7, v4

    .line 399
    .local v7, "folder0":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v8, p0, Lcom/sun/mail/imap/IdleManager;->es:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/sun/mail/imap/IdleManager$2;

    invoke-direct {v9, p0, v7}, Lcom/sun/mail/imap/IdleManager$2;-><init>(Lcom/sun/mail/imap/IdleManager;Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 406
    .end local v7    # "folder0":Lcom/sun/mail/imap/IMAPFolder;
    goto :goto_4

    .line 407
    :cond_8
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPFolder;->idleAbort()V

    .line 410
    iget-object v7, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v7, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v2    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v5    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v6    # "sock":Ljava/net/Socket;
    :goto_4
    goto :goto_3

    .line 413
    :cond_9
    return-void
.end method

.method private select()V
    .locals 9

    .line 235
    const-string v0, "IdleManager exiting"

    const-string v1, "IdleManager unwatch exception"

    const-string v2, "IdleManager unwatchAll"

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 237
    :goto_0
    const/4 v3, 0x1

    :try_start_0
    iget-boolean v4, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v4, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->watchAll()V

    .line 239
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "IdleManager waiting..."

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I

    move-result v4

    .line 241
    .local v4, "ns":I
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager selected {0} channels"

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 242
    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    :cond_0
    iget-boolean v5, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v5, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 245
    goto :goto_1

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->processKeys()V

    .line 265
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 266
    .end local v4    # "ns":I
    goto :goto_0

    .line 274
    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 275
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 277
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 278
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    :goto_2
    goto :goto_4

    .line 279
    :catch_0
    move-exception v2

    .line 281
    .local v2, "ex2":Ljava/io/IOException;
    :goto_3
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v2    # "ex2":Ljava/io/IOException;
    :goto_4
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 284
    goto :goto_5

    .line 274
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 271
    :catch_1
    move-exception v4

    .line 272
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager got exception"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    .end local v4    # "ex":Ljava/lang/Exception;
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 275
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 277
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 278
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 279
    :catch_2
    move-exception v2

    goto :goto_3

    .line 269
    :catch_3
    move-exception v4

    .line 270
    .local v4, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager got I/O exception"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    .end local v4    # "ex":Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 275
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 277
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 278
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 279
    :catch_4
    move-exception v2

    goto :goto_3

    .line 267
    :catch_5
    move-exception v4

    .line 268
    .local v4, "ex":Ljava/io/InterruptedIOException;
    :try_start_6
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager interrupted"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    .end local v4    # "ex":Ljava/io/InterruptedIOException;
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 275
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 277
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 278
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 279
    :catch_6
    move-exception v2

    goto :goto_3

    .line 285
    :goto_5
    return-void

    .line 274
    :goto_6
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 275
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 277
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 278
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 282
    goto :goto_7

    .line 279
    :catch_7
    move-exception v2

    .line 281
    .restart local v2    # "ex2":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v2    # "ex2":Ljava/io/IOException;
    :goto_7
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 284
    throw v4
.end method

.method private unwatchAll()V
    .locals 10

    .line 423
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 424
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "IdleManager exception while aborting idle for folder: "

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 426
    .local v2, "sk":Ljava/nio/channels/SelectionKey;
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 427
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/IMAPFolder;

    .line 428
    .local v5, "folder":Lcom/sun/mail/imap/IMAPFolder;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 429
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 431
    invoke-static {v5}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v8

    .line 429
    const-string v9, "IdleManager no longer watching folder: {0}"

    invoke-virtual {v6, v7, v9, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    .line 435
    .local v6, "sc":Ljava/nio/channels/SelectableChannel;
    :try_start_0
    invoke-virtual {v6, v4}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 436
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_1

    .line 437
    :catch_0
    move-exception v4

    .line 439
    .local v4, "ex":Ljava/io/IOException;
    iget-object v7, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 441
    invoke-static {v5}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-virtual {v7, v8, v3, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    .end local v2    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "sc":Ljava/nio/channels/SelectableChannel;
    :goto_1
    goto :goto_0

    .line 448
    .end local v5    # "folder":Lcom/sun/mail/imap/IMAPFolder;
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    move-object v2, v1

    .local v2, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-eqz v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 452
    invoke-static {v2}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v6

    .line 450
    const-string v7, "IdleManager aborting IDLE for unwatched folder: {0}"

    invoke-virtual {v1, v5, v7, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    :cond_2
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 454
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_3

    .line 455
    goto :goto_2

    .line 458
    :cond_3
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 459
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 465
    goto :goto_3

    .line 460
    :catch_1
    move-exception v5

    .line 462
    .local v5, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 464
    invoke-static {v2}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 462
    invoke-virtual {v6, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_3
    goto :goto_2

    .line 467
    :cond_4
    return-void
.end method

.method private watchAll()V
    .locals 6

    .line 297
    const-string v0, "IdleManager can\'t register folder"

    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    move-object v2, v1

    .local v2, "folder":Lcom/sun/mail/imap/IMAPFolder;
    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 300
    invoke-static {v2}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v4

    .line 299
    const-string v5, "IdleManager adding {0} to selector"

    invoke-virtual {v1, v3, v5, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 303
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_1

    .line 304
    goto :goto_0

    .line 306
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 307
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    nop

    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 314
    .local v1, "ex":Ljava/nio/channels/CancelledKeyException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "ex":Ljava/nio/channels/CancelledKeyException;
    goto :goto_1

    .line 308
    :catch_1
    move-exception v1

    .line 310
    .local v1, "ex":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 318
    :cond_2
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->running:Z

    return v0
.end method

.method requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V
    .locals 1
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;

    .line 226
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 228
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 473
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 474
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IdleManager stopping"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 472
    .end local p0    # "this":Lcom/sun/mail/imap/IdleManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public watch(Ljavax/mail/Folder;)V
    .locals 7
    .param p1, "folder"    # Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v0, :cond_8

    .line 176
    instance-of v0, p1, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz v0, :cond_7

    .line 178
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    .line 179
    .local v0, "ifolder":Lcom/sun/mail/imap/IMAPFolder;
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    .line 180
    .local v1, "sc":Ljava/nio/channels/SocketChannel;
    if-nez v1, :cond_1

    .line 181
    invoke-virtual {p1}, Ljavax/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Folder is not using SocketChannels"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_0
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Folder is not open"

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "IdleManager watching {0}"

    .line 189
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :cond_2
    const/4 v2, 0x0

    .line 193
    .local v2, "tries":I
    :goto_0
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 194
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "IdleManager.watch startIdle failed for {0}"

    .line 197
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    if-lez v2, :cond_5

    .line 202
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IdleManager.watch startIdle succeeded for {0} after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tries"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v6

    .line 202
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 207
    :cond_5
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "IdleManager.watch startIdle succeeded for {0}"

    .line 209
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_6
    :goto_1
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 214
    monitor-exit p0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 177
    .end local v0    # "ifolder":Lcom/sun/mail/imap/IMAPFolder;
    .end local v1    # "sc":Ljava/nio/channels/SocketChannel;
    .end local v2    # "tries":I
    :cond_7
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can only watch IMAP folders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_8
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IdleManager is not running"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
