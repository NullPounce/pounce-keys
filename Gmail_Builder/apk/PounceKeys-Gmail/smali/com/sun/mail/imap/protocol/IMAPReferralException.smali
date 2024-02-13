.class public Lcom/sun/mail/imap/protocol/IMAPReferralException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "IMAPReferralException.java"


# static fields
.field private static final serialVersionUID:J = 0x23c9a242c8a70d40L


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPReferralException;->url:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPReferralException;->url:Ljava/lang/String;

    return-object v0
.end method
