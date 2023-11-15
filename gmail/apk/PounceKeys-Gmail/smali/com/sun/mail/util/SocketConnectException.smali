.class public Lcom/sun/mail/util/SocketConnectException;
.super Ljava/io/IOException;
.source "SocketConnectException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x377b4b00af8c9187L


# instance fields
.field private cto:I

.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "cto"    # I

    .line 60
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p2}, Lcom/sun/mail/util/SocketConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 62
    iput-object p3, p0, Lcom/sun/mail/util/SocketConnectException;->host:Ljava/lang/String;

    .line 63
    iput p4, p0, Lcom/sun/mail/util/SocketConnectException;->port:I

    .line 64
    iput p5, p0, Lcom/sun/mail/util/SocketConnectException;->cto:I

    .line 65
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/sun/mail/util/SocketConnectException;->cto:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/sun/mail/util/SocketConnectException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 75
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 76
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Exception;

    return-object v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sun/mail/util/SocketConnectException;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/sun/mail/util/SocketConnectException;->port:I

    return v0
.end method
