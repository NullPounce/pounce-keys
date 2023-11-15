.class public Lcom/sun/mail/pop3/POP3SSLStore;
.super Lcom/sun/mail/pop3/POP3Store;
.source "POP3SSLStore.java"


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "url"    # Ljavax/mail/URLName;

    .line 29
    const-string v0, "pop3s"

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method
