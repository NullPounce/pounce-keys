.class public Lcom/sun/mail/smtp/SMTPSenderFailedException;
.super Ljavax/mail/SendFailedException;
.source "SMTPSenderFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x72403d150b9bc13L


# instance fields
.field protected addr:Ljavax/mail/internet/InternetAddress;

.field protected cmd:Ljava/lang/String;

.field protected rc:I


# direct methods
.method public constructor <init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "addr"    # Ljavax/mail/internet/InternetAddress;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "rc"    # I
    .param p4, "err"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p4}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->addr:Ljavax/mail/internet/InternetAddress;

    .line 51
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->cmd:Ljava/lang/String;

    .line 52
    iput p3, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->rc:I

    .line 53
    return-void
.end method


# virtual methods
.method public getAddress()Ljavax/mail/internet/InternetAddress;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->addr:Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sun/mail/smtp/SMTPSenderFailedException;->rc:I

    return v0
.end method
