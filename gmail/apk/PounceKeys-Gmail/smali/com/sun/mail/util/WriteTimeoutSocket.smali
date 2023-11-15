.class public Lcom/sun/mail/util/WriteTimeoutSocket;
.super Ljava/net/Socket;
.source "WriteTimeoutSocket.java"


# instance fields
.field private final ses:Ljava/util/concurrent/ScheduledExecutorService;

.field private final socket:Ljava/net/Socket;

.field private final timeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(Ljava/net/Socket;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p3}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 71
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;II)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0, p5}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 78
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 79
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;II)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p3}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 57
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;II)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0, p5}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(I)V

    .line 64
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 65
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;I)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    iput p2, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->timeout:I

    .line 48
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 97
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 252
    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 87
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 92
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 330
    :try_start_0
    const-string v1, "getFileDescriptor$"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 331
    .local v1, "m":Ljava/lang/reflect/Method;
    const-class v3, Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    iget-object v3, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 336
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_1

    .line 335
    :catch_0
    move-exception v1

    .line 328
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 338
    .end local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    .local p1, "so":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "WriteTimeoutSocket.getOption"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    new-instance v0, Lcom/sun/mail/util/TimeoutOutputStream;

    iget-object v1, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    iget v3, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->timeout:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/mail/util/TimeoutOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/concurrent/ScheduledExecutorService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 148
    .end local p0    # "this":Lcom/sun/mail/util/WriteTimeoutSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPort()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public getSoLinger()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public sendUrgentData(I)V
    .locals 1
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->sendUrgentData(I)V

    .line 174
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 219
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setOOBInline(Z)V

    .line 179
    return-void
.end method

.method public setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;TT;)",
            "Ljava/net/Socket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    .local p1, "so":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "val":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "WriteTimeoutSocket.setOption"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPerformancePreferences(III)V
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .line 112
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 113
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 209
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 239
    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 199
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 164
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 189
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 154
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 1
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setTrafficClass(I)V

    .line 229
    return-void
.end method

.method public shutdownInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 258
    return-void
.end method

.method public shutdownOutput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 263
    return-void
.end method

.method public supportedOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/SocketOption<",
            "*>;>;"
        }
    .end annotation

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/sun/mail/util/WriteTimeoutSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
