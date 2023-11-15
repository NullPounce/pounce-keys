.class public Lcom/sun/mail/iap/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static ASTRING_CHAR_DELIM:Ljava/lang/String; = null

.field private static ATOM_CHAR_DELIM:Ljava/lang/String; = null

.field public static final BAD:I = 0xc

.field public static final BYE:I = 0x10

.field public static final CONTINUATION:I = 0x1

.field public static final NO:I = 0x8

.field public static final OK:I = 0x4

.field public static final SYNTHETIC:I = 0x20

.field public static final TAGGED:I = 0x2

.field public static final TAG_MASK:I = 0x3

.field public static final TYPE_MASK:I = 0x1c

.field public static final UNTAGGED:I = 0x3

.field private static final increment:I = 0x64


# instance fields
.field protected buffer:[B

.field protected ex:Ljava/lang/Exception;

.field protected index:I

.field protected pindex:I

.field protected size:I

.field protected tag:Ljava/lang/String;

.field protected type:I

.field protected utf8:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-string v0, " (){%*\"\\]"

    sput-object v0, Lcom/sun/mail/iap/Response;->ATOM_CHAR_DELIM:Ljava/lang/String;

    .line 76
    const-string v0, " (){%*\"\\"

    sput-object v0, Lcom/sun/mail/iap/Response;->ASTRING_CHAR_DELIM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 3
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 39
    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getResponseBuffer()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 109
    .local v0, "ba":Lcom/sun/mail/iap/ByteArray;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getInputStream()Lcom/sun/mail/iap/ResponseInputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    .line 110
    .local v1, "response":Lcom/sun/mail/iap/ByteArray;
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 111
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 112
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsUtf8()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sun/mail/iap/Response;->utf8:Z

    .line 114
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 39
    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 123
    iget v0, p1, Lcom/sun/mail/iap/Response;->index:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 124
    iget v0, p1, Lcom/sun/mail/iap/Response;->pindex:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    .line 125
    iget v0, p1, Lcom/sun/mail/iap/Response;->size:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 126
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->buffer:[B

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 127
    iget v0, p1, Lcom/sun/mail/iap/Response;->type:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 128
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lcom/sun/mail/iap/Response;->ex:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->ex:Ljava/lang/Exception;

    .line 130
    iget-boolean v0, p1, Lcom/sun/mail/iap/Response;->utf8:Z

    iput-boolean v0, p0, Lcom/sun/mail/iap/Response;->utf8:Z

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "supportsUtf8"    # Z

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 39
    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 90
    if-eqz p2, :cond_0

    .line 91
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    goto :goto_0

    .line 93
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/sun/mail/iap/Response;->size:I

    .line 95
    iput-boolean p2, p0, Lcom/sun/mail/iap/Response;->utf8:Z

    .line 96
    invoke-direct {p0}, Lcom/sun/mail/iap/Response;->parse()V

    .line 97
    return-void
.end method

.method public static byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    .locals 4
    .param p0, "ex"    # Ljava/lang/Exception;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "* BYE Jakarta Mail Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "err":Ljava/lang/String;
    const/16 v1, 0xd

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/sun/mail/iap/Response;

    invoke-direct {v1, v0}, Lcom/sun/mail/iap/Response;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, "r":Lcom/sun/mail/iap/Response;
    iget v3, v1, Lcom/sun/mail/iap/Response;->type:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/sun/mail/iap/Response;->type:I

    .line 145
    iput-object p0, v1, Lcom/sun/mail/iap/Response;->ex:Ljava/lang/Exception;

    .line 146
    return-object v1
.end method

.method private parse()V
    .locals 3

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 162
    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-nez v1, :cond_0

    .line 163
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 165
    iget v1, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 166
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 167
    return-void

    .line 168
    :cond_1
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_2

    .line 169
    iget v1, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 170
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 172
    :cond_2
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/mail/iap/Response;->type:I

    .line 173
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 174
    if-nez v0, :cond_3

    .line 175
    const-string v0, ""

    iput-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    .line 178
    :cond_3
    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 179
    .local v0, "mark":I
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 181
    const-string v1, ""

    .line 182
    :cond_4
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_1

    .line 184
    :cond_5
    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_1

    .line 186
    :cond_6
    const-string v2, "BAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 187
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_1

    .line 188
    :cond_7
    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 189
    iget v2, p0, Lcom/sun/mail/iap/Response;->type:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/sun/mail/iap/Response;->type:I

    goto :goto_1

    .line 191
    :cond_8
    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 193
    :goto_1
    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iput v2, p0, Lcom/sun/mail/iap/Response;->pindex:I

    .line 194
    return-void
.end method

.method private parseString(ZZ)Ljava/lang/Object;
    .locals 9
    .param p1, "parseAtoms"    # Z
    .param p2, "returnString"    # Z

    .line 449
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 451
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    .line 452
    .local v0, "b":B
    const/4 v2, 0x0

    const/16 v3, 0x22

    if-ne v0, v3, :cond_5

    .line 453
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 454
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 455
    .local v1, "start":I
    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 457
    .local v4, "copyto":I
    :goto_0
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v6, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v5, v6, :cond_2

    iget-object v7, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v8, v7, v5

    move v0, v8

    if-eq v8, v3, :cond_2

    .line 458
    const/16 v6, 0x5c

    if-ne v0, v6, :cond_0

    .line 459
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 460
    :cond_0
    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    if-eq v5, v4, :cond_1

    .line 463
    aget-byte v6, v7, v5

    aput-byte v6, v7, v4

    .line 465
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 466
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 468
    :cond_2
    if-lt v5, v6, :cond_3

    .line 472
    return-object v2

    .line 474
    :cond_3
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 476
    if-eqz p2, :cond_4

    .line 477
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {p0, v2, v1, v4}, Lcom/sun/mail/iap/Response;->toString([BII)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 479
    :cond_4
    new-instance v2, Lcom/sun/mail/iap/ByteArray;

    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    sub-int v5, v4, v1

    invoke-direct {v2, v3, v1, v5}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object v2

    .line 480
    .end local v1    # "start":I
    .end local v4    # "copyto":I
    :cond_5
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_8

    .line 481
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 483
    .restart local v1    # "start":I
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v4, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v5, v3, v4

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_6

    .line 484
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_1

    .line 486
    :cond_6
    const/4 v5, 0x0

    .line 488
    .local v5, "count":I
    :try_start_0
    invoke-static {v3, v1, v4}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v5    # "count":I
    .local v2, "count":I
    nop

    .line 494
    iget v3, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v3, v3, 0x3

    .line 495
    .end local v1    # "start":I
    .local v3, "start":I
    add-int v1, v3, v2

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 497
    if-eqz p2, :cond_7

    .line 498
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    add-int v4, v3, v2

    invoke-direct {p0, v1, v3, v4}, Lcom/sun/mail/iap/Response;->toString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 500
    :cond_7
    new-instance v1, Lcom/sun/mail/iap/ByteArray;

    iget-object v4, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {v1, v4, v3, v2}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object v1

    .line 489
    .end local v2    # "count":I
    .end local v3    # "start":I
    .restart local v1    # "start":I
    .restart local v5    # "count":I
    :catch_0
    move-exception v3

    .line 491
    .local v3, "nex":Ljava/lang/NumberFormatException;
    return-object v2

    .line 501
    .end local v1    # "start":I
    .end local v3    # "nex":Ljava/lang/NumberFormatException;
    .end local v5    # "count":I
    :cond_8
    if-eqz p1, :cond_a

    .line 502
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 504
    .restart local v1    # "start":I
    sget-object v2, Lcom/sun/mail/iap/Response;->ASTRING_CHAR_DELIM:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sun/mail/iap/Response;->readDelimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "s":Ljava/lang/String;
    if-eqz p2, :cond_9

    .line 506
    return-object v2

    .line 508
    :cond_9
    new-instance v3, Lcom/sun/mail/iap/ByteArray;

    iget-object v4, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v5, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-direct {v3, v4, v1, v5}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object v3

    .line 509
    .end local v1    # "start":I
    .end local v2    # "s":Ljava/lang/String;
    :cond_a
    const/16 v3, 0x4e

    if-eq v0, v3, :cond_c

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_b

    goto :goto_2

    .line 513
    :cond_b
    return-object v2

    .line 510
    :cond_c
    :goto_2
    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 511
    return-object v2
.end method

.method private readDelimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "delim"    # Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 267
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v0, v1, :cond_0

    .line 268
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 272
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    move v2, v1

    .local v2, "b":I
    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    int-to-char v1, v2

    .line 273
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    const/16 v1, 0x7f

    if-eq v2, v1, :cond_1

    .line 274
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 276
    .end local v2    # "b":I
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    invoke-direct {p0, v1, v0, v2}, Lcom/sun/mail/iap/Response;->toString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readStringList(Z)[Ljava/lang/String;
    .locals 3
    .param p1, "atom"    # Z

    .line 309
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 311
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v0, v1

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    .line 312
    const/4 v0, 0x0

    return-object v0

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 320
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "s":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_2

    .line 322
    goto :goto_2

    .line 323
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v1    # "s":Ljava/lang/String;
    goto :goto_0

    .line 326
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private toString([BII)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 517
    iget-boolean v0, p0, Lcom/sun/mail/iap/Response;->utf8:Z

    if-eqz v0, :cond_0

    .line 518
    new-instance v0, Ljava/lang/String;

    sub-int v1, p3, p2

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_0

    .line 519
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public getRest()Ljava/lang/String;
    .locals 3

    .line 574
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 575
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/iap/Response;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 523
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    return v0
.end method

.method public isBAD()Z
    .locals 2

    .line 547
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBYE()Z
    .locals 2

    .line 551
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContinuation()Z
    .locals 2

    .line 527
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNO()Z
    .locals 2

    .line 543
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNextNonSpace(C)Z
    .locals 3
    .param p1, "c"    # C

    .line 211
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 212
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v1, v1, v0

    int-to-byte v2, p1

    if-ne v1, v2, :cond_0

    .line 213
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 214
    return v1

    .line 216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOK()Z
    .locals 2

    .line 539
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x1c

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSynthetic()Z
    .locals 2

    .line 555
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTagged()Z
    .locals 2

    .line 531
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnTagged()Z
    .locals 2

    .line 535
    iget v0, p0, Lcom/sun/mail/iap/Response;->type:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekByte()B
    .locals 2

    .line 232
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v0, v1, v0

    return v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readAtom()Ljava/lang/String;
    .locals 1

    .line 257
    sget-object v0, Lcom/sun/mail/iap/Response;->ATOM_CHAR_DELIM:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/Response;->readDelimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readAtomString()Ljava/lang/String;
    .locals 1

    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readAtomStringList()[Ljava/lang/String;
    .locals 1

    .line 305
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/Response;->readStringList(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 3

    .line 244
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sun/mail/iap/Response;->index:I

    aget-byte v0, v1, v0

    return v0

    .line 247
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 4

    .line 418
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 420
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    iget v2, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v3, p0, Lcom/sun/mail/iap/Response;->size:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    return-object v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public readBytes()Ljava/io/ByteArrayInputStream;
    .locals 2

    .line 398
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    .line 399
    .local v0, "ba":Lcom/sun/mail/iap/ByteArray;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v1

    return-object v1

    .line 402
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readLong()J
    .locals 3

    .line 362
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 364
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 365
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v1, v2, v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 368
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_1

    .line 370
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {v2, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BII)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 371
    :catch_0
    move-exception v1

    .line 374
    :cond_1
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public readNumber()I
    .locals 3

    .line 338
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 340
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 341
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v1, v2, v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 344
    :cond_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    if-le v1, v0, :cond_1

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-static {v2, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 347
    :catch_0
    move-exception v1

    .line 350
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .line 386
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/iap/Response;->parseString(ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readString(C)Ljava/lang/String;
    .locals 3
    .param p1, "delim"    # C

    .line 288
    invoke-virtual {p0}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 290
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-lt v0, v1, :cond_0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 293
    :cond_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 294
    .local v0, "start":I
    :goto_0
    iget v1, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v2, v2, v1

    if-eq v2, p1, :cond_1

    .line 295
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/mail/iap/Response;->toString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readStringList()[Ljava/lang/String;
    .locals 1

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/Response;->readStringList(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 592
    iget v0, p0, Lcom/sun/mail/iap/Response;->pindex:I

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 593
    return-void
.end method

.method public skip(I)V
    .locals 1
    .param p1, "count"    # I

    .line 228
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    .line 229
    return-void
.end method

.method public skipSpaces()V
    .locals 3

    .line 198
    nop

    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public skipToken()V
    .locals 3

    .line 223
    nop

    :goto_0
    iget v0, p0, Lcom/sun/mail/iap/Response;->index:I

    iget v1, p0, Lcom/sun/mail/iap/Response;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 224
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/iap/Response;->index:I

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public supportsUtf8()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/sun/mail/iap/Response;->utf8:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/sun/mail/iap/Response;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/mail/iap/Response;->size:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/mail/iap/Response;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
