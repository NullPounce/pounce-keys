.class public Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
.super Ljava/lang/Object;
.source "BASE64MailboxEncoder.java"


# static fields
.field private static final pem_array:[C


# instance fields
.field protected buffer:[B

.field protected bufsize:I

.field protected out:Ljava/io/Writer;

.field protected started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    return-void

    :array_0
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
        0x2cs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "what"    # Ljava/io/Writer;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 80
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    .line 144
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    .line 145
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "original"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "base64stream":Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 87
    .local v1, "origchars":[C
    array-length v2, v1

    .line 88
    .local v2, "length":I
    const/4 v3, 0x0

    .line 89
    .local v3, "changedString":Z
    new-instance v4, Ljava/io/CharArrayWriter;

    invoke-direct {v4, v2}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 92
    .local v4, "writer":Ljava/io/CharArrayWriter;
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 93
    aget-char v6, v1, v5

    .line 97
    .local v6, "current":C
    const/16 v7, 0x20

    if-lt v6, v7, :cond_2

    const/16 v7, 0x7e

    if-gt v6, v7, :cond_2

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    .line 102
    :cond_0
    const/16 v7, 0x26

    if-ne v6, v7, :cond_1

    .line 103
    const/4 v3, 0x1

    .line 104
    invoke-virtual {v4, v7}, Ljava/io/CharArrayWriter;->write(I)V

    .line 105
    const/16 v7, 0x2d

    invoke-virtual {v4, v7}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {v4, v6}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_1

    .line 116
    :cond_2
    if-nez v0, :cond_3

    .line 117
    new-instance v7, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;

    invoke-direct {v7, v4}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;-><init>(Ljava/io/Writer;)V

    move-object v0, v7

    .line 118
    const/4 v3, 0x1

    .line 121
    :cond_3
    invoke-virtual {v0, v6}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->write(I)V

    .line 92
    .end local v6    # "current":C
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    .end local v5    # "index":I
    :cond_4
    if-eqz v0, :cond_5

    .line 127
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    .line 130
    :cond_5
    if-eqz v3, :cond_6

    .line 131
    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 133
    :cond_6
    return-object p0
.end method


# virtual methods
.method protected encode()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v1

    .line 192
    .local v0, "a":B
    const/4 v1, 0x0

    .line 193
    .local v1, "b":B
    const/4 v2, 0x0

    .line 194
    .local v2, "c":B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    .line 195
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_0

    .line 197
    .end local v0    # "a":B
    .end local v1    # "b":B
    .end local v2    # "c":B
    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 198
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v0, v1

    .line 199
    .local v1, "a":B
    aget-byte v0, v0, v2

    .line 200
    .local v0, "b":B
    const/4 v2, 0x0

    .line 201
    .restart local v2    # "c":B
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v5, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(I)V

    .line 202
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0x30

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    aget-char v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(I)V

    .line 203
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v7, v2, 0x6

    and-int/2addr v3, v7

    add-int/2addr v6, v3

    aget-char v3, v5, v6

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0

    .line 206
    .end local v0    # "b":B
    .end local v1    # "a":B
    .end local v2    # "c":B
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v5, v0, v1

    .line 207
    .local v5, "a":B
    aget-byte v2, v0, v2

    .line 208
    .local v2, "b":B
    aget-byte v0, v0, v4

    .line 209
    .local v0, "c":B
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v7, v5, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(I)V

    .line 210
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0x30

    ushr-int/lit8 v8, v2, 0x4

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v7, v8

    aget-char v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(I)V

    .line 211
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0x3c

    ushr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v3

    add-int/2addr v7, v8

    aget-char v7, v6, v7

    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(I)V

    .line 212
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    and-int/lit8 v7, v0, 0x3f

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(I)V

    .line 215
    iget v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 216
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v3, v4, v3

    aput-byte v3, v4, v1

    .line 218
    :cond_2
    move v1, v2

    move v2, v0

    move v0, v5

    .end local v5    # "a":B
    .local v0, "a":B
    .local v1, "b":B
    .local v2, "c":B
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 172
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 174
    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 180
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 185
    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-nez v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 152
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 157
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 159
    const/4 v0, 0x3

    if-lt v1, v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 161
    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_1
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 166
    :goto_0
    return-void
.end method
