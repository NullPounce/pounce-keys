.class public Lcom/sun/mail/util/UUEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "UUEncoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private mode:I

.field private name:Ljava/lang/String;

.field private wrotePrefix:Z

.field private wroteSuffix:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 44
    const-string v0, "encoder.buf"

    const/16 v1, 0x1a4

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;

    .line 53
    const/16 v0, 0x1a4

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 33
    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 34
    iput-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wroteSuffix:Z

    .line 64
    iput-object p2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 66
    const/16 v0, 0x2d

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    .line 67
    return-void
.end method

.method private encode()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 165
    .local v0, "i":I
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    iget v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 167
    :goto_0
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-ge v0, v1, :cond_2

    .line 168
    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-byte v0, v2, v0

    .line 169
    .local v0, "a":B
    if-ge v3, v1, :cond_1

    .line 170
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v3, v2, v3

    .line 171
    .local v3, "b":B
    if-ge v4, v1, :cond_0

    .line 172
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "i":I
    .local v1, "i":I
    aget-byte v2, v2, v4

    .local v2, "c":B
    goto :goto_1

    .line 174
    .end local v1    # "i":I
    .end local v2    # "c":B
    .restart local v4    # "i":I
    :cond_0
    const/4 v2, 0x1

    move v1, v4

    .restart local v2    # "c":B
    goto :goto_1

    .line 177
    .end local v2    # "c":B
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_1
    const/4 v1, 0x1

    .line 178
    .local v1, "b":B
    const/4 v2, 0x1

    move v10, v3

    move v3, v1

    move v1, v10

    .line 181
    .local v1, "i":I
    .restart local v2    # "c":B
    .local v3, "b":B
    :goto_1
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 182
    .local v4, "c1":I
    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    .line 183
    .local v5, "c2":I
    shl-int/lit8 v6, v3, 0x2

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v7, v2, 0x6

    and-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    .line 184
    .local v6, "c3":I
    and-int/lit8 v7, v2, 0x3f

    .line 185
    .local v7, "c4":I
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v4, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 186
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v5, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 187
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v6, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    .line 188
    iget-object v8, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    add-int/lit8 v9, v7, 0x20

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    move v0, v1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    .end local v2    # "c":B
    .end local v3    # "b":B
    .end local v4    # "c1":I
    .end local v5    # "c2":I
    .end local v6    # "c3":I
    .end local v7    # "c4":I
    .local v0, "i":I
    :cond_2
    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 192
    return-void
.end method

.method private writePrefix()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 131
    .local v0, "ps":Ljava/io/PrintStream;
    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "begin %o %s%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 132
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/util/UUEncoderStream;->wrotePrefix:Z

    .line 135
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method

.method private writeSuffix()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/sun/mail/util/UUEncoderStream;->wroteSuffix:Z

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const-string/jumbo v3, "us-ascii"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 144
    .local v0, "ps":Ljava/io/PrintStream;
    const-string v1, " \nend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/util/UUEncoderStream;->wroteSuffix:Z

    .line 148
    .end local v0    # "ps":Ljava/io/PrintStream;
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/sun/mail/util/UUEncoderStream;->flush()V

    .line 121
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 122
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    if-lez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 111
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writeSuffix()V

    .line 115
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 116
    return-void
.end method

.method public setNameMode(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 78
    iput-object p1, p0, Lcom/sun/mail/util/UUEncoderStream;->name:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/sun/mail/util/UUEncoderStream;->mode:I

    .line 80
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sun/mail/util/UUEncoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    .line 100
    const/16 v0, 0x2d

    if-ne v2, v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->writePrefix()V

    .line 102
    invoke-direct {p0}, Lcom/sun/mail/util/UUEncoderStream;->encode()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/UUEncoderStream;->bufsize:I

    .line 105
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write([BII)V

    .line 91
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 85
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/UUEncoderStream;->write(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
