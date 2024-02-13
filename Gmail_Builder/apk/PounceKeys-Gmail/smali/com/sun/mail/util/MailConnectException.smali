.class public Lcom/sun/mail/util/MailConnectException;
.super Ljavax/mail/MessagingException;
.source "MailConnectException.java"


# static fields
.field private static final serialVersionUID:J = -0x34ff2166073d7061L


# instance fields
.field private cto:I

.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/util/SocketConnectException;)V
    .locals 3
    .param p1, "cex"    # Lcom/sun/mail/util/SocketConnectException;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t connect to host, port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getConnectionTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/MailConnectException;->host:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getPort()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/MailConnectException;->port:I

    .line 53
    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getConnectionTimeout()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/MailConnectException;->cto:I

    .line 54
    invoke-virtual {p1}, Lcom/sun/mail/util/SocketConnectException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/MailConnectException;->setNextException(Ljava/lang/Exception;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/sun/mail/util/MailConnectException;->cto:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sun/mail/util/MailConnectException;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/sun/mail/util/MailConnectException;->port:I

    return v0
.end method
