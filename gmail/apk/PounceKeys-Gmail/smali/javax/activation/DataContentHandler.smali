.class public interface abstract Ljavax/activation/DataContentHandler;
.super Ljava/lang/Object;
.source "DataContentHandler.java"


# virtual methods
.method public abstract getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;
.end method

.method public abstract writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
