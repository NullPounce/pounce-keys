.class public Lcom/sun/mail/imap/ReferralException;
.super Ljavax/mail/AuthenticationFailedException;
.source "ReferralException.java"


# static fields
.field private static final serialVersionUID:J = -0x2f6130b7d2bcdcc3L


# instance fields
.field private text:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[REFERRAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/sun/mail/imap/ReferralException;->url:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/sun/mail/imap/ReferralException;->text:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sun/mail/imap/ReferralException;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sun/mail/imap/ReferralException;->url:Ljava/lang/String;

    return-object v0
.end method
