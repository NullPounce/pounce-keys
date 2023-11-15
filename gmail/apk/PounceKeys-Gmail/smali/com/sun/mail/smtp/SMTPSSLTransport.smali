.class public Lcom/sun/mail/smtp/SMTPSSLTransport;
.super Lcom/sun/mail/smtp/SMTPTransport;
.source "SMTPSSLTransport.java"


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 37
    const-string v0, "smtps"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method
