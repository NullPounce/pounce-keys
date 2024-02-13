.class public Lcom/sun/mail/util/MailSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "MailSSLSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/util/MailSSLSocketFactory$MailTrustManager;
    }
.end annotation


# instance fields
.field private adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private keyManagers:[Ljavax/net/ssl/KeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private sslcontext:Ljavax/net/ssl/SSLContext;

.field private trustAllHosts:Z

.field private trustManagers:[Ljavax/net/ssl/TrustManager;

.field private trustedHosts:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    const-string v0, "TLS"

    invoke-direct {p0, v0}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z

    .line 88
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 91
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 92
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v3, Lcom/sun/mail/util/MailSSLSocketFactory$MailTrustManager;

    invoke-direct {v3, p0, v0}, Lcom/sun/mail/util/MailSSLSocketFactory$MailTrustManager;-><init>(Lcom/sun/mail/util/MailSSLSocketFactory;Lcom/sun/mail/util/MailSSLSocketFactory$1;)V

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 93
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;

    .line 96
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V

    .line 97
    return-void
.end method

.method private declared-synchronized newAdapteeFactory()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    iget-object v1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v2, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;

    iget-object v3, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 112
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 108
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 261
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 300
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "s":Ljava/lang/String;
    .end local p2    # "i":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "inetaddress"    # Ljava/net/InetAddress;
    .param p4, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 291
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "s":Ljava/lang/String;
    .end local p2    # "i":I
    .end local p3    # "inetaddress":Ljava/net/InetAddress;
    .end local p4    # "j":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "inetaddress"    # Ljava/net/InetAddress;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 280
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "inetaddress":Ljava/net/InetAddress;
    .end local p2    # "i":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "inetaddress"    # Ljava/net/InetAddress;
    .param p2, "i"    # I
    .param p3, "inetaddress1"    # Ljava/net/InetAddress;
    .param p4, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 271
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "inetaddress":Ljava/net/InetAddress;
    .end local p2    # "i":I
    .end local p3    # "inetaddress1":Ljava/net/InetAddress;
    .end local p4    # "j":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 237
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "socket":Ljava/net/Socket;
    .end local p2    # "s":Ljava/lang/String;
    .end local p3    # "i":I
    .end local p4    # "flag":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 245
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    invoke-virtual {v0}, [Ljavax/net/ssl/KeyManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 119
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 136
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 253
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 153
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrustedHosts()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 185
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    :try_start_1
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 183
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isServerTrusted(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Z
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    monitor-enter p0

    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 216
    monitor-exit p0

    return v1

    .line 220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 221
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 224
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :cond_1
    monitor-exit p0

    return v1

    .line 214
    .end local p1    # "server":Ljava/lang/String;
    .end local p2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isTrustAllHosts()Z
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 170
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 1
    .param p1, "keyManagers"    # [Ljavax/net/ssl/KeyManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-virtual {p1}, [Ljavax/net/ssl/KeyManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 129
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "keyManagers":[Ljavax/net/ssl/KeyManager;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;

    .line 146
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 144
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "secureRandom":Ljava/security/SecureRandom;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTrustAllHosts(Z)V
    .locals 0
    .param p1, "trustAllHosts"    # Z

    monitor-enter p0

    .line 177
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "trustAllHosts":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0
    .param p1, "trustManagers"    # [Ljavax/net/ssl/TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 163
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 161
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    .end local p1    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized setTrustedHosts([Ljava/lang/String;)V
    .locals 1
    .param p1, "trustedHosts"    # [Ljava/lang/String;

    monitor-enter p0

    .line 194
    if-nez p1, :cond_0

    .line 195
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;

    goto :goto_0

    .line 197
    .end local p0    # "this":Lcom/sun/mail/util/MailSSLSocketFactory;
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    .end local p1    # "trustedHosts":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
