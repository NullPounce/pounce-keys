.class Ljavax/activation/DataHandlerDataSource;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field dataHandler:Ljavax/activation/DataHandler;


# direct methods
.method public constructor <init>(Ljavax/activation/DataHandler;)V
    .locals 1
    .param p1, "dh"    # Ljavax/activation/DataHandler;

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    .line 679
    iput-object p1, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    .line 680
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 703
    iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Ljavax/activation/DataHandlerDataSource;->dataHandler:Ljavax/activation/DataHandler;

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
