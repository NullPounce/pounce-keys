.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const/16 v0, 0x400

    .line 270
    .local v0, "size":I
    instance-of v1, p0, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 272
    new-array v1, v0, [B

    .line 273
    .local v1, "buf":[B
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "len":I
    goto :goto_1

    .line 276
    .end local v1    # "buf":[B
    .end local v2    # "len":I
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 277
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-array v3, v0, [B

    .line 278
    .local v3, "buf":[B
    :goto_0
    invoke-virtual {p0, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    move v5, v4

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 279
    invoke-virtual {v1, v3, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v1, v2

    move v2, v5

    .line 282
    .end local v3    # "buf":[B
    .end local v5    # "len":I
    .local v1, "buf":[B
    .restart local v2    # "len":I
    :goto_1
    return-object v1
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 255
    .local v0, "chars":[C
    array-length v1, v0

    .line 256
    .local v1, "size":I
    new-array v2, v1, [B

    .line 258
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 259
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-char v5, v0, v3

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move v3, v4

    goto :goto_0

    .line 260
    .end local v4    # "i":I
    :cond_0
    return-object v2
.end method

.method public static parseInt([BII)I
    .locals 1
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 116
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v0

    return v0
.end method

.method public static parseInt([BIII)I
    .locals 9
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 45
    if-eqz p0, :cond_a

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "result":I
    const/4 v1, 0x0

    .line 50
    .local v1, "negative":Z
    move v2, p1

    .line 55
    .local v2, "i":I
    const-string v3, "illegal number"

    if-le p2, p1, :cond_9

    .line 56
    aget-byte v4, p0, v2

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 57
    const/4 v1, 0x1

    .line 58
    const/high16 v4, -0x80000000

    .line 59
    .local v4, "limit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v4    # "limit":I
    :cond_0
    const v4, -0x7fffffff

    .line 63
    .restart local v4    # "limit":I
    :goto_0
    div-int v5, v4, p3

    .line 64
    .local v5, "multmin":I
    if-ge v2, p2, :cond_2

    .line 65
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 66
    .local v2, "digit":I
    if-ltz v2, :cond_1

    .line 71
    neg-int v0, v2

    move v2, v6

    goto :goto_1

    .line 67
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal number: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 68
    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 74
    .end local v6    # "i":I
    .local v2, "i":I
    :cond_2
    :goto_1
    if-ge v2, p2, :cond_6

    .line 76
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .restart local v6    # "i":I
    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 77
    .local v2, "digit":I
    if-ltz v2, :cond_5

    .line 80
    if-lt v0, v5, :cond_4

    .line 83
    mul-int/2addr v0, p3

    .line 84
    add-int v7, v4, v2

    if-lt v0, v7, :cond_3

    .line 87
    sub-int/2addr v0, v2

    move v2, v6

    goto :goto_1

    .line 85
    :cond_3
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 81
    :cond_4
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 78
    :cond_5
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 92
    .end local v6    # "i":I
    .local v2, "i":I
    :cond_6
    if-eqz v1, :cond_8

    .line 93
    add-int/lit8 v6, p1, 0x1

    if-le v2, v6, :cond_7

    .line 94
    return v0

    .line 96
    :cond_7
    new-instance v6, Ljava/lang/NumberFormatException;

    invoke-direct {v6, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 99
    :cond_8
    neg-int v3, v0

    return v3

    .line 90
    .end local v4    # "limit":I
    .end local v5    # "multmin":I
    :cond_9
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    .end local v0    # "result":I
    .end local v1    # "negative":Z
    .end local v2    # "i":I
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLong([BII)J
    .locals 2
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 206
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong([BIII)J
    .locals 12
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 135
    if-eqz p0, :cond_a

    .line 138
    const-wide/16 v0, 0x0

    .line 139
    .local v0, "result":J
    const/4 v2, 0x0

    .line 140
    .local v2, "negative":Z
    move v3, p1

    .line 145
    .local v3, "i":I
    const-string v4, "illegal number"

    if-le p2, p1, :cond_9

    .line 146
    aget-byte v5, p0, v3

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 147
    const/4 v2, 0x1

    .line 148
    const-wide/high16 v5, -0x8000000000000000L

    .line 149
    .local v5, "limit":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v5    # "limit":J
    :cond_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 153
    .restart local v5    # "limit":J
    :goto_0
    int-to-long v7, p3

    div-long v7, v5, v7

    .line 154
    .local v7, "multmin":J
    if-ge v3, p2, :cond_2

    .line 155
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "i":I
    .local v9, "i":I
    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 156
    .local v3, "digit":I
    if-ltz v3, :cond_1

    .line 161
    neg-int v10, v3

    int-to-long v0, v10

    move v3, v9

    goto :goto_1

    .line 157
    :cond_1
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "illegal number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 158
    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    .end local v9    # "i":I
    .local v3, "i":I
    :cond_2
    :goto_1
    if-ge v3, p2, :cond_6

    .line 166
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "i":I
    .restart local v9    # "i":I
    aget-byte v3, p0, v3

    int-to-char v3, v3

    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 167
    .local v3, "digit":I
    if-ltz v3, :cond_5

    .line 170
    cmp-long v10, v0, v7

    if-ltz v10, :cond_4

    .line 173
    int-to-long v10, p3

    mul-long/2addr v0, v10

    .line 174
    int-to-long v10, v3

    add-long/2addr v10, v5

    cmp-long v10, v0, v10

    if-ltz v10, :cond_3

    .line 177
    int-to-long v10, v3

    sub-long/2addr v0, v10

    move v3, v9

    goto :goto_1

    .line 175
    :cond_3
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-direct {v10, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 171
    :cond_4
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-direct {v10, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 168
    :cond_5
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-direct {v10, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 182
    .end local v9    # "i":I
    .local v3, "i":I
    :cond_6
    if-eqz v2, :cond_8

    .line 183
    add-int/lit8 v9, p1, 0x1

    if-le v3, v9, :cond_7

    .line 184
    return-wide v0

    .line 186
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-direct {v9, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 189
    :cond_8
    neg-long v9, v0

    return-wide v9

    .line 180
    .end local v5    # "limit":J
    .end local v7    # "multmin":J
    :cond_9
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    .end local v0    # "result":J
    .end local v2    # "negative":Z
    .end local v3    # "i":I
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "is"    # Ljava/io/ByteArrayInputStream;

    .line 241
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 242
    .local v0, "size":I
    new-array v1, v0, [C

    .line 243
    .local v1, "theChars":[C
    new-array v2, v0, [B

    .line 245
    .local v2, "bytes":[B
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 246
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 247
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v1, v3

    move v3, v4

    goto :goto_0

    .line 249
    .end local v4    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .line 237
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 220
    sub-int v0, p2, p1

    .line 221
    .local v0, "size":I
    new-array v1, v0, [C

    .line 223
    .local v1, "theChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p1

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 224
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v4

    move v3, v5

    goto :goto_0

    .line 226
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
