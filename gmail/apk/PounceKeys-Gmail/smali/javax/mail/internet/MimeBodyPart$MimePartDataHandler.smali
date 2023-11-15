.class Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
.super Ljavax/activation/DataHandler;
.source "MimeBodyPart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MimeBodyPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MimePartDataHandler"
.end annotation


# instance fields
.field part:Ljavax/mail/internet/MimePart;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .line 1691
    new-instance v0, Ljavax/mail/internet/MimePartDataSource;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    invoke-direct {p0, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 1692
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    .line 1693
    return-void
.end method


# virtual methods
.method getContentStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1696
    const/4 v0, 0x0

    .line 1698
    .local v0, "is":Ljava/io/InputStream;
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    instance-of v2, v1, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v2, :cond_0

    .line 1699
    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    .line 1700
    .local v1, "mbp":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    .end local v1    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    goto :goto_0

    .line 1701
    :cond_0
    instance-of v2, v1, Ljavax/mail/internet/MimeMessage;

    if-eqz v2, :cond_1

    .line 1702
    check-cast v1, Ljavax/mail/internet/MimeMessage;

    .line 1703
    .local v1, "msg":Ljavax/mail/internet/MimeMessage;
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 1701
    .end local v1    # "msg":Ljavax/mail/internet/MimeMessage;
    :cond_1
    :goto_0
    nop

    .line 1705
    :goto_1
    return-object v0
.end method

.method getPart()Ljavax/mail/internet/MimePart;
    .locals 1

    .line 1709
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->part:Ljavax/mail/internet/MimePart;

    return-object v0
.end method
