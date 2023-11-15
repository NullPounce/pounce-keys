.class public Lcom/sun/mail/util/LineInputStream;
.super Ljava/io/FilterInputStream;
.source "LineInputStream.java"


# static fields
.field private static MAX_INCR:I

.field private static defaultutf8:Z


# instance fields
.field private allowutf8:Z

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private lineBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    nop

    .line 52
    const-string v0, "mail.mime.allowutf8"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sun/mail/util/LineInputStream;->defaultutf8:Z

    .line 53
    const/high16 v0, 0x100000

    sput v0, Lcom/sun/mail/util/LineInputStream;->MAX_INCR:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "allowutf8"    # Z

    .line 65
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[B

    .line 66
    iput-boolean p2, p0, Lcom/sun/mail/util/LineInputStream;->allowutf8:Z

    .line 67
    if-nez p2, :cond_0

    sget-boolean v0, Lcom/sun/mail/util/LineInputStream;->defaultutf8:Z

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 69
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 70
    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[B

    .line 93
    .local v0, "buf":[B
    if-nez v0, :cond_0

    .line 94
    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[B

    move-object v0, v1

    .line 97
    :cond_0
    array-length v1, v0

    .line 98
    .local v1, "room":I
    const/4 v2, 0x0

    .line 100
    .local v2, "offset":I
    :goto_0
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    move v4, v3

    .local v4, "c1":I
    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_a

    .line 101
    const/16 v3, 0xa

    if-ne v4, v3, :cond_1

    .line 102
    goto/16 :goto_2

    .line 103
    :cond_1
    const/4 v7, 0x2

    const/16 v8, 0xd

    if-ne v4, v8, :cond_7

    .line 105
    const/4 v9, 0x0

    .line 106
    .local v9, "twoCRs":Z
    iget-object v10, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 107
    iget-object v10, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10, v7}, Ljava/io/InputStream;->mark(I)V

    .line 108
    :cond_2
    iget-object v10, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 109
    .local v10, "c2":I
    if-ne v10, v8, :cond_3

    .line 110
    const/4 v9, 0x1

    .line 111
    iget-object v11, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v10

    .line 113
    :cond_3
    if-eq v10, v3, :cond_a

    .line 125
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 126
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    goto :goto_2

    .line 128
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    instance-of v3, v3, Ljava/io/PushbackInputStream;

    if-nez v3, :cond_5

    .line 129
    new-instance v3, Ljava/io/PushbackInputStream;

    iget-object v11, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v3, v11, v7}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    .line 130
    :cond_5
    if-eq v10, v5, :cond_6

    .line 131
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v10}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 132
    :cond_6
    if-eqz v9, :cond_a

    .line 133
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->in:Ljava/io/InputStream;

    check-cast v3, Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v8}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_2

    .line 141
    .end local v9    # "twoCRs":Z
    .end local v10    # "c2":I
    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_9

    .line 142
    array-length v3, v0

    sget v5, Lcom/sun/mail/util/LineInputStream;->MAX_INCR:I

    if-ge v3, v5, :cond_8

    .line 143
    array-length v3, v0

    mul-int/2addr v3, v7

    new-array v0, v3, [B

    goto :goto_1

    .line 145
    :cond_8
    array-length v3, v0

    add-int/2addr v3, v5

    new-array v0, v3, [B

    .line 146
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 147
    .end local v1    # "room":I
    .local v3, "room":I
    iget-object v1, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[B

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iput-object v0, p0, Lcom/sun/mail/util/LineInputStream;->lineBuffer:[B

    move v1, v3

    .line 150
    .end local v3    # "room":I
    .restart local v1    # "room":I
    :cond_9
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    int-to-byte v5, v4

    aput-byte v5, v0, v2

    move v2, v3

    goto/16 :goto_0

    .line 153
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_a
    :goto_2
    if-ne v4, v5, :cond_b

    if-nez v2, :cond_b

    .line 154
    const/4 v3, 0x0

    return-object v3

    .line 156
    :cond_b
    iget-boolean v3, p0, Lcom/sun/mail/util/LineInputStream;->allowutf8:Z

    if-eqz v3, :cond_c

    .line 157
    new-instance v3, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v3

    .line 159
    :cond_c
    sget-boolean v3, Lcom/sun/mail/util/LineInputStream;->defaultutf8:Z

    if-eqz v3, :cond_d

    .line 162
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/util/LineInputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-static {v0, v6, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-object v3

    .line 164
    :catch_0
    move-exception v3

    .line 169
    :cond_d
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v6, v6, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v3
.end method
