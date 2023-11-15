.class Lcom/sun/mail/pop3/WritableSharedFile;
.super Ljavax/mail/util/SharedFileInputStream;
.source "WritableSharedFile.java"


# instance fields
.field private af:Lcom/sun/mail/pop3/AppendStream;

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    .line 35
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 39
    .local v0, "ex":Ljava/io/IOException;
    invoke-super {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    .line 41
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-super {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    nop

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    throw v0
.end method

.method public declared-synchronized getAppendStream()Lcom/sun/mail/pop3/AppendStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->af:Lcom/sun/mail/pop3/AppendStream;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/sun/mail/pop3/AppendStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/AppendStream;-><init>(Lcom/sun/mail/pop3/WritableSharedFile;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->af:Lcom/sun/mail/pop3/AppendStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-object v0

    .line 77
    .end local p0    # "this":Lcom/sun/mail/pop3/WritableSharedFile;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "POP3 file cache only supports single threaded access"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWritableFile()Ljava/io/RandomAccessFile;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method declared-synchronized updateLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->datalen:J

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->af:Lcom/sun/mail/pop3/AppendStream;

    .line 69
    iget-wide v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->datalen:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 66
    .end local p0    # "this":Lcom/sun/mail/pop3/WritableSharedFile;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
