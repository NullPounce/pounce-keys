.class public Lcom/sun/mail/iap/Argument;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    .line 39
    return-void
.end method

.method private astring([BLcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/iap/Argument;->nastring([BLcom/sun/mail/iap/Protocol;Z)V

    .line 275
    return-void
.end method

.method private literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 376
    invoke-interface {p1}, Lcom/sun/mail/iap/Literal;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sun/mail/iap/Literal;->writeTo(Ljava/io/OutputStream;)V

    .line 377
    return-void
.end method

.method private literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 368
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 369
    return-void
.end method

.method private literal([BLcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 360
    array-length v0, p1

    invoke-direct {p0, p2, v0}, Lcom/sun/mail/iap/Argument;->startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 361
    return-void
.end method

.method private nastring([BLcom/sun/mail/iap/Protocol;Z)V
    .locals 14
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .param p3, "doQuote"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 291
    move-object v0, p1

    invoke-virtual/range {p2 .. p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 292
    .local v1, "os":Ljava/io/DataOutputStream;
    array-length v2, v0

    .line 295
    .local v2, "len":I
    const/16 v3, 0x400

    if-le v2, v3, :cond_0

    .line 296
    invoke-direct/range {p0 .. p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    .line 297
    return-void

    .line 301
    :cond_0
    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move/from16 v4, p3

    .line 302
    .local v4, "quote":Z
    :goto_0
    const/4 v5, 0x0

    .line 303
    .local v5, "escape":Z
    invoke-virtual/range {p2 .. p2}, Lcom/sun/mail/iap/Protocol;->supportsUtf8()Z

    move-result v6

    .line 306
    .local v6, "utf8":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v8, 0x5c

    const/16 v9, 0x22

    if-ge v7, v2, :cond_7

    .line 307
    aget-byte v10, v0, v7

    .line 308
    .local v10, "b":B
    if-eqz v10, :cond_6

    const/16 v11, 0xd

    if-eq v10, v11, :cond_6

    const/16 v11, 0xa

    if-eq v10, v11, :cond_6

    const/16 v11, 0x7f

    if-nez v6, :cond_2

    and-int/lit16 v12, v10, 0xff

    if-le v12, v11, :cond_2

    goto :goto_2

    .line 314
    :cond_2
    const/16 v12, 0x2a

    if-eq v10, v12, :cond_3

    const/16 v12, 0x25

    if-eq v10, v12, :cond_3

    const/16 v12, 0x28

    if-eq v10, v12, :cond_3

    const/16 v12, 0x29

    if-eq v10, v12, :cond_3

    const/16 v12, 0x7b

    if-eq v10, v12, :cond_3

    if-eq v10, v9, :cond_3

    if-eq v10, v8, :cond_3

    and-int/lit16 v12, v10, 0xff

    const/16 v13, 0x20

    if-le v12, v13, :cond_3

    and-int/lit16 v12, v10, 0xff

    if-le v12, v11, :cond_5

    .line 317
    :cond_3
    const/4 v4, 0x1

    .line 318
    if-eq v10, v9, :cond_4

    if-ne v10, v8, :cond_5

    .line 319
    :cond_4
    const/4 v5, 0x1

    .line 306
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 311
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p2}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    .line 312
    return-void

    .line 330
    .end local v7    # "i":I
    .end local v10    # "b":B
    :cond_7
    if-nez v4, :cond_b

    array-length v7, v0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_b

    const/4 v7, 0x0

    aget-byte v10, v0, v7

    const/16 v11, 0x4e

    if-eq v10, v11, :cond_8

    aget-byte v7, v0, v7

    const/16 v10, 0x6e

    if-ne v7, v10, :cond_b

    :cond_8
    aget-byte v7, v0, v3

    const/16 v10, 0x49

    if-eq v7, v10, :cond_9

    aget-byte v3, v0, v3

    const/16 v7, 0x69

    if-ne v3, v7, :cond_b

    :cond_9
    const/4 v3, 0x2

    aget-byte v7, v0, v3

    const/16 v10, 0x4c

    if-eq v7, v10, :cond_a

    aget-byte v3, v0, v3

    const/16 v7, 0x6c

    if-ne v3, v7, :cond_b

    .line 334
    :cond_a
    const/4 v4, 0x1

    .line 336
    :cond_b
    if-eqz v4, :cond_c

    .line 337
    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 339
    :cond_c
    if-eqz v5, :cond_10

    .line 341
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_f

    .line 342
    aget-byte v7, v0, v3

    .line 343
    .local v7, "b":B
    if-eq v7, v9, :cond_d

    if-ne v7, v8, :cond_e

    .line 344
    :cond_d
    invoke-virtual {v1, v8}, Ljava/io/DataOutputStream;->write(I)V

    .line 345
    :cond_e
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .end local v7    # "b":B
    :cond_f
    goto :goto_4

    .line 348
    :cond_10
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 351
    :goto_4
    if-eqz v4, :cond_11

    .line 352
    invoke-virtual {v1, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 353
    :cond_11
    return-void
.end method

.method private nstring([BLcom/sun/mail/iap/Protocol;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 282
    if-nez p1, :cond_0

    .line 283
    invoke-virtual {p2}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 284
    .local v0, "os":Ljava/io/DataOutputStream;
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 285
    .end local v0    # "os":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 286
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/iap/Argument;->nastring([BLcom/sun/mail/iap/Protocol;Z)V

    .line 287
    :goto_0
    return-void
.end method

.method private startLiteral(Lcom/sun/mail/iap/Protocol;I)Ljava/io/OutputStream;
    .locals 4
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    .line 382
    .local v0, "os":Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->supportsNonSyncLiterals()Z

    move-result v1

    .line 384
    .local v1, "nonSync":Z
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 386
    if-eqz v1, :cond_0

    .line 387
    const-string v2, "+}\r\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_0
    const-string/jumbo v2, "}\r\n"

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 390
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 394
    if-nez v1, :cond_3

    .line 396
    :goto_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 397
    .local v2, "r":Lcom/sun/mail/iap/Response;
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    goto :goto_2

    .line 399
    :cond_1
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v3

    if-nez v3, :cond_2

    .line 403
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    goto :goto_1

    .line 400
    .restart local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_2
    new-instance v3, Lcom/sun/mail/iap/LiteralException;

    invoke-direct {v3, v2}, Lcom/sun/mail/iap/LiteralException;-><init>(Lcom/sun/mail/iap/Response;)V

    throw v3

    .line 405
    .end local v2    # "r":Lcom/sun/mail/iap/Response;
    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public append(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "arg"    # Lcom/sun/mail/iap/Argument;

    .line 50
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    iget-object v1, p1, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    return-object p0
.end method

.method public write(Lcom/sun/mail/iap/Protocol;)V
    .locals 5
    .param p1, "protocol"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "size":I
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Protocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/DataOutputStream;

    .line 242
    .local v1, "os":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_a

    .line 243
    if-lez v2, :cond_1

    .line 244
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 246
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 247
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lcom/sun/mail/iap/Atom;

    if-eqz v4, :cond_2

    .line 248
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/Atom;

    iget-object v4, v4, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 249
    :cond_2
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_3

    .line 250
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_3
    instance-of v4, v3, Lcom/sun/mail/iap/AString;

    if-eqz v4, :cond_4

    .line 252
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/AString;

    iget-object v4, v4, Lcom/sun/mail/iap/AString;->bytes:[B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->astring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 253
    :cond_4
    instance-of v4, v3, Lcom/sun/mail/iap/NString;

    if-eqz v4, :cond_5

    .line 254
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/NString;

    iget-object v4, v4, Lcom/sun/mail/iap/NString;->bytes:[B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->nstring([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 255
    :cond_5
    instance-of v4, v3, [B

    if-eqz v4, :cond_6

    .line 256
    move-object v4, v3

    check-cast v4, [B

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->literal([BLcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 257
    :cond_6
    instance-of v4, v3, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_7

    .line 258
    move-object v4, v3

    check-cast v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->literal(Ljava/io/ByteArrayOutputStream;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 259
    :cond_7
    instance-of v4, v3, Lcom/sun/mail/iap/Literal;

    if-eqz v4, :cond_8

    .line 260
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/Literal;

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/iap/Argument;->literal(Lcom/sun/mail/iap/Literal;Lcom/sun/mail/iap/Protocol;)V

    goto :goto_2

    .line 261
    :cond_8
    instance-of v4, v3, Lcom/sun/mail/iap/Argument;

    if-eqz v4, :cond_9

    .line 262
    const/16 v4, 0x28

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 263
    move-object v4, v3

    check-cast v4, Lcom/sun/mail/iap/Argument;

    invoke-virtual {v4, p1}, Lcom/sun/mail/iap/Argument;->write(Lcom/sun/mail/iap/Protocol;)V

    .line 264
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 242
    .end local v3    # "o":Ljava/lang/Object;
    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 267
    .end local v2    # "i":I
    :cond_a
    return-void
.end method

.method public writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "c"    # Lcom/sun/mail/iap/Argument;

    .line 230
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    return-object p0
.end method

.method public writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/Atom;

    invoke-direct {v1, p1}, Lcom/sun/mail/iap/Atom;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object p0
.end method

.method public writeBytes(Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "b"    # Lcom/sun/mail/iap/Literal;

    .line 187
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object p0
.end method

.method public writeBytes(Ljava/io/ByteArrayOutputStream;)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "b"    # Ljava/io/ByteArrayOutputStream;

    .line 177
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-object p0
.end method

.method public writeBytes([B)Lcom/sun/mail/iap/Argument;
    .locals 1
    .param p1, "b"    # [B

    .line 167
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-object p0
.end method

.method public writeNString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 114
    if-nez p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    return-object p0
.end method

.method public writeNString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 133
    if-nez p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    if-nez p2, :cond_1

    .line 136
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_0
    return-object p0
.end method

.method public writeNString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 152
    if-nez p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    if-nez p2, :cond_1

    .line 155
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/NString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/NString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_0
    return-object p0
.end method

.method public writeNumber(I)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "i"    # I

    .line 209
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-object p0
.end method

.method public writeNumber(J)Lcom/sun/mail/iap/Argument;
    .locals 2
    .param p1, "i"    # J

    .line 219
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-object p0
.end method

.method public writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 80
    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
    return-object p0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/sun/mail/iap/Argument;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 97
    if-nez p2, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/iap/Argument;->items:Ljava/util/List;

    new-instance v1, Lcom/sun/mail/iap/AString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/AString;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    return-object p0
.end method
