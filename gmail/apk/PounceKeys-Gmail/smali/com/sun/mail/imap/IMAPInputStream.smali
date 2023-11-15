.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;
.source "IMAPInputStream.java"


# static fields
.field private static final slop:I = 0x40


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private lastBuffer:Z

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private readbuf:Lcom/sun/mail/iap/ByteArray;

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "msg"    # Lcom/sun/mail/imap/IMAPMessage;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "peek"    # Z

    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 63
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    .line 65
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 67
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 68
    return-void
.end method

.method private checkSeen()V
    .locals 4

    .line 290
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v0, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    .line 294
    .local v0, "f":Ljavax/mail/Folder;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    .line 295
    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v3, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v0    # "f":Ljavax/mail/Folder;
    :cond_1
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 300
    :goto_0
    return-void
.end method

.method private fill()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    if-nez v0, :cond_e

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-lt v2, v0, :cond_0

    goto/16 :goto_5

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "b":Lcom/sun/mail/imap/protocol/BODY;
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    if-nez v2, :cond_1

    .line 112
    new-instance v2, Lcom/sun/mail/iap/ByteArray;

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/lit8 v3, v3, 0x40

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    .line 122
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v3

    if-nez v3, :cond_d

    .line 126
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v5

    .line 127
    .local v5, "seqnum":I
    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    move v6, v3

    .line 128
    .local v6, "cnt":I
    iget v7, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v7, v1, :cond_2

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v3, v1

    if-le v3, v7, :cond_2

    .line 129
    sub-int v6, v7, v1

    move v1, v6

    goto :goto_0

    .line 130
    :cond_2
    move v1, v6

    .end local v6    # "cnt":I
    .local v1, "cnt":I
    :goto_0
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v3, :cond_3

    .line 131
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v7, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v9, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move v8, v1

    invoke-virtual/range {v4 .. v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3

    move-object v0, v3

    goto :goto_1

    .line 133
    :cond_3
    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v9, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v11, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move-object v6, v4

    move v7, v5

    move v10, v1

    invoke-virtual/range {v6 .. v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v3
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 140
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .end local v5    # "seqnum":I
    :goto_1
    nop

    .line 142
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v4

    move-object v5, v4

    .local v5, "ba":Lcom/sun/mail/iap/ByteArray;
    if-nez v4, :cond_5

    .line 143
    .end local v5    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 148
    new-instance v4, Lcom/sun/mail/iap/ByteArray;

    invoke-direct {v4, v3}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    move-object v5, v4

    .line 150
    .restart local v5    # "ba":Lcom/sun/mail/iap/ByteArray;
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v2, :cond_6

    .line 154
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 157
    :cond_6
    invoke-virtual {v5}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    .line 158
    invoke-virtual {v5}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    .line 159
    invoke-virtual {v5}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v2

    .line 162
    .local v2, "n":I
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BODY;->getOrigin()I

    move-result v4

    goto :goto_2

    :cond_7
    iget v4, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 163
    .local v4, "origin":I
    :goto_2
    const/4 v6, 0x1

    if-gez v4, :cond_a

    .line 171
    iget v7, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v7, :cond_9

    .line 176
    if-eq v2, v1, :cond_8

    move v3, v6

    :cond_8
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    goto :goto_3

    .line 186
    :cond_9
    const/4 v2, 0x0

    .line 187
    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    goto :goto_3

    .line 189
    :cond_a
    iget v7, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-ne v4, v7, :cond_c

    .line 194
    if-ge v2, v1, :cond_b

    move v3, v6

    :cond_b
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    goto :goto_3

    .line 200
    :cond_c
    const/4 v2, 0x0

    .line 201
    iput-boolean v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    .line 204
    :goto_3
    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    .line 205
    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 207
    return-void

    .line 123
    .end local v1    # "cnt":I
    .end local v2    # "n":I
    .end local v5    # "ba":Lcom/sun/mail/iap/ByteArray;
    .local v4, "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :cond_d
    :try_start_2
    new-instance v1, Lcom/sun/mail/util/MessageRemovedIOException;

    const-string v3, "No content for expunged message"

    invoke-direct {v1, v3}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    throw v1
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/FolderClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .end local v4    # "p":Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    :try_start_3
    new-instance v3, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v4

    .line 139
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    throw v3

    .line 134
    .end local v1    # "fex":Ljavax/mail/FolderClosedException;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :catch_1
    move-exception v1

    .line 135
    .local v1, "pex":Lcom/sun/mail/iap/ProtocolException;
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 136
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    throw v3

    .line 150
    .end local v1    # "pex":Lcom/sun/mail/iap/ProtocolException;
    .restart local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 104
    .end local v0    # "b":Lcom/sun/mail/imap/protocol/BODY;
    :cond_e
    :goto_5
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_f

    .line 105
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 106
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 107
    return-void
.end method

.method private forceCheckExpunged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/util/MessageRemovedIOException;,
            Lcom/sun/mail/util/FolderClosedIOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 85
    :catch_0
    move-exception v1

    .line 88
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v0}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    .local v1, "fex":Ljavax/mail/FolderClosedException;
    :try_start_2
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 84
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v1    # "fex":Ljavax/mail/FolderClosedException;
    :catch_2
    move-exception v1

    .line 80
    .local v1, "cex":Lcom/sun/mail/iap/ConnectionException;
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 81
    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 88
    .end local v1    # "cex":Lcom/sun/mail/iap/ConnectionException;
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 279
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 217
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 218
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 220
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPInputStream;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int/2addr v0, v1

    .line 242
    .local v0, "avail":I
    if-gtz v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 244
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v1, v2

    .line 245
    if-gtz v0, :cond_0

    .line 246
    monitor-exit p0

    const/4 v1, -0x1

    return v1

    .line 248
    .end local p0    # "this":Lcom/sun/mail/imap/IMAPInputStream;
    :cond_0
    if-ge v0, p3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p3

    .line 249
    .local v1, "cnt":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    monitor-exit p0

    return v1

    .line 240
    .end local v0    # "avail":I
    .end local v1    # "cnt":I
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
