.class public Lcom/sun/mail/handlers/text_plain;
.super Lcom/sun/mail/handlers/handler_base;
.source "text_plain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/handlers/text_plain$NoCloseOutputStream;
    }
.end annotation


# static fields
.field private static myDF:[Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/activation/ActivationDataFlavor;

    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    const-class v2, Ljava/lang/String;

    const-string v3, "text/plain"

    const-string v4, "Text String"

    invoke-direct {v1, v2, v3, v4}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:[Ljavax/activation/ActivationDataFlavor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/sun/mail/handlers/handler_base;-><init>()V

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .line 143
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    const-string v1, "charset"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 147
    const-string/jumbo v2, "us-ascii"

    move-object v1, v2

    .line 148
    :cond_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 149
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    .end local v1    # "charset":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 8
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "enc":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "is":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 59
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    .line 70
    nop

    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, "pos":I
    const/16 v3, 0x400

    :try_start_1
    new-array v3, v3, [C

    .line 77
    .local v3, "buf":[C
    :cond_0
    :goto_0
    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v2, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v4

    move v5, v4

    .local v5, "count":I
    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v6, :cond_2

    .line 78
    add-int/2addr v2, v5

    .line 79
    array-length v4, v3

    if-lt v2, v4, :cond_0

    .line 80
    array-length v4, v3

    .line 81
    .local v4, "size":I
    const/high16 v6, 0x40000

    if-ge v4, v6, :cond_1

    .line 82
    add-int/2addr v4, v4

    goto :goto_1

    .line 84
    :cond_1
    add-int/2addr v4, v6

    .line 85
    :goto_1
    new-array v6, v4, [C

    .line 86
    .local v6, "tbuf":[C
    invoke-static {v3, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v3, v6

    .line 88
    .end local v4    # "size":I
    .end local v6    # "tbuf":[C
    goto :goto_0

    .line 90
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v7, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    goto :goto_2

    .line 94
    :catch_0
    move-exception v6

    .line 90
    :goto_2
    return-object v4

    .line 92
    .end local v2    # "pos":I
    .end local v3    # "buf":[C
    .end local v5    # "count":I
    :catchall_0
    move-exception v2

    .line 93
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 96
    goto :goto_3

    .line 94
    :catch_1
    move-exception v3

    .line 97
    :goto_3
    throw v2

    .line 60
    :catch_2
    move-exception v2

    .line 69
    .local v2, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getDataFlavors()[Ljavax/activation/ActivationDataFlavor;
    .locals 1

    .line 49
    sget-object v0, Lcom/sun/mail/handlers/text_plain;->myDF:[Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "enc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/mail/handlers/text_plain;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 116
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Lcom/sun/mail/handlers/text_plain$NoCloseOutputStream;

    invoke-direct {v4, p3}, Lcom/sun/mail/handlers/text_plain$NoCloseOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 127
    nop

    .line 129
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 138
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 139
    return-void

    .line 117
    .end local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v3, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    .end local v0    # "enc":Ljava/lang/String;
    .end local v1    # "iex":Ljava/lang/IllegalArgumentException;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/mail/handlers/text_plain;->getDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljavax/activation/ActivationDataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" DataContentHandler requires String object, was given object of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
