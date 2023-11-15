.class public Ljavax/mail/util/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private data:[B

.field private len:I

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 60
    new-instance v0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;

    invoke-direct {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;-><init>()V

    .line 61
    .local v0, "os":Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 63
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "len":I
    if-lez v2, :cond_0

    .line 64
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->getBuf()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 66
    invoke-virtual {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->getCount()I

    move-result v2

    iput v2, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 75
    iget-object v4, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    array-length v4, v4

    sub-int/2addr v4, v2

    const/high16 v2, 0x40000

    if-le v4, v2, :cond_1

    .line 76
    invoke-virtual {v0}, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 77
    array-length v2, v2

    iput v2, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 79
    :cond_1
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "ct":Ljavax/mail/internet/ContentType;
    const-string v2, "charset"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 113
    .end local v1    # "ct":Ljavax/mail/internet/ContentType;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 114
    :goto_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 119
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "type"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 90
    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    .line 91
    iput-object p2, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    if-eqz v0, :cond_1

    .line 134
    iget v1, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    if-gez v1, :cond_0

    .line 135
    array-length v0, v0

    iput v0, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    .line 136
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/util/ByteArrayDataSource;->data:[B

    const/4 v2, 0x0

    iget v3, p0, Ljavax/mail/util/ByteArrayDataSource;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0

    .line 133
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot do this"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 178
    iput-object p1, p0, Ljavax/mail/util/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 179
    return-void
.end method
