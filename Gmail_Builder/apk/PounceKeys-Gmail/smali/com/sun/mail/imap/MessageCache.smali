.class public Lcom/sun/mail/imap/MessageCache;
.super Ljava/lang/Object;
.source "MessageCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SLOP:I = 0x40


# instance fields
.field private folder:Lcom/sun/mail/imap/IMAPFolder;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private messages:[Lcom/sun/mail/imap/IMAPMessage;

.field private seqnums:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 34
    return-void
.end method

.method constructor <init>(IZ)V
    .locals 7
    .param p1, "size"    # I
    .param p2, "debug"    # Z

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    .line 89
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "messagecache"

    const-string v4, "DEBUG IMAP MC"

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v1, v0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    .line 92
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create DEBUG cache of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/MessageCache;->ensureCapacity(II)V

    .line 95
    return-void
.end method

.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IMAPStore;I)V
    .locals 4
    .param p1, "folder"    # Lcom/sun/mail/imap/IMAPFolder;
    .param p2, "store"    # Lcom/sun/mail/imap/IMAPStore;
    .param p3, "size"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    .line 77
    iget-object v0, p1, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 78
    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPStore;->getMessageCacheDebug()Z

    move-result v1

    .line 77
    const-string v2, "messagecache"

    const-string v3, "DEBUG IMAP MC"

    invoke-virtual {v0, v2, v3, v1}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    .line 79
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create cache of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 81
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/sun/mail/imap/MessageCache;->ensureCapacity(II)V

    .line 82
    return-void
.end method

.method private ensureCapacity(II)V
    .locals 6
    .param p1, "newsize"    # I
    .param p2, "newSeqNum"    # I

    .line 376
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    if-nez v0, :cond_0

    .line 377
    add-int/lit8 v0, p1, 0x40

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    goto/16 :goto_2

    .line 378
    :cond_0
    array-length v0, v0

    if-ge v0, p1, :cond_4

    .line 379
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand capacity to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 381
    :cond_1
    add-int/lit8 v0, p1, 0x40

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    .line 382
    .local v0, "newm":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iput-object v0, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 384
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v1, :cond_3

    .line 385
    add-int/lit8 v2, p1, 0x40

    new-array v2, v2, [I

    .line 386
    .local v2, "news":[I
    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    iget v1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 388
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "newSeqNum":I
    .local v3, "newSeqNum":I
    aput p2, v2, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    .end local v3    # "newSeqNum":I
    .restart local p2    # "newSeqNum":I
    :cond_2
    iput-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 390
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has sequence number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 394
    .end local v0    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v2    # "news":[I
    :cond_3
    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-ge p1, v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 397
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shrink capacity to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 398
    :cond_5
    add-int/lit8 v0, p1, 0x1

    .local v0, "msgnum":I
    :goto_1
    iget v1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-gt v0, v1, :cond_7

    .line 399
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 400
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v1, :cond_6

    .line 401
    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 398
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 404
    .end local v0    # "msgnum":I
    :cond_7
    :goto_2
    iput p1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .line 405
    return-void
.end method

.method private msgnumOf(I)I
    .locals 4
    .param p1, "seqnum"    # I

    .line 428
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-nez v0, :cond_0

    .line 429
    return p1

    .line 430
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad seqnum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 433
    :cond_1
    return v0

    .line 435
    :cond_2
    move v1, p1

    .local v1, "msgnum":I
    :goto_0
    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-gt v1, v2, :cond_5

    .line 436
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    if-ne v3, p1, :cond_3

    .line 437
    return v1

    .line 438
    :cond_3
    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-le v2, p1, :cond_4

    .line 439
    goto :goto_1

    .line 435
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v1    # "msgnum":I
    :cond_5
    :goto_1
    return v0
.end method

.method private shrink(II)V
    .locals 5
    .param p1, "newend"    # I
    .param p2, "oldend"    # I

    .line 328
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    .line 329
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 331
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 332
    iput-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 333
    iput-object v1, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    goto :goto_1

    .line 334
    :cond_1
    const/16 v2, 0x40

    const/4 v3, 0x0

    if-le v0, v2, :cond_3

    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_3

    .line 336
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "reallocate array"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 337
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/lit8 v1, v0, 0x40

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPMessage;

    .line 338
    .local v1, "newm":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    .line 340
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v0, :cond_2

    .line 341
    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/lit8 v4, v2, 0x40

    new-array v4, v4, [I

    .line 342
    .local v4, "news":[I
    invoke-static {v0, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    iput-object v4, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 345
    .end local v1    # "newm":[Lcom/sun/mail/imap/IMAPMessage;
    .end local v4    # "news":[I
    :cond_2
    goto :goto_1

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clean "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 349
    :cond_4
    move v0, p1

    .local v0, "msgnum":I
    :goto_0
    if-ge v0, p2, :cond_6

    .line 350
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v4, v0, -0x1

    aput-object v1, v2, v4

    .line 351
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v2, :cond_5

    .line 352
    add-int/lit8 v4, v0, -0x1

    aput v3, v2, v4

    .line 349
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "msgnum":I
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public addMessages(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "newSeqNum"    # I

    .line 365
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 368
    :cond_0
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/MessageCache;->ensureCapacity(II)V

    .line 369
    return-void
.end method

.method public expungeMessage(I)V
    .locals 7
    .param p1, "seqnum"    # I

    .line 157
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/MessageCache;->msgnumOf(I)I

    move-result v0

    .line 158
    .local v0, "msgnum":I
    if-gez v0, :cond_1

    .line 159
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expunge no seqnum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 164
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 165
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expunge existing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 167
    :cond_2
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 170
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "create seqnums array"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 172
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 173
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v5, v2, -0x1

    aput v2, v3, v5

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, v0, -0x1

    aput v4, v2, v3

    .line 175
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    array-length v4, v3

    if-gt v2, v4, :cond_5

    .line 176
    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v2, -0x1

    aput v5, v3, v4

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_5
    goto :goto_3

    .line 178
    :cond_6
    add-int/lit8 v5, v0, -0x1

    aput v4, v3, v5

    .line 179
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    array-length v5, v4

    if-gt v3, v5, :cond_9

    .line 180
    add-int/lit8 v5, v3, -0x1

    aget v5, v4, v5

    if-eq v5, v2, :cond_8

    .line 181
    add-int/lit8 v5, v3, -0x1

    aget v5, v4, v5

    if-lez v5, :cond_7

    .line 182
    add-int/lit8 v5, v3, -0x1

    aget v6, v4, v5

    sub-int/2addr v6, v2

    aput v6, v4, v5

    .line 179
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 180
    :cond_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 185
    .end local v3    # "i":I
    :cond_9
    :goto_3
    return-void
.end method

.method public getMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 5
    .param p1, "msgnum"    # I

    .line 115
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    iget v1, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-gt p1, v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 119
    .local v1, "msg":Lcom/sun/mail/imap/IMAPMessage;
    if-nez v1, :cond_1

    .line 120
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create message number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->folder:Lcom/sun/mail/imap/IMAPFolder;

    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v3, p1, -0x1

    aput-object v1, v2, v3

    .line 125
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v2

    if-gtz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "it\'s expunged!"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    .line 130
    :cond_1
    return-object v1

    .line 116
    .end local v1    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message number ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of bounds ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 4
    .param p1, "seqnum"    # I

    .line 142
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/MessageCache;->msgnumOf(I)I

    move-result v0

    .line 143
    .local v0, "msgnum":I
    if-gez v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no message seqnum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 146
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 148
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v1

    return-object v1
.end method

.method public removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;
    .locals 7

    .line 194
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "remove expunged messages"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "mlist":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/IMAPMessage;>;"
    const/4 v1, 0x1

    .line 207
    .local v1, "oldnum":I
    const/4 v2, 0x1

    .line 208
    .local v2, "newnum":I
    :goto_0
    iget v3, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-gt v1, v3, :cond_2

    .line 210
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v3

    if-gtz v3, :cond_0

    .line 211
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v3

    .line 212
    .local v3, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v3    # "m":Lcom/sun/mail/imap/IMAPMessage;
    goto :goto_1

    .line 215
    :cond_0
    if-eq v2, v1, :cond_1

    .line 217
    iget-object v3, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v4, v2, -0x1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v4

    .line 218
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    .line 219
    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 221
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 223
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 226
    invoke-direct {p0, v2, v1}, Lcom/sun/mail/imap/MessageCache;->shrink(II)V

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/mail/imap/IMAPMessage;

    .line 229
    .local v3, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    iget-object v4, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 231
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 232
    return-object v3
.end method

.method public removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;
    .locals 10
    .param p1, "msgs"    # [Ljavax/mail/Message;

    .line 245
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "remove expunged messages"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "mlist":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/IMAPMessage;>;"
    array-length v1, p1

    new-array v1, v1, [I

    .line 255
    .local v1, "mnum":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 256
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v3

    aput v3, v1, v2

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 273
    const/4 v2, 0x1

    .line 274
    .local v2, "oldnum":I
    const/4 v3, 0x1

    .line 275
    .local v3, "newnum":I
    const/4 v4, 0x0

    .line 276
    .local v4, "mnumi":I
    const/4 v5, 0x0

    .line 277
    .local v5, "keepSeqnums":Z
    :goto_1
    iget v6, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    if-gt v2, v6, :cond_6

    .line 283
    array-length v6, v1

    if-ge v4, v6, :cond_2

    aget v6, v1, v4

    if-ne v2, v6, :cond_2

    .line 285
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/MessageCache;->seqnumOf(I)I

    move-result v6

    if-gtz v6, :cond_2

    .line 286
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v6

    .line 287
    .local v6, "m":Lcom/sun/mail/imap/IMAPMessage;
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    :goto_2
    array-length v7, v1

    if-ge v4, v7, :cond_1

    aget v7, v1, v4

    if-gt v7, v2, :cond_1

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 295
    .end local v6    # "m":Lcom/sun/mail/imap/IMAPMessage;
    :cond_1
    goto :goto_3

    .line 297
    :cond_2
    if-eq v3, v2, :cond_4

    .line 299
    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->messages:[Lcom/sun/mail/imap/IMAPMessage;

    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v2, -0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v7

    .line 300
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v6, v7

    if-eqz v7, :cond_3

    .line 301
    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v3}, Lcom/sun/mail/imap/IMAPMessage;->setMessageNumber(I)V

    .line 302
    :cond_3
    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v6, :cond_4

    .line 303
    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v8, v2, -0x1

    aget v8, v6, v8

    aput v8, v6, v7

    .line 305
    :cond_4
    iget-object v6, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-eqz v6, :cond_5

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    if-eq v6, v3, :cond_5

    .line 306
    const/4 v5, 0x1

    .line 307
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 309
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_6
    if-nez v5, :cond_7

    .line 313
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    .line 314
    :cond_7
    invoke-direct {p0, v3, v2}, Lcom/sun/mail/imap/MessageCache;->shrink(II)V

    .line 316
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sun/mail/imap/IMAPMessage;

    .line 317
    .local v6, "rmsgs":[Lcom/sun/mail/imap/IMAPMessage;
    iget-object v7, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 318
    iget-object v7, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 319
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 320
    return-object v6
.end method

.method public seqnumOf(I)I
    .locals 4
    .param p1, "msgnum"    # I

    .line 414
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    if-nez v0, :cond_0

    .line 415
    return p1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgnum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is seqnum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/MessageCache;->seqnums:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public size()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/sun/mail/imap/MessageCache;->size:I

    return v0
.end method
