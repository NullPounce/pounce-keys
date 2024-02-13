.class public Ljavax/activation/URLDataSource;
.super Ljava/lang/Object;
.source "URLDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field private url:Ljava/net/URL;

.field private url_conn:Ljava/net/URLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    .line 32
    iput-object v0, p0, Ljavax/activation/URLDataSource;->url_conn:Ljava/net/URLConnection;

    .line 42
    iput-object p1, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    .line 43
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 57
    const/4 v0, 0x0

    .line 60
    .local v0, "type":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Ljavax/activation/URLDataSource;->url_conn:Ljava/net/URLConnection;

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/URLDataSource;->url_conn:Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 64
    iget-object v1, p0, Ljavax/activation/URLDataSource;->url_conn:Ljava/net/URLConnection;

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_1
    if-nez v0, :cond_2

    .line 68
    const-string v0, "application/octet-stream"

    .line 70
    :cond_2
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/URLDataSource;->url_conn:Ljava/net/URLConnection;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 107
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url_conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 118
    iget-object v0, p0, Ljavax/activation/URLDataSource;->url:Ljava/net/URL;

    return-object v0
.end method
