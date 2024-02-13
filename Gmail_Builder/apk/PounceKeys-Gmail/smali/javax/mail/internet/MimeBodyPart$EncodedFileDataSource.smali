.class Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;
.super Ljavax/activation/FileDataSource;
.source "MimeBodyPart.java"

# interfaces
.implements Ljavax/mail/EncodingAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeBodyPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncodedFileDataSource"
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .line 896
    invoke-direct {p0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 897
    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->contentType:Ljava/lang/String;

    .line 898
    iput-object p3, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->encoding:Ljava/lang/String;

    .line 899
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 904
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljavax/activation/FileDataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 910
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;->encoding:Ljava/lang/String;

    return-object v0
.end method
