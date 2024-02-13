.class public Lcom/sun/mail/imap/IMAPSSLStore;
.super Lcom/sun/mail/imap/IMAPStore;
.source "IMAPSSLStore.java"


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .line 35
    const-string v0, "imaps"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/imap/IMAPStore;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method
