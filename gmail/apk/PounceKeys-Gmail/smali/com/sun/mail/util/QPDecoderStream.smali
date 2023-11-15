.class public Lcom/sun/mail/util/QPDecoderStream;
.super Ljava/io/FilterInputStream;
.source "QPDecoderStream.java"


# instance fields
.field protected ba:[B

.field protected spaces:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 40
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    .line 41
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-lez v0, :cond_0

    .line 59
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    .line 60
    return v2

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 65
    .local v0, "c":I
    const/16 v3, 0xd

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0xa

    if-ne v0, v2, :cond_4

    .line 67
    :goto_0
    iget-object v7, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    move v0, v7

    if-ne v7, v2, :cond_1

    .line 68
    iget v7, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    goto :goto_0

    .line 70
    :cond_1
    if-eq v0, v3, :cond_3

    if-eq v0, v6, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_1

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 77
    const/16 v0, 0x20

    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    iput v5, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    .line 79
    :goto_2
    return v0

    .line 81
    :cond_4
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_9

    .line 83
    iget-object v2, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 85
    .local v2, "a":I
    if-ne v2, v6, :cond_5

    .line 91
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v1

    return v1

    .line 92
    :cond_5
    if-ne v2, v3, :cond_7

    .line 94
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 95
    .local v1, "b":I
    if-eq v1, v6, :cond_6

    .line 99
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 100
    :cond_6
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v3

    return v3

    .line 101
    .end local v1    # "b":I
    :cond_7
    if-ne v2, v4, :cond_8

    .line 103
    return v4

    .line 105
    :cond_8
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v5

    .line 106
    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-static {v1, v5, v3, v4}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 109
    :catch_0
    move-exception v1

    .line 117
    .local v1, "nex":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    invoke-virtual {v3, v4}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 118
    return v0

    .line 122
    .end local v1    # "nex":Ljava/lang/NumberFormatException;
    .end local v2    # "a":I
    :cond_9
    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 144
    if-nez v0, :cond_1

    .line 145
    const/4 v0, -0x1

    goto :goto_1

    .line 148
    :cond_0
    add-int v1, p2, v0

    int-to-byte v3, v2

    aput-byte v3, p1, v1

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "c":I
    :cond_1
    :goto_1
    return v0
.end method

.method public skip(J)J
    .locals 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "skipped":J
    :goto_0
    const-wide/16 v2, 0x1

    sub-long v4, p1, v2

    .end local p1    # "n":J
    .local v4, "n":J
    const-wide/16 v6, 0x0

    cmp-long p1, p1, v6

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    .line 160
    add-long/2addr v0, v2

    move-wide p1, v4

    goto :goto_0

    .line 161
    :cond_0
    return-wide v0
.end method
