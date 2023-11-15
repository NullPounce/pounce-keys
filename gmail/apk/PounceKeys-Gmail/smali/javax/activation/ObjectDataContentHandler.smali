.class Ljavax/activation/ObjectDataContentHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private dch:Ljavax/activation/DataContentHandler;

.field private mimeType:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private transferFlavors:[Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "dch"    # Ljavax/activation/DataContentHandler;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 804
    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 811
    iput-object p2, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    .line 812
    iput-object p3, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    .line 813
    iput-object p1, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    .line 814
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .param p1, "ds"    # Ljavax/activation/DataSource;

    .line 861
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getDCH()Ljavax/activation/DataContentHandler;
    .locals 1

    .line 821
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

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

    .line 850
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0, p1, p2}, Ljavax/activation/DataContentHandler;->getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 852
    :cond_0
    invoke-virtual {p0}, Ljavax/activation/ObjectDataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/activation/ActivationDataFlavor;->equals(Ljavax/activation/ActivationDataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    return-object v0

    .line 856
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

.method public declared-synchronized getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;
    .locals 4

    monitor-enter p0

    .line 829
    :try_start_0
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    if-nez v0, :cond_1

    .line 830
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 831
    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    goto :goto_0

    .line 833
    .end local p0    # "this":Ljavax/activation/ObjectDataContentHandler;
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/activation/ActivationDataFlavor;

    iput-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 834
    new-instance v1, Ljavax/activation/ActivationDataFlavor;

    iget-object v2, p0, Ljavax/activation/ObjectDataContentHandler;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 838
    :cond_1
    :goto_0
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 869
    iget-object v0, p0, Ljavax/activation/ObjectDataContentHandler;->dch:Ljavax/activation/DataContentHandler;

    if-eqz v0, :cond_0

    .line 870
    invoke-interface {v0, p1, p2, p3}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 871
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 872
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 873
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 874
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 875
    .local v0, "osw":Ljava/io/OutputStreamWriter;
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 877
    .end local v0    # "osw":Ljava/io/OutputStreamWriter;
    nop

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_2
    new-instance v0, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no object DCH for MIME type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/ObjectDataContentHandler;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
