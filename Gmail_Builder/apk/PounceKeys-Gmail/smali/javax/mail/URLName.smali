.class public Ljavax/mail/URLName;
.super Ljava/lang/Object;
.source "URLName.java"


# static fields
.field static final caseDiff:I = 0x20

.field private static doEncode:Z

.field static dontNeedEncoding:Ljava/util/BitSet;


# instance fields
.field private file:Ljava/lang/String;

.field protected fullURL:Ljava/lang/String;

.field private hashCode:I

.field private host:Ljava/lang/String;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostAddressKnown:Z

.field private password:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    .line 103
    :try_start_0
    const-string v1, "mail.URLName.dontencode"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljavax/mail/URLName;->doEncode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 538
    :goto_1
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    .line 540
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 541
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 543
    :cond_1
    const/16 v0, 0x41

    :goto_3
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 544
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 546
    :cond_2
    const/16 v0, 0x30

    :goto_4
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 547
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 550
    :cond_3
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 551
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 552
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 553
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 554
    sget-object v1, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 555
    .end local v0    # "i":I
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Ljavax/mail/URLName;->port:I

    .line 94
    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 162
    invoke-virtual {p0, p1}, Ljavax/mail/URLName;->parseString(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 79
    const/4 v1, -0x1

    iput v1, p0, Ljavax/mail/URLName;->port:I

    .line 94
    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 131
    iput-object p1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 133
    iput p3, p0, Ljavax/mail/URLName;->port:I

    .line 135
    if-eqz p4, :cond_0

    const/16 v2, 0x23

    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v3, v2

    .local v3, "refStart":I
    if-eq v2, v1, :cond_0

    .line 136
    invoke-virtual {p4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 137
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    goto :goto_0

    .line 139
    .end local v3    # "refStart":I
    :cond_0
    iput-object p4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 142
    :goto_0
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_1

    invoke-static {p5}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p5

    :goto_1
    iput-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 143
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_2

    invoke-static {p6}, Ljavax/mail/URLName;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p6

    :goto_2
    iput-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 152
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private static _encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .line 576
    const/16 v0, 0xa

    .line 577
    .local v0, "maxBytesPerChar":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 578
    .local v1, "out":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 579
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 581
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 582
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 583
    .local v5, "c":I
    sget-object v6, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 584
    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 585
    const/16 v5, 0x2b

    .line 587
    :cond_0
    int-to-char v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 591
    :cond_1
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 592
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    nop

    .line 597
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 598
    .local v6, "ba":[B
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_4

    .line 599
    const/16 v8, 0x25

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    aget-byte v8, v6, v7

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 603
    .local v8, "ch":C
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 604
    add-int/lit8 v10, v8, -0x20

    int-to-char v8, v10

    .line 606
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    aget-byte v10, v6, v7

    and-int/lit8 v10, v10, 0xf

    invoke-static {v10, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 608
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 609
    add-int/lit8 v9, v8, -0x20

    int-to-char v8, v9

    .line 611
    :cond_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 613
    .end local v7    # "j":I
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_2

    .line 593
    .end local v6    # "ba":[B
    :catch_0
    move-exception v6

    .line 594
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 595
    nop

    .line 581
    .end local v5    # "c":I
    .end local v6    # "e":Ljava/io/IOException;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 651
    if-nez p0, :cond_0

    .line 652
    const/4 v0, 0x0

    return-object v0

    .line 653
    :cond_0
    const-string v0, "+%"

    invoke-static {p0, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 654
    return-object p0

    .line 656
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 658
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 659
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 675
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 661
    :sswitch_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    goto :goto_1

    .line 665
    :sswitch_1
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x3

    .line 666
    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 665
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    nop

    .line 672
    add-int/lit8 v1, v1, 0x2

    .line 673
    goto :goto_1

    .line 667
    :catch_0
    move-exception v3

    .line 668
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal URL encoded value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x3

    .line 670
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 657
    .end local v2    # "c":C
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    const-string v2, "8859_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 683
    .local v2, "inputBytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v3

    .line 686
    .end local v2    # "inputBytes":[B
    goto :goto_2

    .line 684
    :catch_1
    move-exception v2

    .line 687
    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 564
    if-nez p0, :cond_0

    .line 565
    const/4 v0, 0x0

    return-object v0

    .line 567
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 568
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 569
    .local v1, "c":I
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    sget-object v2, Ljavax/mail/URLName;->dontNeedEncoding:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 567
    .end local v1    # "c":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    .restart local v1    # "c":I
    :cond_2
    :goto_1
    invoke-static {p0}, Ljavax/mail/URLName;->_encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 572
    .end local v0    # "i":I
    .end local v1    # "c":I
    :cond_3
    return-object p0
.end method

.method private declared-synchronized getHostAddress()Ljava/net/InetAddress;
    .locals 2

    monitor-enter p0

    .line 497
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 499
    .end local p0    # "this":Ljavax/mail/URLName;
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 500
    monitor-exit p0

    return-object v1

    .line 502
    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "ex":Ljava/net/UnknownHostException;
    :try_start_3
    iput-object v1, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;

    .line 506
    .end local v0    # "ex":Ljava/net/UnknownHostException;
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/URLName;->hostAddressKnown:Z

    .line 507
    iget-object v0, p0, Ljavax/mail/URLName;->hostAddress:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 697
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/URLName;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 702
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 703
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 704
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_0

    .line 705
    return v2

    .line 703
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    .end local v2    # "i":I
    :cond_1
    return v0

    .line 708
    .end local v1    # "len":I
    :catch_0
    move-exception v1

    .line 709
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 421
    instance-of v0, p1, Ljavax/mail/URLName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 422
    return v1

    .line 423
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/URLName;

    .line 426
    .local v0, "u2":Ljavax/mail/URLName;
    iget-object v2, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    iget-object v3, v0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    :cond_1
    return v1

    .line 431
    :cond_2
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v2

    .local v2, "a1":Ljava/net/InetAddress;
    invoke-direct {v0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 433
    .local v3, "a2":Ljava/net/InetAddress;
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 434
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 435
    return v1

    .line 437
    :cond_3
    iget-object v4, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v5, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 439
    return v1

    .line 441
    :cond_4
    iget-object v5, v0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eq v4, v5, :cond_5

    .line 442
    return v1

    .line 447
    :cond_5
    iget-object v4, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iget-object v5, v0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eq v4, v5, :cond_7

    if-eqz v4, :cond_6

    .line 448
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 449
    :cond_6
    return v1

    .line 455
    :cond_7
    iget-object v4, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_8

    move-object v4, v5

    .line 456
    .local v4, "f1":Ljava/lang/String;
    :cond_8
    iget-object v6, v0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    move-object v5, v6

    .line 458
    .local v5, "f2":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 459
    return v1

    .line 462
    :cond_a
    iget v6, p0, Ljavax/mail/URLName;->port:I

    iget v7, v0, Ljavax/mail/URLName;->port:I

    if-eq v6, v7, :cond_b

    .line 463
    return v1

    .line 466
    :cond_b
    const/4 v1, 0x1

    return v1
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 379
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 319
    iget v0, p0, Ljavax/mail/URLName;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "f":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 392
    const-string v0, ""

    goto :goto_0

    .line 394
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljavax/mail/URLName;->getPort()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 369
    sget-boolean v0, Ljavax/mail/URLName;->doEncode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/URLName;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 474
    iget v0, p0, Ljavax/mail/URLName;->hashCode:I

    if-eqz v0, :cond_0

    .line 475
    return v0

    .line 476
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/URLName;->hashCode:I

    .line 478
    :cond_1
    invoke-direct {p0}, Ljavax/mail/URLName;->getHostAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 479
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_2

    .line 480
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    goto :goto_0

    .line 481
    :cond_2
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 482
    iget v2, p0, Ljavax/mail/URLName;->hashCode:I

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 483
    :cond_3
    :goto_0
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 484
    iget v2, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 485
    :cond_4
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 486
    iget v2, p0, Ljavax/mail/URLName;->hashCode:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Ljavax/mail/URLName;->hashCode:I

    .line 487
    :cond_5
    iget v1, p0, Ljavax/mail/URLName;->hashCode:I

    iget v2, p0, Ljavax/mail/URLName;->port:I

    add-int/2addr v1, v2

    iput v1, p0, Ljavax/mail/URLName;->hashCode:I

    .line 488
    return v1
.end method

.method protected parseString(Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 243
    .local v1, "len":I
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 244
    .local v3, "protocolEnd":I
    const/4 v4, 0x0

    if-eq v3, v0, :cond_0

    .line 245
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    .line 248
    :cond_0
    add-int/lit8 v5, v3, 0x1

    const-string v6, "//"

    const/4 v7, 0x2

    invoke-virtual {p1, v5, v6, v4, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 250
    const/4 v5, 0x0

    .line 251
    .local v5, "fullhost":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x3

    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 252
    .local v6, "fileStart":I
    if-eq v6, v0, :cond_2

    .line 253
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 254
    add-int/lit8 v7, v6, 0x1

    if-ge v7, v1, :cond_1

    .line 255
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_1
    const-string v7, ""

    iput-object v7, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_2
    add-int/lit8 v7, v3, 0x3

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 262
    :goto_0
    const/16 v7, 0x40

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 263
    .local v7, "i":I
    if-eq v7, v0, :cond_4

    .line 264
    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 265
    .local v8, "fulluserpass":Ljava/lang/String;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 269
    .local v9, "passindex":I
    if-eq v9, v0, :cond_3

    .line 270
    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 271
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_3
    iput-object v8, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    .line 279
    .end local v8    # "fulluserpass":Ljava/lang/String;
    .end local v9    # "passindex":I
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_5

    .line 281
    const/16 v8, 0x5d

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, "portindex":I
    goto :goto_2

    .line 283
    .end local v2    # "portindex":I
    :cond_5
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 285
    .restart local v2    # "portindex":I
    :goto_2
    if-eq v2, v0, :cond_7

    .line 286
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, "portstring":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 289
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Ljavax/mail/URLName;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_3

    .line 290
    :catch_0
    move-exception v9

    .line 291
    .local v9, "nfex":Ljava/lang/NumberFormatException;
    iput v0, p0, Ljavax/mail/URLName;->port:I

    .line 295
    .end local v9    # "nfex":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_3
    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 296
    .end local v8    # "portstring":Ljava/lang/String;
    goto :goto_4

    .line 297
    :cond_7
    iput-object v5, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    .line 299
    .end local v2    # "portindex":I
    .end local v5    # "fullhost":Ljava/lang/String;
    .end local v6    # "fileStart":I
    .end local v7    # "i":I
    :goto_4
    goto :goto_5

    .line 300
    :cond_8
    add-int/lit8 v2, v3, 0x1

    if-ge v2, v1, :cond_9

    .line 301
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 306
    :cond_9
    :goto_5
    iget-object v2, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v2, :cond_a

    const/16 v5, 0x23

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v5, v2

    .local v5, "refStart":I
    if-eq v2, v0, :cond_a

    .line 307
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    .line 310
    .end local v5    # "refStart":I
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 170
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "tempURL":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljavax/mail/URLName;->protocol:Ljava/lang/String;

    const-string v2, ":"

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_0
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 180
    :cond_1
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Ljavax/mail/URLName;->username:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Ljavax/mail/URLName;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_2
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_3
    iget-object v1, p0, Ljavax/mail/URLName;->host:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_4
    iget v1, p0, Ljavax/mail/URLName;->port:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Ljavax/mail/URLName;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_5
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 206
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_6
    iget-object v1, p0, Ljavax/mail/URLName;->file:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_7
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 216
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Ljavax/mail/URLName;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    .line 224
    .end local v0    # "tempURL":Ljava/lang/StringBuilder;
    :cond_9
    iget-object v0, p0, Ljavax/mail/URLName;->fullURL:Ljava/lang/String;

    return-object v0
.end method
