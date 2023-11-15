.class public Lcom/sun/mail/smtp/SMTPSSLProvider;
.super Ljavax/mail/Provider;
.source "SMTPSSLProvider.java"


# annotations
.annotation runtime Lcom/sun/mail/util/DefaultProvider;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 29
    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v2, "smtps"

    const-class v0, Lcom/sun/mail/smtp/SMTPSSLTransport;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Oracle"

    const/4 v5, 0x0

    .line 29
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
