.class Ljavax/activation/DataSourceDataContentHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private dch:Ljavax/activation/DataContentHandler;

.field private ds:Ljavax/activation/DataSource;

.field private transferFlavors:[Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V
    .locals 1
    .param p1, "dch"    # Ljavax/activation/DataContentHandler;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 724
    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 725
    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 731
    iput-object p2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 732
    iput-object p1, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 733
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 775
    invoke-interface {v0, p1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 777
    :cond_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 3
    .param p1, "df"    # Ljavax/activation/ActivationDataFlavor;
    .param p2, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 765
    :cond_0
    invoke-virtual {p0}, Ljavax/activation/DataSourceDataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/activation/ActivationDataFlavor;->equals(Ljavax/activation/ActivationDataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    invoke-interface {p2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 769
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported DataFlavor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;
    .locals 4

    .line 741
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 743
    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    goto :goto_0

    .line 745
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/activation/ActivationDataFlavor;

    iput-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 746
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    iget-object v2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 747
    invoke-interface {v2}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 748
    invoke-interface {v3}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 751
    :cond_1
    :goto_0
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 785
    iget-object v0, p0, Ljavax/activation/DataSourceDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 786
    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 790
    return-void

    .line 788
    :cond_0
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no DCH for content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataSourceDataContentHandler;->ds:Ljavax/activation/DataSource;

    .line 789
    invoke-interface {v2}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
