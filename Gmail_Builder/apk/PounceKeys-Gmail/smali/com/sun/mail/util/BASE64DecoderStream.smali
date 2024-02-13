.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private ignoreErrors:Z

.field private index:I

.field private input_buffer:[B

.field private input_len:I

.field private input_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 187
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    .line 198
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 202
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 204
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    .end local v0    # "i":I
    :cond_1
    return-void

    nop

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
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 35
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 39
    const/16 v1, 0x1ffe

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 40
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 41
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 43
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 56
    const-string v1, "mail.mime.base64.ignoreerrors"

    invoke-static {v1, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "ignoreErrors"    # Z

    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 35
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 39
    const/16 v1, 0x1ffe

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 40
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 41
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 43
    iput-boolean v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 68
    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    .line 69
    return-void
.end method

.method private decode([BII)I
    .locals 11
    .param p1, "outbuf"    # [B
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    move v0, p2

    .line 223
    .local v0, "pos0":I
    :goto_0
    const/4 v1, 0x3

    if-lt p3, v1, :cond_10

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "got":I
    const/4 v2, 0x0

    .line 231
    .local v2, "val":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_f

    .line 232
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v4

    .line 233
    .local v4, "i":I
    const/4 v5, -0x2

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 310
    :cond_0
    shl-int/lit8 v2, v2, 0x6

    .line 311
    add-int/lit8 v1, v1, 0x1

    .line 312
    or-int/2addr v2, v4

    .line 314
    .end local v4    # "i":I
    goto :goto_1

    .line 235
    .restart local v4    # "i":I
    :cond_1
    :goto_2
    const/4 v7, 0x2

    if-ne v4, v6, :cond_4

    .line 236
    if-nez v1, :cond_2

    .line 237
    sub-int v3, p2, v0

    return v3

    .line 238
    :cond_2
    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v8, :cond_3

    .line 244
    const/4 v8, 0x1

    .local v8, "atEOF":Z
    goto :goto_4

    .line 239
    .end local v8    # "atEOF":Z
    :cond_3
    new-instance v3, Lcom/sun/mail/util/DecodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BASE64Decoder: Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " before EOF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 243
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    :cond_4
    if-ge v1, v7, :cond_6

    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v8, :cond_5

    goto :goto_3

    .line 249
    :cond_5
    new-instance v3, Lcom/sun/mail/util/DecodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BASE64Decoder: Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " before padding character (=)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 258
    sub-int v3, p2, v0

    return v3

    .line 259
    :cond_7
    const/4 v8, 0x0

    .line 266
    .restart local v8    # "atEOF":Z
    :goto_4
    add-int/lit8 v9, v1, -0x1

    .line 267
    .local v9, "size":I
    if-nez v9, :cond_8

    .line 268
    const/4 v9, 0x1

    .line 271
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 272
    shl-int/lit8 v2, v2, 0x6

    .line 274
    :goto_5
    if-ge v1, v3, :cond_d

    .line 275
    if-nez v8, :cond_c

    .line 278
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v4

    .line 279
    if-ne v4, v6, :cond_a

    .line 280
    iget-boolean v10, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v10, :cond_9

    goto :goto_6

    .line 281
    :cond_9
    new-instance v3, Lcom/sun/mail/util/DecodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BASE64Decoder: Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 285
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :cond_a
    if-eq v4, v5, :cond_c

    .line 287
    iget-boolean v10, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v10, :cond_b

    goto :goto_6

    .line 288
    :cond_b
    new-instance v3, Lcom/sun/mail/util/DecodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BASE64Decoder: Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    :cond_c
    :goto_6
    shl-int/lit8 v2, v2, 0x6

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 300
    :cond_d
    shr-int/lit8 v2, v2, 0x8

    .line 301
    if-ne v9, v7, :cond_e

    .line 302
    add-int/lit8 v3, p2, 0x1

    and-int/lit16 v5, v2, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 303
    :cond_e
    shr-int/lit8 v2, v2, 0x8

    .line 304
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 306
    add-int/2addr p2, v9

    .line 307
    sub-int v3, p2, v0

    return v3

    .line 317
    .end local v4    # "i":I
    .end local v8    # "atEOF":Z
    .end local v9    # "size":I
    :cond_f
    add-int/lit8 v3, p2, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 318
    shr-int/lit8 v2, v2, 0x8

    .line 319
    add-int/lit8 v3, p2, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 320
    shr-int/lit8 v2, v2, 0x8

    .line 321
    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 322
    add-int/lit8 p3, p3, -0x3

    .line 323
    nop

    .end local v1    # "got":I
    .end local v2    # "val":I
    add-int/lit8 p2, p2, 0x3

    .line 324
    goto/16 :goto_0

    .line 325
    :cond_10
    sub-int v1, p2, v0

    return v1
.end method

.method public static decode([B)[B
    .locals 11
    .param p0, "inbuf"    # [B

    .line 403
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 404
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 405
    return-object p0

    .line 407
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p0, v1

    const/4 v3, 0x2

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_1

    .line 408
    add-int/lit8 v0, v0, -0x1

    .line 409
    array-length v1, p0

    sub-int/2addr v1, v3

    aget-byte v1, p0, v1

    if-ne v1, v4, :cond_1

    .line 410
    add-int/lit8 v0, v0, -0x1

    .line 412
    :cond_1
    new-array v1, v0, [B

    .line 414
    .local v1, "outbuf":[B
    const/4 v5, 0x0

    .local v5, "inpos":I
    const/4 v6, 0x0

    .line 415
    .local v6, "outpos":I
    array-length v0, p0

    .line 416
    :goto_0
    if-lez v0, :cond_6

    .line 418
    const/4 v7, 0x3

    .line 419
    .local v7, "osize":I
    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "inpos":I
    .local v9, "inpos":I
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v5, v8, v5

    .line 420
    .local v5, "val":I
    shl-int/lit8 v5, v5, 0x6

    .line 421
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "inpos":I
    .local v10, "inpos":I
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v8, v9

    or-int/2addr v5, v9

    .line 422
    shl-int/lit8 v5, v5, 0x6

    .line 423
    aget-byte v9, p0, v10

    if-eq v9, v4, :cond_2

    .line 424
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "inpos":I
    .restart local v9    # "inpos":I
    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    or-int/2addr v5, v10

    move v10, v9

    goto :goto_1

    .line 426
    .end local v9    # "inpos":I
    .restart local v10    # "inpos":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 427
    :goto_1
    shl-int/lit8 v5, v5, 0x6

    .line 428
    aget-byte v9, p0, v10

    if-eq v9, v4, :cond_3

    .line 429
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "inpos":I
    .restart local v9    # "inpos":I
    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    aget-byte v8, v8, v10

    or-int/2addr v5, v8

    goto :goto_2

    .line 431
    .end local v9    # "inpos":I
    .restart local v10    # "inpos":I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    move v9, v10

    .line 432
    .end local v10    # "inpos":I
    .restart local v9    # "inpos":I
    :goto_2
    if-le v7, v3, :cond_4

    .line 433
    add-int/lit8 v8, v6, 0x2

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 434
    :cond_4
    shr-int/lit8 v5, v5, 0x8

    .line 435
    if-le v7, v2, :cond_5

    .line 436
    add-int/lit8 v8, v6, 0x1

    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v1, v8

    .line 437
    :cond_5
    shr-int/lit8 v5, v5, 0x8

    .line 438
    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    .line 439
    add-int/2addr v6, v7

    .line 440
    nop

    .end local v5    # "val":I
    .end local v7    # "osize":I
    add-int/lit8 v0, v0, -0x4

    .line 441
    move v5, v9

    goto :goto_0

    .line 442
    .end local v9    # "inpos":I
    .local v5, "inpos":I
    :cond_6
    return-object v1
.end method

.method private getByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    nop

    :cond_0
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_2

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    nop

    .line 345
    if-gtz v0, :cond_1

    .line 346
    return v2

    .line 347
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "ex":Ljava/io/EOFException;
    return v2

    .line 350
    .end local v0    # "ex":Ljava/io/EOFException;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 352
    .local v0, "c":I
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_3

    .line 353
    const/4 v1, -0x2

    return v1

    .line 355
    :cond_3
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-byte v0, v1, v0

    .line 357
    if-eq v0, v2, :cond_0

    .line 358
    return v0
.end method

.method private recentChars()Ljava/lang/String;
    .locals 6

    .line 367
    const-string v0, ""

    .line 368
    .local v0, "errstr":Ljava/lang/String;
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const/16 v1, 0xa

    .line 369
    .local v1, "nc":I
    :cond_0
    if-lez v1, :cond_3

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " most recent characters were: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    sub-int/2addr v2, v1

    .local v2, "k":I
    :goto_0
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-ge v2, v3, :cond_2

    .line 373
    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 374
    .local v3, "c":C
    packed-switch v3, :pswitch_data_0

    .line 379
    :pswitch_0
    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 375
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 376
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 377
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 382
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "k":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 88
    if-gtz v0, :cond_0

    .line 89
    const/4 v0, -0x1

    return v0

    .line 90
    :cond_0
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 112
    return v0

    .line 114
    :cond_0
    move v1, p2

    .line 115
    .local v1, "off0":I
    :goto_0
    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-ge v2, v3, :cond_1

    if-lez p3, :cond_1

    .line 116
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    iget-object v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v2, v4, v2

    aput-byte v2, p1, p2

    .line 117
    add-int/lit8 p3, p3, -0x1

    move p2, v3

    goto :goto_0

    .line 119
    .end local v3    # "off":I
    .restart local p2    # "off":I
    :cond_1
    if-lt v2, v3, :cond_2

    .line 120
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 122
    :cond_2
    div-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x3

    .line 123
    .local v0, "bsize":I
    const/4 v2, -0x1

    if-lez v0, :cond_4

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v3

    .line 125
    .local v3, "size":I
    add-int/2addr p2, v3

    .line 126
    sub-int/2addr p3, v3

    .line 128
    if-eq v3, v0, :cond_4

    .line 129
    if-ne p2, v1, :cond_3

    .line 130
    return v2

    .line 132
    :cond_3
    sub-int v2, p2, v1

    return v2

    .line 137
    .end local v3    # "size":I
    :cond_4
    :goto_1
    if-lez p3, :cond_6

    .line 138
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v3

    .line 139
    .local v3, "c":I
    if-ne v3, v2, :cond_5

    .line 140
    goto :goto_2

    .line 141
    :cond_5
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "off":I
    .local v4, "off":I
    int-to-byte v5, v3

    aput-byte v5, p1, p2

    .line 137
    .end local v3    # "c":I
    add-int/lit8 p3, p3, -0x1

    move p2, v4

    goto :goto_1

    .line 144
    .end local v4    # "off":I
    .restart local p2    # "off":I
    :cond_6
    :goto_2
    if-ne p2, v1, :cond_7

    .line 145
    return v2

    .line 147
    :cond_7
    sub-int v2, p2, v1

    return v2
.end method

.method public skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const-wide/16 v0, 0x0

    .line 156
    .local v0, "skipped":J
    :goto_0
    const-wide/16 v2, 0x1

    sub-long v4, p1, v2

    .end local p1    # "n":J
    .local v4, "n":J
    const-wide/16 v6, 0x0

    cmp-long v8, p1, v6

    if-lez v8, :cond_0

    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    .line 157
    add-long/2addr v0, v2

    move-wide p1, v4

    goto :goto_0

    .line 158
    :cond_0
    return-wide v0
.end method
