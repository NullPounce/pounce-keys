.class public Lcom/sun/mail/util/QPEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "QPEncoderStream.java"


# static fields
.field private static final hex:[C


# instance fields
.field private bytesPerLine:I

.field private count:I

.field private gotCR:Z

.field private gotSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    return-void

    :array_0
    .array-data 2
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 56
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "bytesPerLine"    # I

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 33
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 34
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 47
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    .line 48
    return-void
.end method

.method private outputCRLF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 153
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 155
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

    .line 147
    invoke-virtual {p0}, Lcom/sun/mail/util/QPEncoderStream;->flush()V

    .line 148
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 149
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    if-eqz v0, :cond_0

    .line 133
    const/16 v0, 0x20

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 137
    return-void
.end method

.method protected output(IZ)V
    .locals 6
    .param p1, "c"    # I
    .param p2, "encode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    const/16 v0, 0xa

    const/16 v1, 0xd

    const/16 v2, 0x3d

    if-eqz p2, :cond_1

    .line 165
    iget v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v4, 0x3

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v5, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v3, v5, :cond_0

    .line 166
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 167
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write(I)V

    .line 168
    iget-object v1, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 169
    iput v4, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 172
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 173
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 175
    :cond_1
    iget v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v5, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v3, v5, :cond_2

    .line 176
    iget-object v3, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write(I)V

    .line 177
    iget-object v2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 178
    iget-object v1, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 179
    iput v4, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 183
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    and-int/lit16 p1, p1, 0xff

    .line 93
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 94
    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 99
    :goto_1
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 102
    :cond_2
    if-ne p1, v2, :cond_3

    .line 103
    iput-boolean v5, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 104
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_4

    .line 106
    :cond_3
    if-ne p1, v1, :cond_5

    .line 107
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    if-eqz v0, :cond_4

    .line 110
    goto :goto_3

    .line 112
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_3

    .line 113
    :cond_5
    if-ne p1, v4, :cond_6

    .line 114
    iput-boolean v5, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    goto :goto_3

    .line 115
    :cond_6
    if-lt p1, v4, :cond_8

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_8

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 119
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_3

    .line 117
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v5}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 121
    :goto_3
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 123
    :goto_4
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V

    .line 83
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

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 72
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
