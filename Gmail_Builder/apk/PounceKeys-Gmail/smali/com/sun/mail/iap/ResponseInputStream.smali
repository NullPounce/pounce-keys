.class public Lcom/sun/mail/iap/ResponseInputStream;
.super Ljava/lang/Object;
.source "ResponseInputStream.java"


# static fields
.field private static final incrementSlop:I = 0x10

.field private static final maxIncrement:I = 0x40000

.field private static final minIncrement:I = 0x100


# instance fields
.field private bin:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x800

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    .line 47
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

    .line 156
    iget-object v0, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v0

    return v0
.end method

.method public readResponse()Lcom/sun/mail/iap/ByteArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/mail/iap/ResponseInputStream;->readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    return-object v0
.end method

.method public readResponse(Lcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/iap/ByteArray;
    .locals 11
    .param p1, "ba"    # Lcom/sun/mail/iap/ByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    const/16 v1, 0x80

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sun/mail/iap/ByteArray;-><init>([BII)V

    move-object p1, v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    .line 71
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 74
    .local v1, "idx":I
    :goto_0
    const/4 v2, 0x0

    .line 75
    .local v2, "b":I
    const/4 v3, 0x0

    .line 78
    .local v3, "gotCRLF":Z
    :goto_1
    const/4 v4, -0x1

    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    .line 79
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    move v2, v5

    if-eq v5, v4, :cond_4

    .line 80
    const/16 v4, 0xa

    if-ne v2, v4, :cond_1

    .line 81
    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v0, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    .line 82
    const/4 v3, 0x1

    .line 84
    :cond_1
    array-length v4, v0

    if-lt v1, v4, :cond_3

    .line 85
    array-length v4, v0

    .line 86
    .local v4, "incr":I
    const/high16 v5, 0x40000

    if-le v4, v5, :cond_2

    .line 87
    const/high16 v4, 0x40000

    .line 88
    :cond_2
    invoke-virtual {p1, v4}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 89
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    .line 91
    .end local v4    # "incr":I
    :cond_3
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    int-to-byte v5, v2

    aput-byte v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 94
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_4
    const-string v5, "Connection dropped by server?"

    if-eq v2, v4, :cond_e

    .line 99
    const/4 v6, 0x5

    if-lt v1, v6, :cond_d

    add-int/lit8 v6, v1, -0x3

    aget-byte v6, v0, v6

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_5

    .line 100
    goto :goto_6

    .line 104
    :cond_5
    add-int/lit8 v6, v1, -0x4

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_7

    .line 105
    aget-byte v7, v0, v6

    const/16 v8, 0x7b

    if-ne v7, v8, :cond_6

    .line 106
    goto :goto_3

    .line 104
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 108
    :cond_7
    :goto_3
    if-gez v6, :cond_8

    .line 109
    goto :goto_6

    .line 111
    :cond_8
    const/4 v7, 0x0

    .line 114
    .local v7, "count":I
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, v1, -0x3

    :try_start_0
    invoke-static {v0, v8, v9}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BII)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v8

    .line 117
    nop

    .line 120
    if-lez v7, :cond_c

    .line 121
    array-length v8, v0

    sub-int/2addr v8, v1

    .line 122
    .local v8, "avail":I
    add-int/lit8 v9, v7, 0x10

    if-le v9, v8, :cond_a

    .line 124
    add-int/lit8 v9, v7, 0x10

    sub-int/2addr v9, v8

    const/16 v10, 0x100

    if-le v10, v9, :cond_9

    .line 125
    goto :goto_4

    :cond_9
    add-int/lit8 v9, v7, 0x10

    sub-int v10, v9, v8

    .line 124
    :goto_4
    invoke-virtual {p1, v10}, Lcom/sun/mail/iap/ByteArray;->grow(I)V

    .line 126
    invoke-virtual {p1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    .line 134
    :cond_a
    :goto_5
    if-lez v7, :cond_c

    .line 135
    iget-object v9, p0, Lcom/sun/mail/iap/ResponseInputStream;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v9, v0, v1, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    .line 136
    .local v9, "actual":I
    if-eq v9, v4, :cond_b

    .line 138
    sub-int/2addr v7, v9

    .line 139
    add-int/2addr v1, v9

    goto :goto_5

    .line 137
    :cond_b
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    .end local v2    # "b":I
    .end local v3    # "gotCRLF":Z
    .end local v6    # "i":I
    .end local v7    # "count":I
    .end local v8    # "avail":I
    .end local v9    # "actual":I
    :cond_c
    goto/16 :goto_0

    .line 115
    .restart local v2    # "b":I
    .restart local v3    # "gotCRLF":Z
    .restart local v6    # "i":I
    .restart local v7    # "count":I
    :catch_0
    move-exception v4

    .line 116
    .local v4, "e":Ljava/lang/NumberFormatException;
    nop

    .line 144
    .end local v2    # "b":I
    .end local v3    # "gotCRLF":Z
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    .end local v7    # "count":I
    :cond_d
    :goto_6
    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/ByteArray;->setCount(I)V

    .line 145
    return-object p1

    .line 95
    .restart local v2    # "b":I
    .restart local v3    # "gotCRLF":Z
    :cond_e
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
