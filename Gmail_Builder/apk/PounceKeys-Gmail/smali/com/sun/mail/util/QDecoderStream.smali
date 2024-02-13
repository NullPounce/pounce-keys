.class public Lcom/sun/mail/util/QDecoderStream;
.super Lcom/sun/mail/util/QPDecoderStream;
.source "QDecoderStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .line 35
    invoke-direct {p0, p1}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/sun/mail/util/QDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 54
    .local v0, "c":I
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    .line 55
    const/16 v1, 0x20

    return v1

    .line 56
    :cond_0
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/sun/mail/util/QDecoderStream;->ba:[B

    iget-object v2, p0, Lcom/sun/mail/util/QDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 59
    iget-object v1, p0, Lcom/sun/mail/util/QDecoderStream;->ba:[B

    iget-object v2, p0, Lcom/sun/mail/util/QDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/QDecoderStream;->ba:[B

    const/4 v2, 0x2

    const/16 v4, 0x10

    invoke-static {v1, v3, v2, v4}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "nex":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/sun/mail/util/DecodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QDecoder: Error in QP stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    .end local v1    # "nex":Ljava/lang/NumberFormatException;
    :cond_1
    return v0
.end method
