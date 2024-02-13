.class Lcom/sun/mail/util/TimeoutOutputStream;
.super Ljava/io/OutputStream;
.source "WriteTimeoutSocket.java"


# instance fields
.field private b1:[B

.field private final os:Ljava/io/OutputStream;

.field private final ses:Ljava/util/concurrent/ScheduledExecutorService;

.field private final timeout:I

.field private final timeoutTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .locals 1
    .param p1, "os0"    # Ljava/io/OutputStream;
    .param p2, "ses"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    .line 358
    iput-object p2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    .line 359
    iput p3, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeout:I

    .line 360
    new-instance v0, Lcom/sun/mail/util/TimeoutOutputStream$1;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/TimeoutOutputStream$1;-><init>(Lcom/sun/mail/util/TimeoutOutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeoutTask:Ljava/util/concurrent/Callable;

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/sun/mail/util/TimeoutOutputStream;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/util/TimeoutOutputStream;

    .line 348
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 408
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    .line 373
    .end local p0    # "this":Lcom/sun/mail/util/TimeoutOutputStream;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 374
    invoke-virtual {p0, v0}, Lcom/sun/mail/util/TimeoutOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 370
    .end local p1    # "b":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    if-ltz p2, :cond_4

    :try_start_0
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-gt v0, v1, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    .line 383
    if-nez p3, :cond_0

    .line 384
    monitor-exit p0

    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 391
    .local v0, "sf":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    :try_start_1
    iget v2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeout:I

    if-lez v2, :cond_1

    .line 392
    iget-object v3, p0, Lcom/sun/mail/util/TimeoutOutputStream;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeoutTask:Ljava/util/concurrent/Callable;

    int-to-long v5, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    .line 397
    :cond_1
    goto :goto_0

    .line 400
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 394
    :catch_0
    move-exception v2

    .line 398
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 400
    if-eqz v0, :cond_2

    .line 401
    :try_start_3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 403
    .end local p0    # "this":Lcom/sun/mail/util/TimeoutOutputStream;
    :cond_2
    monitor-exit p0

    return-void

    .line 400
    :catchall_1
    move-exception v2

    :goto_1
    if-eqz v0, :cond_3

    .line 401
    :try_start_4
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 402
    :cond_3
    throw v2

    .line 382
    .end local v0    # "sf":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Object;>;"
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 379
    .end local p1    # "bs":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
