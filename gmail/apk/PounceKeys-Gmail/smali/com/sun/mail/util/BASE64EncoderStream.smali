.class public Lcom/sun/mail/util/BASE64EncoderStream;
.super Ljava/io/FilterOutputStream;
.source "BASE64EncoderStream.java"


# static fields
.field private static newline:[B

.field private static final pem_array:[C


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private bytesPerLine:I

.field private count:I

.field private lineLimit:I

.field private noCRLF:Z

.field private outbuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    .line 191
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 79
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bytesPerLine"    # I

    .line 53
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 35
    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 38
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    .line 54
    const/4 v0, 0x3

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    .line 55
    const v1, 0x7fffffff

    const/4 v2, 0x4

    if-eq p2, v1, :cond_0

    if-ge p2, v2, :cond_1

    .line 56
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    .line 57
    const/16 p2, 0x4c

    .line 59
    :cond_1
    div-int/lit8 v1, p2, 0x4

    mul-int/2addr v1, v2

    .line 60
    .end local p2    # "bytesPerLine":I
    .local v1, "bytesPerLine":I
    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    .line 61
    div-int/lit8 p2, v1, 0x4

    mul-int/2addr p2, v0

    iput p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    .line 63
    iget-boolean p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-eqz p2, :cond_2

    .line 64
    new-array p2, v1, [B

    iput-object p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 p2, v1, 0x2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    .line 67
    const/16 v0, 0xd

    aput-byte v0, p2, v1

    .line 68
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, p2, v0

    .line 70
    :goto_0
    return-void
.end method

.method private encode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    .line 211
    .local v0, "osize":I
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v2

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 213
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 216
    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    if-lt v1, v2, :cond_1

    .line 217
    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 219
    :cond_0
    iput v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 221
    :cond_1
    return-void
.end method

.method public static encode([B)[B
    .locals 3
    .param p0, "inbuf"    # [B

    .line 233
    array-length v0, p0

    if-nez v0, :cond_0

    .line 234
    return-object p0

    .line 235
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static encode([BII[B)[B
    .locals 6
    .param p0, "inbuf"    # [B
    .param p1, "off"    # I
    .param p2, "size"    # I
    .param p3, "outbuf"    # [B

    .line 245
    if-nez p3, :cond_0

    .line 246
    invoke-static {p2}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v0

    new-array p3, v0, [B

    .line 249
    :cond_0
    move v0, p1

    .local v0, "inpos":I
    const/4 v1, 0x0

    .local v1, "outpos":I
    :goto_0
    const/4 v2, 0x3

    if-lt p2, v2, :cond_1

    .line 250
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "inpos":I
    .local v2, "inpos":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 251
    .local v0, "val":I
    shl-int/lit8 v0, v0, 0x8

    .line 252
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inpos":I
    .local v3, "inpos":I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 253
    shl-int/lit8 v0, v0, 0x8

    .line 254
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inpos":I
    .restart local v2    # "inpos":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 255
    add-int/lit8 v3, v1, 0x3

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v5, v4, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    .line 256
    shr-int/lit8 v0, v0, 0x6

    .line 257
    add-int/lit8 v3, v1, 0x2

    and-int/lit8 v5, v0, 0x3f

    aget-char v5, v4, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    .line 258
    shr-int/lit8 v0, v0, 0x6

    .line 259
    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v5, v0, 0x3f

    aget-char v5, v4, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    .line 260
    shr-int/lit8 v0, v0, 0x6

    .line 261
    add-int/lit8 v3, v1, 0x0

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 249
    add-int/lit8 p2, p2, -0x3

    add-int/lit8 v1, v1, 0x4

    move v0, v2

    goto :goto_0

    .line 264
    .end local v2    # "inpos":I
    .local v0, "inpos":I
    :cond_1
    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 265
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inpos":I
    .restart local v3    # "inpos":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 266
    .local v0, "val":I
    shl-int/lit8 v0, v0, 0x4

    .line 267
    add-int/lit8 v4, v1, 0x3

    aput-byte v2, p3, v4

    .line 268
    add-int/lit8 v4, v1, 0x2

    aput-byte v2, p3, v4

    .line 269
    add-int/lit8 v2, v1, 0x1

    sget-object v4, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v5, v0, 0x3f

    aget-char v5, v4, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v2

    .line 270
    shr-int/lit8 v0, v0, 0x6

    .line 271
    add-int/lit8 v2, v1, 0x0

    and-int/lit8 v5, v0, 0x3f

    aget-char v4, v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    move v0, v3

    goto :goto_1

    .line 272
    .end local v3    # "inpos":I
    .local v0, "inpos":I
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 273
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "inpos":I
    .local v4, "inpos":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 274
    .local v0, "val":I
    shl-int/lit8 v0, v0, 0x8

    .line 275
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inpos":I
    .local v5, "inpos":I
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    .line 276
    shl-int/2addr v0, v3

    .line 277
    add-int/lit8 v3, v1, 0x3

    aput-byte v2, p3, v3

    .line 278
    add-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/sun/mail/util/BASE64EncoderStream;->pem_array:[C

    and-int/lit8 v4, v0, 0x3f

    aget-char v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 279
    shr-int/lit8 v0, v0, 0x6

    .line 280
    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v4, v0, 0x3f

    aget-char v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, p3, v2

    .line 281
    shr-int/lit8 v0, v0, 0x6

    .line 282
    add-int/lit8 v2, v1, 0x0

    and-int/lit8 v4, v0, 0x3f

    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    move v0, v5

    .line 284
    .end local v5    # "inpos":I
    .local v0, "inpos":I
    :cond_3
    :goto_1
    return-object p3
.end method

.method private static encodedSize(I)I
    .locals 1
    .param p0, "size"    # I

    .line 292
    add-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->flush()V

    .line 183
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/BASE64EncoderStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 185
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 187
    .end local p0    # "this":Lcom/sun/mail/util/BASE64EncoderStream;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    .line 173
    .end local p0    # "this":Lcom/sun/mail/util/BASE64EncoderStream;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 155
    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode()V

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local p0    # "this":Lcom/sun/mail/util/BASE64EncoderStream;
    :cond_0
    monitor-exit p0

    return-void

    .line 153
    .end local p1    # "c":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64EncoderStream;->write([BII)V

    .line 144
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 95
    add-int v0, p2, p3

    .line 98
    .local v0, "end":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bufsize:I

    if-eqz v1, :cond_0

    if-ge p2, v0, :cond_0

    .line 99
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V

    move p2, v1

    goto :goto_0

    .line 102
    .end local v1    # "off":I
    .end local p0    # "this":Lcom/sun/mail/util/BASE64EncoderStream;
    .restart local p2    # "off":I
    :cond_0
    iget v1, p0, Lcom/sun/mail/util/BASE64EncoderStream;->bytesPerLine:I

    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    .line 103
    .local v1, "blen":I
    add-int v2, p2, v1

    const/4 v3, 0x0

    if-gt v2, v0, :cond_2

    .line 105
    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v2

    .line 106
    .local v2, "outlen":I
    iget-boolean v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->noCRLF:Z

    if-nez v4, :cond_1

    .line 107
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "outlen":I
    .local v5, "outlen":I
    const/16 v6, 0xd

    aput-byte v6, v4, v2

    .line 108
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "outlen":I
    .restart local v2    # "outlen":I
    const/16 v6, 0xa

    aput-byte v6, v4, v5

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v1, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    add-int/2addr p2, v1

    .line 112
    iput v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 116
    .end local v2    # "outlen":I
    :cond_2
    :goto_1
    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int/2addr v2, p2

    if-gt v2, v0, :cond_3

    .line 117
    iget-object v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v4, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 116
    iget v2, p0, Lcom/sun/mail/util/BASE64EncoderStream;->lineLimit:I

    add-int/2addr p2, v2

    goto :goto_1

    .line 120
    :cond_3
    add-int/lit8 v2, p2, 0x3

    if-gt v2, v0, :cond_4

    .line 121
    sub-int v1, v0, p2

    .line 122
    div-int/lit8 v2, v1, 0x3

    mul-int/lit8 v1, v2, 0x3

    .line 124
    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encodedSize(I)I

    move-result v2

    .line 125
    .restart local v2    # "outlen":I
    iget-object v4, p0, Lcom/sun/mail/util/BASE64EncoderStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sun/mail/util/BASE64EncoderStream;->outbuf:[B

    invoke-static {p1, p2, v1, v5}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([BII[B)[B

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 126
    add-int/2addr p2, v1

    .line 127
    iget v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/mail/util/BASE64EncoderStream;->count:I

    .line 131
    .end local v2    # "outlen":I
    :cond_4
    :goto_2
    if-ge p2, v0, :cond_5

    .line 132
    aget-byte v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/sun/mail/util/BASE64EncoderStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 133
    :cond_5
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "end":I
    .end local v1    # "blen":I
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
