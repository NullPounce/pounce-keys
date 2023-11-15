.class public Lcom/sun/mail/util/SocketFetcher;
.super Ljava/lang/Object;
.source "SocketFetcher.java"


# static fields
.field private static logger:Lcom/sun/mail/util/MailLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v6, Lcom/sun/mail/util/MailLogger;

    const-class v1, Lcom/sun/mail/util/SocketFetcher;

    const-string v2, "socket"

    const-string v3, "DEBUG SocketFetcher"

    .line 47
    const-string v0, "mail.socket.debug"

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    sput-object v6, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static checkServerIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    .locals 4
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    const-string v0, "Can\'t verify identity of server: "

    .line 658
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 659
    .local v1, "certChain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v3, v1, v2

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 661
    invoke-static {p0, v2}, Lcom/sun/mail/util/SocketFetcher;->matchCert(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 662
    return-void

    .line 669
    .end local v1    # "certChain":[Ljava/security/cert/Certificate;
    :cond_0
    nop

    .line 672
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 673
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 665
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 667
    .local v0, "ioex":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 668
    throw v0
.end method

.method private static cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "ife"    # Ljava/io/IOException;

    .line 622
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    goto :goto_0

    .line 623
    :catchall_0
    move-exception v0

    .line 624
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/sun/mail/util/SocketFetcher;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    invoke-virtual {p1, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 637
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object p1

    .line 627
    .restart local v0    # "thr":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 628
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    .line 631
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 632
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 634
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 629
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method

.method private static configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    .locals 8
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "sf"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 562
    return-void

    .line 563
    :cond_0
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 565
    .local v0, "sslsocket":Ljavax/net/ssl/SSLSocket;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ssl.protocols"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "protocols":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 567
    invoke-static {v1}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_1

    .line 575
    :cond_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "prots":[Ljava/lang/String;
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 577
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSL enabled protocols before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 578
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 579
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v4, "eprots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 581
    aget-object v6, v3, v5

    if-eqz v6, :cond_3

    aget-object v6, v3, v5

    const-string v7, "SSL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 582
    aget-object v6, v3, v5

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 584
    .end local v5    # "i":I
    :cond_4
    nop

    .line 585
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 584
    invoke-virtual {v0, v5}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 587
    .end local v3    # "prots":[Ljava/lang/String;
    .end local v4    # "eprots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ssl.ciphersuites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "ciphers":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 589
    invoke-static {v2}, Lcom/sun/mail/util/SocketFetcher;->stringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 590
    :cond_5
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 591
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSL enabled protocols after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 592
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 593
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSL enabled ciphers after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 594
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 593
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 602
    :cond_6
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ssl.checkserveridentity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    .line 609
    .local v3, "idCheck":Z
    if-eqz v3, :cond_7

    .line 610
    invoke-static {p1, v0}, Lcom/sun/mail/util/SocketFetcher;->checkServerIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 611
    :cond_7
    instance-of v4, p4, Lcom/sun/mail/util/MailSSLSocketFactory;

    if-eqz v4, :cond_9

    .line 612
    move-object v4, p4

    check-cast v4, Lcom/sun/mail/util/MailSSLSocketFactory;

    .line 613
    .local v4, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    invoke-virtual {v4, p1, v0}, Lcom/sun/mail/util/MailSSLSocketFactory;->isServerTrusted(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    .line 614
    :cond_8
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server is not trusted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/sun/mail/util/SocketFetcher;->cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 618
    .end local v4    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    :cond_9
    :goto_2
    return-void
.end method

.method private static createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;
    .locals 24
    .param p0, "localaddr"    # Ljava/net/InetAddress;
    .param p1, "localport"    # I
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "cto"    # I
    .param p5, "to"    # I
    .param p6, "props"    # Ljava/util/Properties;
    .param p7, "prefix"    # Ljava/lang/String;
    .param p8, "sf"    # Ljavax/net/SocketFactory;
    .param p9, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v10, p7

    move-object/from16 v9, p8

    move/from16 v8, p9

    const/4 v3, 0x0

    .line 247
    .local v3, "socket":Ljava/net/Socket;
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v4, ", port "

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create socket: prefix "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", localaddr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", localport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", connection timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", socket factory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", useSSL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".proxy.host"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v15, v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "proxyHost":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".proxy.user"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "proxyUser":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".proxy.password"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v15, v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 257
    .local v17, "proxyPassword":Ljava/lang/String;
    const/16 v5, 0x50

    .line 258
    .local v5, "proxyPort":I
    const/16 v18, 0x0

    .line 259
    .local v18, "socksHost":Ljava/lang/String;
    const/16 v19, 0x438

    .line 260
    .local v19, "socksPort":I
    const/16 v20, 0x0

    .line 262
    .local v20, "err":Ljava/lang/String;
    move-object/from16 v21, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .local v21, "socket":Ljava/net/Socket;
    const-string v3, ", "

    const/16 v0, 0x3a

    move/from16 v22, v5

    .end local v5    # "proxyPort":I
    .local v22, "proxyPort":I
    if-eqz v6, :cond_4

    .line 263
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 264
    .local v5, "i":I
    if-ltz v5, :cond_1

    .line 266
    add-int/lit8 v0, v5, 0x1

    :try_start_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v22    # "proxyPort":I
    .local v0, "proxyPort":I
    move/from16 v22, v0

    goto :goto_0

    .line 267
    .end local v0    # "proxyPort":I
    .restart local v22    # "proxyPort":I
    :catch_0
    move-exception v0

    .line 270
    :goto_0
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v22

    goto :goto_1

    .line 264
    :cond_1
    move/from16 v0, v22

    .line 272
    .end local v22    # "proxyPort":I
    .restart local v0    # "proxyPort":I
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v16, v5

    .end local v5    # "i":I
    .local v16, "i":I
    const-string v5, ".proxy.port"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5, v0}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v5

    .line 274
    .end local v0    # "proxyPort":I
    .local v5, "proxyPort":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using web proxy host, port: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 275
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "web proxy host "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 277
    if-eqz v7, :cond_3

    .line 278
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "web proxy user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    if-nez v17, :cond_2

    const-string v4, "<null>"

    goto :goto_2

    :cond_2
    const-string v4, "<non-null>"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 281
    .end local v16    # "i":I
    :cond_3
    move/from16 v22, v5

    move-object/from16 v16, v6

    move-object/from16 v8, v18

    move/from16 v6, v19

    goto/16 :goto_5

    .end local v5    # "proxyPort":I
    .restart local v22    # "proxyPort":I
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".socks.host"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    const/4 v8, 0x0

    invoke-virtual {v15, v5, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    .end local v18    # "socksHost":Ljava/lang/String;
    .local v8, "socksHost":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 283
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 284
    .local v5, "i":I
    if-ltz v5, :cond_5

    .line 286
    add-int/lit8 v0, v5, 0x1

    :try_start_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v19, v0

    .line 289
    goto :goto_3

    .line 287
    :catch_1
    move-exception v0

    .line 290
    :goto_3
    move-object/from16 v16, v6

    const/4 v6, 0x0

    .end local v6    # "proxyHost":Ljava/lang/String;
    .local v16, "proxyHost":Ljava/lang/String;
    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move/from16 v0, v19

    .end local v8    # "socksHost":Ljava/lang/String;
    .local v0, "socksHost":Ljava/lang/String;
    goto :goto_4

    .line 284
    .end local v0    # "socksHost":Ljava/lang/String;
    .end local v16    # "proxyHost":Ljava/lang/String;
    .restart local v6    # "proxyHost":Ljava/lang/String;
    .restart local v8    # "socksHost":Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v6

    .end local v6    # "proxyHost":Ljava/lang/String;
    .restart local v16    # "proxyHost":Ljava/lang/String;
    move/from16 v0, v19

    .line 292
    .end local v19    # "socksPort":I
    .local v0, "socksPort":I
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v18, v5

    .end local v5    # "i":I
    .local v18, "i":I
    const-string v5, ".socks.port"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5, v0}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using SOCKS host, port: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 295
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 296
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "socks host "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 299
    .end local v18    # "i":I
    :cond_6
    move v6, v0

    goto :goto_5

    .line 282
    .end local v0    # "socksPort":I
    .end local v16    # "proxyHost":Ljava/lang/String;
    .restart local v6    # "proxyHost":Ljava/lang/String;
    .restart local v19    # "socksPort":I
    :cond_7
    move-object/from16 v16, v6

    .end local v6    # "proxyHost":Ljava/lang/String;
    .restart local v16    # "proxyHost":Ljava/lang/String;
    move/from16 v6, v19

    .line 299
    .end local v19    # "socksPort":I
    .local v6, "socksPort":I
    :goto_5
    if-eqz v9, :cond_8

    instance-of v0, v9, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_8

    .line 300
    invoke-virtual/range {p8 .. p8}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    .end local v21    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_6

    .line 301
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v21    # "socket":Ljava/net/Socket;
    :cond_8
    move-object/from16 v3, v21

    .end local v21    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :goto_6
    if-nez v3, :cond_b

    .line 302
    if-eqz v8, :cond_9

    .line 303
    new-instance v0, Ljava/net/Socket;

    new-instance v4, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    move-object/from16 v18, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .local v18, "socket":Ljava/net/Socket;
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v8, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v4, v5, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {v0, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    move-object v3, v0

    .end local v18    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_7

    .line 306
    :cond_9
    move-object/from16 v18, v3

    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v18    # "socket":Ljava/net/Socket;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".usesocketchannels"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v15, v0, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 308
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v3, "using SocketChannels"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    .end local v18    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_7

    .line 311
    .end local v3    # "socket":Ljava/net/Socket;
    .restart local v18    # "socket":Ljava/net/Socket;
    :cond_a
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    move-object v3, v0

    .end local v18    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_7

    .line 301
    :cond_b
    move-object/from16 v18, v3

    .line 313
    :goto_7
    if-ltz v14, :cond_d

    .line 314
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 315
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set socket read timeout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 316
    :cond_c
    invoke-virtual {v3, v14}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 318
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".writetimeout"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {v15, v0, v4}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v5

    .line 320
    .local v5, "writeTimeout":I
    if-eq v5, v4, :cond_f

    .line 321
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 322
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    .end local v6    # "socksPort":I
    .local v18, "socksPort":I
    const-string v6, "set socket write timeout "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    goto :goto_8

    .line 321
    .end local v18    # "socksPort":I
    .restart local v6    # "socksPort":I
    :cond_e
    move/from16 v18, v6

    .line 323
    .end local v6    # "socksPort":I
    .restart local v18    # "socksPort":I
    :goto_8
    new-instance v0, Lcom/sun/mail/util/WriteTimeoutSocket;

    invoke-direct {v0, v3, v5}, Lcom/sun/mail/util/WriteTimeoutSocket;-><init>(Ljava/net/Socket;I)V

    move-object v3, v0

    move-object v6, v3

    goto :goto_9

    .line 320
    .end local v18    # "socksPort":I
    .restart local v6    # "socksPort":I
    :cond_f
    move/from16 v18, v6

    .end local v6    # "socksPort":I
    .restart local v18    # "socksPort":I
    move-object v6, v3

    .line 325
    .end local v3    # "socket":Ljava/net/Socket;
    .local v6, "socket":Ljava/net/Socket;
    :goto_9
    if-eqz v1, :cond_10

    .line 326
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 328
    :cond_10
    :try_start_2
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "connecting..."

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 329
    if-eqz v16, :cond_11

    .line 330
    move-object v3, v6

    move-object/from16 v4, v16

    move/from16 v19, v5

    .end local v5    # "writeTimeout":I
    .local v19, "writeTimeout":I
    move/from16 v5, v22

    move-object v1, v6

    .end local v6    # "socket":Ljava/net/Socket;
    .local v1, "socket":Ljava/net/Socket;
    move-object v6, v7

    move-object/from16 v21, v7

    .end local v7    # "proxyUser":Ljava/lang/String;
    .local v21, "proxyUser":Ljava/lang/String;
    move-object/from16 v7, v17

    move-object/from16 v23, v8

    .end local v8    # "socksHost":Ljava/lang/String;
    .local v23, "socksHost":Ljava/lang/String;
    move-object/from16 v8, p2

    move-object v2, v9

    move/from16 v9, p3

    move-object v14, v10

    move/from16 v10, p4

    :try_start_3
    invoke-static/range {v3 .. v10}, Lcom/sun/mail/util/SocketFetcher;->proxyConnect(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_a

    .line 337
    :catch_2
    move-exception v0

    goto/16 :goto_e

    .line 332
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v19    # "writeTimeout":I
    .end local v21    # "proxyUser":Ljava/lang/String;
    .end local v23    # "socksHost":Ljava/lang/String;
    .restart local v5    # "writeTimeout":I
    .restart local v6    # "socket":Ljava/net/Socket;
    .restart local v7    # "proxyUser":Ljava/lang/String;
    .restart local v8    # "socksHost":Ljava/lang/String;
    :cond_11
    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object v2, v9

    move-object v14, v10

    .end local v5    # "writeTimeout":I
    .end local v6    # "socket":Ljava/net/Socket;
    .end local v7    # "proxyUser":Ljava/lang/String;
    .end local v8    # "socksHost":Ljava/lang/String;
    .restart local v1    # "socket":Ljava/net/Socket;
    .restart local v19    # "writeTimeout":I
    .restart local v21    # "proxyUser":Ljava/lang/String;
    .restart local v23    # "socksHost":Ljava/lang/String;
    if-ltz v13, :cond_12

    .line 333
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v13}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_a

    .line 335
    :cond_12
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v11, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 336
    :goto_a
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "success!"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 340
    nop

    .line 346
    if-nez p9, :cond_13

    instance-of v0, v2, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_17

    :cond_13
    instance-of v0, v1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_17

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".ssl.trust"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v3, "trusted":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v0, :cond_15

    .line 352
    :try_start_4
    new-instance v0, Lcom/sun/mail/util/MailSSLSocketFactory;

    invoke-direct {v0}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>()V

    .line 353
    .local v0, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 354
    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustAllHosts(Z)V

    goto :goto_b

    .line 356
    :cond_14
    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustedHosts([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 357
    :goto_b
    nop

    .line 363
    .local v0, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_c

    .line 358
    .end local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :catch_3
    move-exception v0

    .line 359
    .local v0, "gex":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Can\'t create MailSSLSocketFactory"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 361
    .local v4, "ioex":Ljava/io/IOException;
    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 362
    throw v4

    .line 364
    .end local v0    # "gex":Ljava/security/GeneralSecurityException;
    .end local v4    # "ioex":Ljava/io/IOException;
    :cond_15
    instance-of v0, v2, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_16

    .line 365
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .local v0, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_c

    .line 367
    .end local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :cond_16
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 368
    .restart local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    :goto_c
    invoke-virtual {v0, v1, v11, v12, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v6

    .line 369
    .end local v1    # "socket":Ljava/net/Socket;
    .restart local v6    # "socket":Ljava/net/Socket;
    move-object v1, v0

    .end local p8    # "sf":Ljavax/net/SocketFactory;
    .local v1, "sf":Ljavax/net/SocketFactory;
    goto :goto_d

    .line 376
    .end local v0    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "trusted":Ljava/lang/String;
    .end local v6    # "socket":Ljava/net/Socket;
    .local v1, "socket":Ljava/net/Socket;
    .restart local p8    # "sf":Ljavax/net/SocketFactory;
    :cond_17
    move-object v6, v1

    move-object v1, v2

    .end local p8    # "sf":Ljavax/net/SocketFactory;
    .local v1, "sf":Ljavax/net/SocketFactory;
    .restart local v6    # "socket":Ljava/net/Socket;
    :goto_d
    invoke-static {v6, v11, v15, v14, v1}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V

    .line 378
    return-object v6

    .line 337
    .end local v1    # "sf":Ljavax/net/SocketFactory;
    .end local v19    # "writeTimeout":I
    .end local v21    # "proxyUser":Ljava/lang/String;
    .end local v23    # "socksHost":Ljava/lang/String;
    .restart local v5    # "writeTimeout":I
    .restart local v7    # "proxyUser":Ljava/lang/String;
    .restart local v8    # "socksHost":Ljava/lang/String;
    .restart local p8    # "sf":Ljavax/net/SocketFactory;
    :catch_4
    move-exception v0

    move/from16 v19, v5

    move-object v1, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object v2, v9

    move-object v14, v10

    .line 338
    .end local v5    # "writeTimeout":I
    .end local v6    # "socket":Ljava/net/Socket;
    .end local v7    # "proxyUser":Ljava/lang/String;
    .end local v8    # "socksHost":Ljava/lang/String;
    .local v0, "ex":Ljava/io/IOException;
    .local v1, "socket":Ljava/net/Socket;
    .restart local v19    # "writeTimeout":I
    .restart local v21    # "proxyUser":Ljava/lang/String;
    .restart local v23    # "socksHost":Ljava/lang/String;
    :goto_e
    sget-object v3, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "connection failed"

    invoke-virtual {v3, v4, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    new-instance v9, Lcom/sun/mail/util/SocketConnectException;

    move-object v3, v9

    move-object/from16 v4, v20

    move-object v5, v0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/sun/mail/util/SocketConnectException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V

    throw v9
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 883
    new-instance v0, Lcom/sun/mail/util/SocketFetcher$1;

    invoke-direct {v0}, Lcom/sun/mail/util/SocketFetcher$1;-><init>()V

    .line 884
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 883
    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;
    .locals 25
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "useSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    move-object/from16 v0, p3

    move/from16 v10, p4

    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSocket, host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, p0

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v12, p1

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", useSSL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    move-object/from16 v11, p0

    move/from16 v12, p1

    .line 128
    :goto_0
    if-nez v0, :cond_1

    .line 129
    const-string v0, "socket"

    move-object v13, v0

    .end local p3    # "prefix":Ljava/lang/String;
    .local v0, "prefix":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v0    # "prefix":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    :cond_1
    move-object v13, v0

    .line 130
    .end local p3    # "prefix":Ljava/lang/String;
    .local v13, "prefix":Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_2

    .line 131
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v14, v0

    .end local p2    # "props":Ljava/util/Properties;
    .local v0, "props":Ljava/util/Properties;
    goto :goto_2

    .line 130
    .end local v0    # "props":Ljava/util/Properties;
    .restart local p2    # "props":Ljava/util/Properties;
    :cond_2
    move-object/from16 v14, p2

    .line 132
    .end local p2    # "props":Ljava/util/Properties;
    .local v14, "props":Ljava/util/Properties;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".connectiontimeout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v14, v0, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v15

    .line 134
    .local v15, "cto":I
    const/16 v16, 0x0

    .line 135
    .local v16, "socket":Ljava/net/Socket;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".localaddress"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 136
    .local v17, "localaddrstr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 137
    .local v0, "localaddr":Ljava/net/InetAddress;
    if-eqz v17, :cond_3

    .line 138
    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_3

    .line 137
    :cond_3
    move-object/from16 v18, v0

    .line 139
    .end local v0    # "localaddr":Ljava/net/InetAddress;
    .local v18, "localaddr":Ljava/net/InetAddress;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".localport"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v14, v0, v2}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v19

    .line 142
    .local v19, "localport":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".socketFactory.fallback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v14, v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v20

    .line 145
    .local v20, "fb":Z
    const/4 v2, -0x1

    .line 146
    .local v2, "sfPort":I
    const-string/jumbo v3, "unknown socket factory"

    .line 147
    .local v3, "sfErr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".timeout"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v9

    .line 153
    .local v9, "to":I
    const/4 v0, 0x0

    .line 154
    .local v0, "sf":Ljavax/net/SocketFactory;
    const/4 v4, 0x0

    .line 155
    .local v4, "sfPortName":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 156
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ssl.socketFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 157
    .local v5, "sfo":Ljava/lang/Object;
    instance-of v6, v5, Ljavax/net/SocketFactory;

    if-eqz v6, :cond_4

    .line 158
    move-object v6, v5

    check-cast v6, Ljavax/net/SocketFactory;

    move-object v0, v6

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSL socket factory instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 161
    :cond_4
    if-nez v0, :cond_5

    .line 162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ssl.socketFactory.class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v14, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "sfClass":Ljava/lang/String;
    invoke-static {v6}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v7

    move-object v0, v7

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSL socket factory class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 167
    .end local v6    # "sfClass":Ljava/lang/String;
    :cond_5
    const-string v6, ".ssl.socketFactory.port"

    move-object v4, v6

    goto :goto_4

    .line 198
    .end local v0    # "sf":Ljavax/net/SocketFactory;
    .end local v4    # "sfPortName":Ljava/lang/String;
    .end local v5    # "sfo":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    move/from16 p2, v9

    goto/16 :goto_7

    .line 196
    :catch_1
    move-exception v0

    move/from16 p2, v9

    goto/16 :goto_8

    .line 170
    .restart local v0    # "sf":Ljavax/net/SocketFactory;
    .restart local v4    # "sfPortName":Ljava/lang/String;
    :cond_6
    :goto_4
    if-nez v0, :cond_9

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".socketFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 172
    .restart local v5    # "sfo":Ljava/lang/Object;
    instance-of v6, v5, Ljavax/net/SocketFactory;

    if-eqz v6, :cond_7

    .line 173
    move-object v6, v5

    check-cast v6, Ljavax/net/SocketFactory;

    move-object v0, v6

    .line 174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket factory instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 176
    :cond_7
    if-nez v0, :cond_8

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".socketFactory.class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-virtual {v14, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 179
    .restart local v6    # "sfClass":Ljava/lang/String;
    invoke-static {v6}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v7

    move-object v0, v7

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "socket factory class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 182
    .end local v6    # "sfClass":Ljava/lang/String;
    :cond_8
    const-string v6, ".socketFactory.port"
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object v8, v4

    goto :goto_5

    .line 170
    .end local v5    # "sfo":Ljava/lang/Object;
    :cond_9
    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object v8, v4

    .line 186
    .end local v0    # "sf":Ljavax/net/SocketFactory;
    .end local v3    # "sfErr":Ljava/lang/String;
    .end local v4    # "sfPortName":Ljava/lang/String;
    .local v8, "sfPortName":Ljava/lang/String;
    .local v21, "sf":Ljavax/net/SocketFactory;
    .local v22, "sfErr":Ljava/lang/String;
    :goto_5
    if-eqz v21, :cond_e

    .line 187
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 191
    .end local v2    # "sfPort":I
    .local v0, "sfPort":I
    if-ne v0, v1, :cond_a

    .line 192
    move/from16 v0, p1

    move/from16 v23, v0

    goto :goto_6

    .line 191
    :cond_a
    move/from16 v23, v0

    .line 193
    .end local v0    # "sfPort":I
    .local v23, "sfPort":I
    :goto_6
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v23

    move v4, v15

    move v5, v9

    move-object v6, v14

    move-object v7, v13

    move-object/from16 v24, v8

    .end local v8    # "sfPortName":Ljava/lang/String;
    .local v24, "sfPortName":Ljava/lang/String;
    move-object/from16 v8, v21

    move/from16 p2, v9

    .end local v9    # "to":I
    .local p2, "to":I
    move/from16 v9, p4

    :try_start_2
    invoke-static/range {v0 .. v9}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v0

    move/from16 v2, v23

    goto/16 :goto_9

    .line 198
    .end local v21    # "sf":Ljavax/net/SocketFactory;
    .end local v24    # "sfPortName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v0, v22

    move/from16 v2, v23

    goto :goto_7

    .line 196
    :catch_3
    move-exception v0

    move-object/from16 v3, v22

    move/from16 v2, v23

    goto :goto_8

    .line 198
    .end local v23    # "sfPort":I
    .end local p2    # "to":I
    .restart local v2    # "sfPort":I
    .restart local v9    # "to":I
    :catch_4
    move-exception v0

    move/from16 p2, v9

    move-object v1, v0

    move-object/from16 v0, v22

    .line 199
    .end local v9    # "to":I
    .end local v22    # "sfErr":Ljava/lang/String;
    .local v0, "sfErr":Ljava/lang/String;
    .local v1, "ex":Ljava/lang/Exception;
    .restart local p2    # "to":I
    :goto_7
    if-nez v20, :cond_d

    .line 200
    instance-of v3, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_b

    .line 201
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    .line 202
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    .line 203
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_b

    .line 204
    move-object v1, v3

    check-cast v1, Ljava/lang/Exception;

    .line 206
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_b
    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_c

    .line 207
    move-object v3, v1

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 208
    :cond_c
    new-instance v9, Lcom/sun/mail/util/SocketConnectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v9

    move-object v5, v1

    move-object/from16 v6, p0

    move v7, v2

    move v8, v15

    invoke-direct/range {v3 .. v8}, Lcom/sun/mail/util/SocketConnectException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;II)V

    throw v9

    .line 199
    :cond_d
    move-object/from16 v22, v0

    move-object/from16 v9, v16

    move/from16 v16, v2

    goto :goto_a

    .line 196
    .end local v0    # "sfErr":Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local p2    # "to":I
    .restart local v9    # "to":I
    .restart local v22    # "sfErr":Ljava/lang/String;
    :catch_5
    move-exception v0

    move/from16 p2, v9

    move-object/from16 v3, v22

    .line 197
    .end local v9    # "to":I
    .end local v22    # "sfErr":Ljava/lang/String;
    .local v0, "sex":Ljava/net/SocketTimeoutException;
    .local v3, "sfErr":Ljava/lang/String;
    .restart local p2    # "to":I
    :goto_8
    throw v0

    .line 186
    .end local v0    # "sex":Ljava/net/SocketTimeoutException;
    .end local v3    # "sfErr":Ljava/lang/String;
    .end local p2    # "to":I
    .restart local v8    # "sfPortName":Ljava/lang/String;
    .restart local v9    # "to":I
    .restart local v21    # "sf":Ljavax/net/SocketFactory;
    .restart local v22    # "sfErr":Ljava/lang/String;
    :cond_e
    move-object/from16 v24, v8

    move/from16 p2, v9

    .line 211
    .end local v8    # "sfPortName":Ljava/lang/String;
    .end local v9    # "to":I
    .end local v21    # "sf":Ljavax/net/SocketFactory;
    .restart local p2    # "to":I
    :goto_9
    move-object/from16 v9, v16

    move/from16 v16, v2

    .line 213
    .end local v2    # "sfPort":I
    .local v9, "socket":Ljava/net/Socket;
    .local v16, "sfPort":I
    :goto_a
    if-nez v9, :cond_f

    .line 214
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, p1

    move v4, v15

    move/from16 v5, p2

    move-object v6, v14

    move-object v7, v13

    move-object v10, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .local v10, "socket":Ljava/net/Socket;
    move/from16 v9, p4

    invoke-static/range {v0 .. v9}, Lcom/sun/mail/util/SocketFetcher;->createSocket(Ljava/net/InetAddress;ILjava/lang/String;IIILjava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;Z)Ljava/net/Socket;

    move-result-object v9

    move/from16 v1, p2

    .end local v10    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    goto :goto_b

    .line 218
    :cond_f
    move-object v10, v9

    .end local v9    # "socket":Ljava/net/Socket;
    .restart local v10    # "socket":Ljava/net/Socket;
    move/from16 v1, p2

    .end local p2    # "to":I
    .local v1, "to":I
    if-ltz v1, :cond_11

    .line 219
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 220
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set socket read timeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 221
    :cond_10
    invoke-virtual {v10, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 225
    :cond_11
    move-object v9, v10

    .end local v10    # "socket":Ljava/net/Socket;
    .restart local v9    # "socket":Ljava/net/Socket;
    :goto_b
    return-object v9
.end method

.method private static getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;
    .locals 5
    .param p0, "sfClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 389
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 394
    :cond_0
    invoke-static {}, Lcom/sun/mail/util/SocketFetcher;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 395
    .local v0, "cl":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 396
    .local v1, "clsSockFact":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 398
    :try_start_0
    invoke-static {p0, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 399
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 401
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 402
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 404
    :cond_2
    const-string v3, "getDefault"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 406
    .local v3, "mthGetDefault":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    .line 407
    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/SocketFactory;

    .line 408
    .local v2, "sf":Ljavax/net/SocketFactory;
    return-object v2

    .line 390
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "clsSockFact":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "sf":Ljavax/net/SocketFactory;
    .end local v3    # "mthGetDefault":Ljava/lang/reflect/Method;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isRecoverable(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 641
    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static matchCert(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .locals 12
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 684
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matchCert server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 695
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "sun.security.util.HostnameChecker"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 699
    .local v3, "hnc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getInstance"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 701
    .local v4, "getInstance":Ljava/lang/reflect/Method;
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-array v6, v2, [Ljava/lang/Object;

    .line 702
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    .line 701
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 705
    .local v5, "hostnameChecker":Ljava/lang/Object;
    sget-object v6, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 706
    sget-object v6, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v7, "using sun.security.util.HostnameChecker"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 707
    :cond_1
    const-string v6, "match"

    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Ljava/security/cert/X509Certificate;

    aput-object v8, v7, v2

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 710
    .local v6, "match":Ljava/lang/reflect/Method;
    :try_start_1
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 711
    return v2

    .line 712
    :catch_0
    move-exception v7

    .line 713
    .local v7, "cex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    sget-object v8, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v10, "HostnameChecker FAIL"

    invoke-virtual {v8, v9, v10, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 714
    return v1

    .line 716
    .end local v3    # "hnc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getInstance":Ljava/lang/reflect/Method;
    .end local v5    # "hostnameChecker":Ljava/lang/Object;
    .end local v6    # "match":Ljava/lang/reflect/Method;
    .end local v7    # "cex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    .line 717
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v4, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v6, "NO sun.security.util.HostnameChecker"

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    .end local v3    # "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    .line 732
    .local v3, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v3, :cond_5

    .line 733
    const/4 v4, 0x0

    .line 734
    .local v4, "foundName":Z
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 735
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 736
    .local v6, "nameEnt":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 737
    .local v7, "type":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_3

    .line 738
    const/4 v4, 0x1

    .line 739
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 740
    .local v8, "name":Ljava/lang/String;
    sget-object v9, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 741
    sget-object v9, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 742
    :cond_2
    invoke-static {p0, v8}, Lcom/sun/mail/util/SocketFetcher;->matchServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_3
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v9, :cond_3

    .line 743
    return v2

    .line 745
    .end local v6    # "nameEnt":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v7    # "type":Ljava/lang/Integer;
    .end local v8    # "name":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 746
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<*>;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 747
    return v1

    .line 751
    .end local v3    # "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v4    # "foundName":Z
    :cond_5
    goto :goto_1

    .line 749
    :catch_2
    move-exception v0

    .line 755
    :goto_1
    const-string v0, "CN=([^,]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 756
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 757
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sun/mail/util/SocketFetcher;->matchServer(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 758
    return v2

    .line 760
    :cond_6
    return v1
.end method

.method private static matchServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "server"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 771
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "match server "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 773
    :cond_0
    const-string v0, "*."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 775
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "tail":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_1

    .line 777
    return v7

    .line 778
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v8, v1, v2

    .line 779
    .local v8, "off":I
    const/4 v9, 0x1

    if-ge v8, v9, :cond_2

    .line 780
    return v7

    .line 782
    :cond_2
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 783
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v8

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_3

    move v7, v9

    goto :goto_0

    :cond_3
    nop

    .line 782
    :goto_0
    return v7

    .line 785
    .end local v0    # "tail":Ljava/lang/String;
    .end local v8    # "off":I
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static proxyConnect(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 19
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "proxyUser"    # Ljava/lang/String;
    .param p4, "proxyPassword"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "port"    # I
    .param p7, "cto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 808
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v9}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const-string v9, " to "

    const-string v10, ":"

    if-eqz v0, :cond_0

    .line 809
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connecting through proxy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 812
    :cond_0
    if-ltz v8, :cond_1

    .line 813
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_0

    .line 815
    :cond_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 816
    :goto_0
    new-instance v0, Ljava/io/PrintStream;

    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 817
    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v0, v11, v13, v12}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    move-object v11, v0

    .line 818
    .local v11, "os":Ljava/io/PrintStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v0

    .line 819
    .local v12, "requestBuilder":Ljava/lang/StringBuilder;
    const-string v0, "CONNECT "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 820
    const-string v13, " HTTP/1.1\r\n"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    const-string v0, "Host: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 822
    const-string v13, "\r\n"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v14, 0x3a

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 825
    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 826
    .local v0, "upbytes":[B
    new-instance v14, Ljava/lang/String;

    .line 827
    invoke-static {v0}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "upbytes":[B
    .local v16, "upbytes":[B
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v14

    .line 829
    .local v0, "proxyHeaderValue":Ljava/lang/String;
    const-string v14, "Proxy-Authorization: Basic "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 830
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .end local v0    # "proxyHeaderValue":Ljava/lang/String;
    .end local v16    # "upbytes":[B
    :cond_2
    const-string v0, "Proxy-Connection: keep-alive\r\n\r\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v11}, Ljava/io/PrintStream;->flush()V

    .line 835
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    .line 836
    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v13, v0

    .line 838
    .local v13, "r":Ljava/io/BufferedReader;
    const/4 v0, 0x1

    move v14, v0

    .line 839
    .local v14, "first":Z
    :goto_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .local v15, "line":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 840
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 841
    goto/16 :goto_3

    .line 842
    :cond_3
    sget-object v0, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v0, v15}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 843
    if-eqz v14, :cond_5

    .line 844
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v0

    .line 845
    .local v16, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 846
    .local v17, "http":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 847
    .local v1, "code":Ljava/lang/String;
    const-string v0, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 860
    const/4 v14, 0x0

    .line 861
    .end local v1    # "code":Ljava/lang/String;
    .end local v16    # "st":Ljava/util/StringTokenizer;
    .end local v17    # "http":Ljava/lang/String;
    move-object/from16 v1, p0

    goto :goto_1

    .line 849
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v16    # "st":Ljava/util/StringTokenizer;
    .restart local v17    # "http":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    goto :goto_2

    .line 850
    :catch_0
    move-exception v0

    .line 853
    :goto_2
    new-instance v0, Ljava/net/ConnectException;

    move-object/from16 v18, v1

    .end local v1    # "code":Ljava/lang/String;
    .local v18, "code":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection through proxy "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 857
    .local v0, "ex":Ljava/net/ConnectException;
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "connect failed"

    invoke-virtual {v1, v4, v9, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    throw v0

    .line 843
    .end local v0    # "ex":Ljava/net/ConnectException;
    .end local v16    # "st":Ljava/util/StringTokenizer;
    .end local v17    # "http":Ljava/lang/String;
    .end local v18    # "code":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v4, p3

    goto/16 :goto_1

    .line 863
    :cond_6
    :goto_3
    return-void
.end method

.method public static startTLS(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "socket"

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 9
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 462
    .local v0, "port":I
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    sget-object v1, Lcom/sun/mail/util/SocketFetcher;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTLS host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finer(Ljava/lang/String;)V

    .line 465
    :cond_0
    const-string/jumbo v1, "unknown socket factory"

    .line 467
    .local v1, "sfErr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 468
    .local v2, "ssf":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v3, 0x0

    .line 471
    .local v3, "sf":Ljavax/net/SocketFactory;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ssl.socketFactory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 472
    .local v4, "sfo":Ljava/lang/Object;
    instance-of v5, v4, Ljavax/net/SocketFactory;

    if-eqz v5, :cond_1

    .line 473
    move-object v5, v4

    check-cast v5, Ljavax/net/SocketFactory;

    move-object v3, v5

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSL socket factory instance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 476
    :cond_1
    if-nez v3, :cond_2

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ssl.socketFactory.class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 478
    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, "sfClass":Ljava/lang/String;
    invoke-static {v5}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v6

    move-object v3, v6

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSL socket factory class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 482
    .end local v5    # "sfClass":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    instance-of v5, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_3

    .line 483
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/SSLSocketFactory;

    move-object v2, v5

    .line 487
    :cond_3
    if-nez v2, :cond_6

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".socketFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 489
    nop

    instance-of v5, v4, Ljavax/net/SocketFactory;

    if-eqz v5, :cond_4

    .line 490
    move-object v5, v4

    check-cast v5, Ljavax/net/SocketFactory;

    move-object v3, v5

    .line 491
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "socket factory instance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 493
    :cond_4
    if-nez v3, :cond_5

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".socketFactory.class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 495
    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 496
    .restart local v5    # "sfClass":Ljava/lang/String;
    invoke-static {v5}, Lcom/sun/mail/util/SocketFetcher;->getSocketFactory(Ljava/lang/String;)Ljavax/net/SocketFactory;

    move-result-object v6

    move-object v3, v6

    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "socket factory class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 499
    .end local v5    # "sfClass":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    instance-of v5, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_6

    .line 500
    move-object v5, v3

    check-cast v5, Ljavax/net/ssl/SSLSocketFactory;

    move-object v2, v5

    .line 504
    :cond_6
    const/4 v5, 0x1

    if-nez v2, :cond_9

    .line 506
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".ssl.trust"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v6

    .local v7, "trusted":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 509
    :try_start_1
    new-instance v6, Lcom/sun/mail/util/MailSSLSocketFactory;

    invoke-direct {v6}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>()V

    .line 510
    .local v6, "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 511
    invoke-virtual {v6, v5}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustAllHosts(Z)V

    goto :goto_0

    .line 513
    :cond_7
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sun/mail/util/MailSSLSocketFactory;->setTrustedHosts([Ljava/lang/String;)V

    .line 514
    :goto_0
    move-object v2, v6

    .line 515
    const-string v8, "mail SSL socket factory"
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v8

    .line 521
    .end local v6    # "msf":Lcom/sun/mail/util/MailSSLSocketFactory;
    goto :goto_1

    .line 516
    :catch_0
    move-exception v5

    .line 517
    .local v5, "gex":Ljava/security/GeneralSecurityException;
    :try_start_2
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Can\'t create MailSSLSocketFactory"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 519
    .local v6, "ioex":Ljava/io/IOException;
    invoke-virtual {v6, v5}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 520
    nop

    .end local v0    # "port":I
    .end local v1    # "sfErr":Ljava/lang/String;
    .end local p0    # "socket":Ljava/net/Socket;
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "props":Ljava/util/Properties;
    .end local p3    # "prefix":Ljava/lang/String;
    throw v6

    .line 523
    .end local v5    # "gex":Ljava/security/GeneralSecurityException;
    .end local v6    # "ioex":Ljava/io/IOException;
    .restart local v0    # "port":I
    .restart local v1    # "sfErr":Ljava/lang/String;
    .restart local p0    # "socket":Ljava/net/Socket;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "props":Ljava/util/Properties;
    .restart local p3    # "prefix":Ljava/lang/String;
    :cond_8
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/SSLSocketFactory;

    move-object v2, v6

    .line 524
    const-string v6, "default SSL socket factory"

    move-object v1, v6

    .line 528
    .end local v7    # "trusted":Ljava/lang/String;
    :cond_9
    :goto_1
    invoke-virtual {v2, p0, p1, v0, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    move-object p0, v5

    .line 529
    invoke-static {p0, p1, p2, p3, v2}, Lcom/sun/mail/util/SocketFetcher;->configureSSLSocket(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljavax/net/SocketFactory;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 547
    .end local v2    # "ssf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "sf":Ljavax/net/SocketFactory;
    .end local v4    # "sfo":Ljava/lang/Object;
    nop

    .line 548
    return-object p0

    .line 530
    :catch_1
    move-exception v2

    .line 531
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v3, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_a

    .line 532
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    .line 533
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    .line 534
    .local v3, "t":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/Exception;

    if-eqz v4, :cond_a

    .line 535
    move-object v2, v3

    check-cast v2, Ljava/lang/Exception;

    .line 537
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_a
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_b

    .line 538
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 540
    :cond_b
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in startTLS using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": host, port: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 545
    .local v3, "ioex":Ljava/io/IOException;
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 546
    throw v3
.end method

.method public static startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 444
    .local v0, "a":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "host":Ljava/lang/String;
    invoke-static {p0, v1, p1, p2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    return-object v2
.end method

.method private static stringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 870
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 874
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method
