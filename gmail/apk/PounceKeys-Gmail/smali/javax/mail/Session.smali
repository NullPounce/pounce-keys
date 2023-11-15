.class public final Ljavax/mail/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static final confDir:Ljava/lang/String;

.field private static defaultSession:Ljavax/mail/Session;


# instance fields
.field private final addressMap:Ljava/util/Properties;

.field private final authTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljavax/mail/URLName;",
            "Ljavax/mail/PasswordAuthentication;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticator:Ljavax/mail/Authenticator;

.field private debug:Z

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private out:Ljava/io/PrintStream;

.field private final props:Ljava/util/Properties;

.field private final providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final providersByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/mail/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final providersByProtocol:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/mail/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljavax/mail/EventQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 209
    const/4 v0, 0x0

    sput-object v0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "dir":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljavax/mail/Session$1;

    invoke-direct {v1}, Ljavax/mail/Session$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 233
    :goto_0
    sput-object v0, Ljavax/mail/Session;->confDir:Ljava/lang/String;

    .line 234
    .end local v0    # "dir":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V
    .locals 4
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "authenticator"    # Ljavax/mail/Authenticator;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    .line 203
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    .line 238
    iput-object p1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    .line 239
    iput-object p2, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    .line 241
    const-string v0, "mail.debug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    .line 244
    :cond_0
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V

    .line 245
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v2, "Jakarta Mail version {0}"

    const-string v3, "1.6.6-SNAPSHOT"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    if-eqz p2, :cond_1

    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 252
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 254
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadProviders(Ljava/lang/Class;)V

    .line 255
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadAddressMap(Ljava/lang/Class;)V

    .line 256
    new-instance v1, Ljavax/mail/EventQueue;

    const-string v2, "mail.event.executor"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Ljavax/mail/Session;->q:Ljavax/mail/EventQueue;

    .line 257
    return-void
.end method

.method static synthetic access$000(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 0
    .param p0, "x0"    # Ljavax/mail/Session;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1}, Ljavax/mail/Session;->loadProvidersFromStream(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$100(Ljavax/mail/Session;)Ljava/util/Properties;
    .locals 1
    .param p0, "x0"    # Ljavax/mail/Session;

    .line 191
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    return-object v0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1259
    new-instance v0, Ljavax/mail/Session$4;

    invoke-direct {v0}, Ljavax/mail/Session$4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getDefaultInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;

    .line 395
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .locals 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "authenticator"    # Ljavax/mail/Authenticator;

    const-class v0, Ljavax/mail/Session;

    monitor-enter v0

    .line 351
    :try_start_0
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    if-nez v1, :cond_1

    .line 352
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 353
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 355
    :cond_0
    new-instance v2, Ljavax/mail/Session;

    invoke-direct {v2, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    sput-object v2, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    .line 356
    .end local v1    # "security":Ljava/lang/SecurityManager;
    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, v1, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-ne v1, p1, :cond_2

    .line 359
    goto :goto_0

    .line 360
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 362
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 364
    nop

    .line 370
    :goto_0
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 367
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Access to default session denied"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local p0    # "props":Ljava/util/Properties;
    .end local p1    # "authenticator":Ljavax/mail/Authenticator;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .locals 2
    .param p0, "props"    # Ljava/util/Properties;

    .line 298
    new-instance v0, Ljavax/mail/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .locals 1
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "authenticator"    # Ljavax/mail/Authenticator;

    .line 281
    new-instance v0, Ljavax/mail/Session;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1277
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    new-instance v0, Ljavax/mail/Session$5;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
    .locals 1
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "name"    # Ljava/lang/String;

    .line 1299
    new-instance v0, Ljavax/mail/Session$6;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$6;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method

.method private getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;
    .locals 10
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavax/mail/Service;",
            ">(",
            "Ljavax/mail/Provider;",
            "Ljavax/mail/URLName;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 792
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, " "

    const-string v1, "Exception loading provider"

    if-eqz p1, :cond_7

    .line 797
    if-nez p2, :cond_0

    .line 798
    new-instance v9, Ljavax/mail/URLName;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v9

    .line 802
    :cond_0
    const/4 v2, 0x0

    .line 806
    .local v2, "service":Ljava/lang/Object;
    iget-object v3, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v3, :cond_1

    .line 807
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .local v3, "cl":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 809
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 812
    .restart local v3    # "cl":Ljava/lang/ClassLoader;
    :goto_0
    const/4 v4, 0x0

    .line 815
    .local v4, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 816
    .local v6, "ccl":Ljava/lang/ClassLoader;
    if-eqz v6, :cond_2

    .line 818
    nop

    .line 819
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v7

    .line 822
    goto :goto_1

    .line 820
    :catch_0
    move-exception v7

    .line 823
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 824
    :cond_3
    nop

    .line 825
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 827
    :cond_4
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 844
    .end local v6    # "ccl":Ljava/lang/ClassLoader;
    goto :goto_2

    .line 828
    .restart local v6    # "ccl":Ljava/lang/ClassLoader;
    :cond_5
    new-instance v7, Ljava/lang/ClassCastException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local v2    # "service":Ljava/lang/Object;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p1    # "provider":Ljavax/mail/Provider;
    .end local p2    # "url":Ljavax/mail/URLName;
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 830
    .end local v6    # "ccl":Ljava/lang/ClassLoader;
    .restart local v2    # "service":Ljava/lang/Object;
    .restart local v3    # "cl":Ljava/lang/ClassLoader;
    .restart local v4    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "provider":Ljavax/mail/Provider;
    .restart local p2    # "url":Ljavax/mail/URLName;
    .restart local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_1
    move-exception v6

    .line 835
    .local v6, "ex1":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 836
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v7, :cond_6

    .line 843
    nop

    .line 848
    .end local v6    # "ex1":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Class;

    const-class v6, Ljavax/mail/Session;

    aput-object v6, v0, v5

    const-class v5, Ljavax/mail/URLName;

    const/4 v6, 0x1

    aput-object v5, v0, v6

    .line 849
    .local v0, "c":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 851
    .local v5, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object v6

    .line 852
    .local v6, "o":[Ljava/lang/Object;
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 857
    .end local v2    # "service":Ljava/lang/Object;
    .end local v5    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v6    # "o":[Ljava/lang/Object;
    .local v0, "service":Ljava/lang/Object;
    nop

    .line 859
    invoke-virtual {p3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Service;

    return-object v1

    .line 854
    .end local v0    # "service":Ljava/lang/Object;
    .restart local v2    # "service":Ljava/lang/Object;
    :catch_2
    move-exception v0

    .line 855
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v1, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 837
    .end local v0    # "ex":Ljava/lang/Exception;
    .local v6, "ex1":Ljava/lang/Exception;
    :cond_6
    :try_start_5
    new-instance v5, Ljava/lang/ClassCastException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local v2    # "service":Ljava/lang/Object;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "ex1":Ljava/lang/Exception;
    .end local p1    # "provider":Ljavax/mail/Provider;
    .end local p2    # "url":Ljavax/mail/URLName;
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 839
    .restart local v2    # "service":Ljava/lang/Object;
    .restart local v3    # "cl":Ljava/lang/ClassLoader;
    .restart local v4    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "ex1":Ljava/lang/Exception;
    .restart local p1    # "provider":Ljavax/mail/Provider;
    .restart local p2    # "url":Ljavax/mail/URLName;
    .restart local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_3
    move-exception v0

    .line 841
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v5, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v7, v1, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 842
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "service":Ljava/lang/Object;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "ex1":Ljava/lang/Exception;
    :cond_7
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;
    .locals 2
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 622
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    if-ne v0, v1, :cond_0

    .line 626
    const-class v0, Ljavax/mail/Store;

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;

    move-result-object v0

    check-cast v0, Ljavax/mail/Store;

    return-object v0

    .line 623
    :cond_0
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "invalid provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1317
    new-instance v0, Ljavax/mail/Session$7;

    invoke-direct {v0, p0}, Ljavax/mail/Session$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/URL;

    return-object v0
.end method

.method private getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .locals 2
    .param p1, "provider"    # Ljavax/mail/Provider;
    .param p2, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 768
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    if-ne v0, v1, :cond_0

    .line 772
    const-class v0, Ljavax/mail/Transport;

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;

    move-result-object v0

    check-cast v0, Ljavax/mail/Transport;

    return-object v0

    .line 769
    :cond_0
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "invalid provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final declared-synchronized initLogger()V
    .locals 5

    monitor-enter p0

    .line 260
    :try_start_0
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DEBUG"

    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    invoke-virtual {p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 259
    .end local p0    # "this":Ljavax/mail/Session;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadAddressMap(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1093
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljavax/mail/Session$3;

    invoke-direct {v0, p0}, Ljavax/mail/Session$3;-><init>(Ljavax/mail/Session;)V

    .line 1101
    .local v0, "loader":Ljavax/mail/StreamLoader;
    const-string v1, "/META-INF/javamail.default.address.map"

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v0, v2}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V

    .line 1104
    const-string v1, "META-INF/javamail.address.map"

    invoke-direct {p0, v1, p1, v0}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1109
    :try_start_0
    sget-object v1, Ljavax/mail/Session;->confDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "javamail.address.map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    nop

    .line 1113
    iget-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1114
    iget-object v1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "failed to load address map, using defaults"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1115
    iget-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v2, "rfc822"

    const-string v3, "smtp"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    :cond_1
    return-void
.end method

.method private loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "loader"    # Ljavax/mail/StreamLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/mail/StreamLoader;",
            ")V"
        }
    .end annotation

    .line 1197
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Exception loading resource"

    const/4 v1, 0x0

    .line 1200
    .local v1, "anyLoaded":Z
    const/4 v2, 0x0

    .line 1202
    .local v2, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v2, v3

    .line 1203
    if-nez v2, :cond_0

    .line 1204
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v2, v3

    .line 1205
    :cond_0
    if-eqz v2, :cond_1

    .line 1206
    invoke-static {v2, p1}, Ljavax/mail/Session;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    .local v3, "urls":[Ljava/net/URL;
    goto :goto_0

    .line 1208
    .end local v3    # "urls":[Ljava/net/URL;
    :cond_1
    invoke-static {p1}, Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    .line 1209
    .restart local v3    # "urls":[Ljava/net/URL;
    :goto_0
    if-eqz v3, :cond_5

    .line 1210
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_5

    .line 1211
    aget-object v5, v3, v4

    .line 1212
    .local v5, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 1213
    .local v6, "clis":Ljava/io/InputStream;
    iget-object v7, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v9, "URL {0}"

    invoke-virtual {v7, v8, v9, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1215
    :try_start_1
    invoke-static {v5}, Ljavax/mail/Session;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v7

    move-object v6, v7

    .line 1216
    if-eqz v6, :cond_2

    .line 1217
    invoke-interface {p3, v6}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1218
    const/4 v1, 0x1

    .line 1219
    iget-object v7, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v9, "successfully loaded resource: {0}"

    invoke-virtual {v7, v8, v9, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1222
    :cond_2
    iget-object v7, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v9, "not loading resource: {0}"

    invoke-virtual {v7, v8, v9, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    :goto_2
    if-eqz v6, :cond_3

    .line 1236
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    .line 1237
    :catch_0
    move-exception v7

    .line 1238
    goto :goto_6

    .line 1237
    :cond_3
    :goto_3
    goto :goto_6

    .line 1234
    :catchall_0
    move-exception v7

    goto :goto_4

    .line 1230
    :catch_1
    move-exception v7

    .line 1231
    .local v7, "sex":Ljava/lang/SecurityException;
    :try_start_3
    iget-object v8, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v0, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1235
    .end local v7    # "sex":Ljava/lang/SecurityException;
    if-eqz v6, :cond_3

    .line 1236
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 1227
    :catch_2
    move-exception v7

    .line 1228
    .local v7, "ioex":Ljava/io/IOException;
    :try_start_5
    iget-object v8, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v0, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1235
    .end local v7    # "ioex":Ljava/io/IOException;
    if-eqz v6, :cond_3

    .line 1236
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 1235
    :goto_4
    if-eqz v6, :cond_4

    .line 1236
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    .line 1237
    :catch_3
    move-exception v8

    :cond_4
    :goto_5
    nop

    .line 1238
    nop

    .end local v1    # "anyLoaded":Z
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "loader":Ljavax/mail/StreamLoader;
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1225
    .restart local v1    # "anyLoaded":Z
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p3    # "loader":Ljavax/mail/StreamLoader;
    :catch_4
    move-exception v7

    .line 1235
    if-eqz v6, :cond_3

    .line 1236
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 1210
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "clis":Ljava/io/InputStream;
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1243
    .end local v2    # "cld":Ljava/lang/ClassLoader;
    .end local v3    # "urls":[Ljava/net/URL;
    .end local v4    # "i":I
    :cond_5
    goto :goto_7

    .line 1241
    :catch_5
    move-exception v2

    .line 1242
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1246
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_7
    if-nez v1, :cond_6

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, p3, v2}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V

    .line 1252
    :cond_6
    return-void
.end method

.method private loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "loader"    # Ljavax/mail/StreamLoader;

    .line 1142
    const-string v0, "not loading file: "

    const/4 v1, 0x0

    .line 1144
    .local v1, "clis":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 1145
    invoke-interface {p2, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1146
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v4, "successfully loaded file: {0}"

    invoke-virtual {v2, v3, v4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    nop

    .line 1158
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1159
    :cond_0
    :goto_0
    goto :goto_3

    :catch_0
    move-exception v0

    .line 1160
    goto :goto_3

    .line 1156
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1152
    :catch_1
    move-exception v2

    .line 1153
    .local v2, "sex":Ljava/lang/SecurityException;
    :try_start_2
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1154
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1157
    .end local v2    # "sex":Ljava/lang/SecurityException;
    :cond_1
    if-eqz v1, :cond_0

    .line 1158
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1149
    :catch_2
    move-exception v2

    .line 1150
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1151
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1157
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v1, :cond_0

    .line 1158
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1157
    :goto_1
    if-eqz v1, :cond_3

    .line 1158
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 1159
    :catch_3
    move-exception v2

    :cond_3
    :goto_2
    nop

    .line 1160
    throw v0

    .line 1147
    :catch_4
    move-exception v0

    .line 1157
    if-eqz v1, :cond_0

    .line 1158
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 1161
    :goto_3
    return-void
.end method

.method private loadProviders(Ljava/lang/Class;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 948
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljavax/mail/Session$2;

    invoke-direct {v0, v1}, Ljavax/mail/Session$2;-><init>(Ljavax/mail/Session;)V

    move-object v3, v0

    .line 958
    .local v3, "loader":Ljavax/mail/StreamLoader;
    :try_start_0
    sget-object v0, Ljavax/mail/Session;->confDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "javamail.providers"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 963
    const-class v0, Ljavax/mail/Provider;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 964
    .local v0, "sl":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljavax/mail/Provider;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/Provider;

    .line 965
    .local v5, "p":Ljavax/mail/Provider;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/sun/mail/util/DefaultProvider;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 966
    invoke-virtual {v1, v5}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 967
    .end local v5    # "p":Ljavax/mail/Provider;
    :cond_1
    goto :goto_1

    .line 970
    :cond_2
    const-string v4, "META-INF/javamail.providers"

    invoke-direct {v1, v4, v2, v3}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 973
    const-string v4, "/META-INF/javamail.default.providers"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V

    .line 976
    const-class v4, Ljavax/mail/Provider;

    invoke-static {v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/Provider;

    .line 978
    .restart local v5    # "p":Ljavax/mail/Provider;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/sun/mail/util/DefaultProvider;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 979
    invoke-virtual {v1, v5}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 980
    .end local v5    # "p":Ljavax/mail/Provider;
    :cond_3
    goto :goto_2

    .line 985
    :cond_4
    iget-object v4, v1, Ljavax/mail/Session;->providers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 986
    iget-object v4, v1, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "failed to load any providers, using defaults"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 988
    new-instance v4, Ljavax/mail/Provider;

    sget-object v7, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v8, "imap"

    const-string v9, "com.sun.mail.imap.IMAPStore"

    const-string v10, "Oracle"

    const-string v11, "1.6.6-SNAPSHOT"

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 991
    new-instance v4, Ljavax/mail/Provider;

    sget-object v13, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v14, "imaps"

    const-string v15, "com.sun.mail.imap.IMAPSSLStore"

    const-string v16, "Oracle"

    const-string v17, "1.6.6-SNAPSHOT"

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 994
    new-instance v4, Ljavax/mail/Provider;

    sget-object v6, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v7, "pop3"

    const-string v8, "com.sun.mail.pop3.POP3Store"

    const-string v9, "Oracle"

    const-string v10, "1.6.6-SNAPSHOT"

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 997
    new-instance v4, Ljavax/mail/Provider;

    sget-object v12, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v13, "pop3s"

    const-string v14, "com.sun.mail.pop3.POP3SSLStore"

    const-string v15, "Oracle"

    const-string v16, "1.6.6-SNAPSHOT"

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1000
    new-instance v4, Ljavax/mail/Provider;

    sget-object v6, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v7, "smtp"

    const-string v8, "com.sun.mail.smtp.SMTPTransport"

    const-string v9, "Oracle"

    const-string v10, "1.6.6-SNAPSHOT"

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1003
    new-instance v4, Ljavax/mail/Provider;

    sget-object v12, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v13, "smtps"

    const-string v14, "com.sun.mail.smtp.SMTPSSLTransport"

    const-string v15, "Oracle"

    const-string v16, "1.6.6-SNAPSHOT"

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1008
    :cond_5
    iget-object v4, v1, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1010
    iget-object v4, v1, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "Tables of loaded providers"

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1011
    iget-object v4, v1, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Providers Listed By Class Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    .line 1012
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1011
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1013
    iget-object v4, v1, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Providers Listed By Protocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    .line 1014
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1013
    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1016
    :cond_6
    return-void
.end method

.method private loadProvidersFromStream(Ljava/io/InputStream;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_c

    .line 1021
    new-instance v2, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v2, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1025
    .local v2, "lis":Lcom/sun/mail/util/LineInputStream;
    :goto_0
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "currLine":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 1027
    const-string v3, "#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1028
    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1030
    goto :goto_0

    .line 1031
    :cond_1
    const/4 v3, 0x0

    .line 1032
    .local v3, "type":Ljavax/mail/Provider$Type;
    const/4 v5, 0x0

    .local v5, "protocol":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1033
    .local v6, "className":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "vendor":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1036
    .local v8, "version":Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, ";"

    invoke-direct {v9, v4, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v9, "tuples":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1038
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1041
    .local v10, "currTuple":Ljava/lang/String;
    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 1042
    .local v11, "sep":I
    const-string v12, "protocol="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1043
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 1044
    :cond_2
    const-string/jumbo v12, "type="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1045
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1046
    .local v12, "strType":Ljava/lang/String;
    const-string v13, "store"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1047
    sget-object v3, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    goto :goto_2

    .line 1048
    :cond_3
    const-string/jumbo v13, "transport"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1049
    sget-object v3, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    .line 1051
    .end local v12    # "strType":Ljava/lang/String;
    :cond_4
    :goto_2
    goto :goto_3

    :cond_5
    const-string v12, "class="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1052
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1053
    :cond_6
    const-string/jumbo v12, "vendor="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1054
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1055
    :cond_7
    const-string/jumbo v12, "version="

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1056
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1058
    .end local v10    # "currTuple":Ljava/lang/String;
    .end local v11    # "sep":I
    :cond_8
    :goto_3
    goto :goto_1

    .line 1061
    :cond_9
    if-eqz v3, :cond_b

    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    .line 1062
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_a

    goto :goto_4

    .line 1068
    :cond_a
    new-instance v16, Ljavax/mail/Provider;

    move-object/from16 v10, v16

    move-object v11, v3

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v10 .. v15}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    .local v10, "provider":Ljavax/mail/Provider;
    invoke-virtual {v0, v10}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1073
    .end local v3    # "type":Ljavax/mail/Provider$Type;
    .end local v5    # "protocol":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "vendor":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "tuples":Ljava/util/StringTokenizer;
    .end local v10    # "provider":Ljavax/mail/Provider;
    goto/16 :goto_0

    .line 1064
    .restart local v3    # "type":Ljavax/mail/Provider$Type;
    .restart local v5    # "protocol":Ljava/lang/String;
    .restart local v6    # "className":Ljava/lang/String;
    .restart local v7    # "vendor":Ljava/lang/String;
    .restart local v8    # "version":Ljava/lang/String;
    .restart local v9    # "tuples":Ljava/util/StringTokenizer;
    :cond_b
    :goto_4
    iget-object v10, v0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v11, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v12, "Bad provider entry: {0}"

    invoke-virtual {v10, v11, v12, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    goto/16 :goto_0

    .line 1075
    .end local v2    # "lis":Lcom/sun/mail/util/LineInputStream;
    .end local v3    # "type":Ljavax/mail/Provider$Type;
    .end local v4    # "currLine":Ljava/lang/String;
    .end local v5    # "protocol":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "vendor":Ljava/lang/String;
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "tuples":Ljava/util/StringTokenizer;
    :cond_c
    return-void
.end method

.method private loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "loader"    # Ljavax/mail/StreamLoader;
    .param p4, "expected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/mail/StreamLoader;",
            "Z)V"
        }
    .end annotation

    .line 1168
    .local p2, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Exception loading resource"

    const/4 v1, 0x0

    .line 1170
    .local v1, "clis":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2, p1}, Ljavax/mail/Session;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 1171
    if-eqz v1, :cond_0

    .line 1172
    invoke-interface {p3, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1173
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v4, "successfully loaded resource: {0}"

    invoke-virtual {v2, v3, v4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1176
    :cond_0
    if-eqz p4, :cond_1

    .line 1177
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "expected resource not found: {0}"

    invoke-virtual {v2, v3, v4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1187
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1188
    :catch_0
    move-exception v0

    .line 1189
    goto :goto_2

    .line 1188
    :cond_2
    :goto_1
    goto :goto_2

    .line 1185
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1182
    :catch_1
    move-exception v2

    .line 1183
    .local v2, "sex":Ljava/lang/SecurityException;
    :try_start_2
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1186
    .end local v2    # "sex":Ljava/lang/SecurityException;
    if-eqz v1, :cond_2

    .line 1187
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1180
    :catch_2
    move-exception v2

    .line 1181
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1186
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_2

    .line 1187
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1190
    :goto_2
    return-void

    .line 1186
    :goto_3
    if-eqz v1, :cond_3

    .line 1187
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    .line 1188
    :catch_3
    move-exception v2

    :cond_3
    :goto_4
    nop

    .line 1189
    throw v0
.end method

.method private static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1337
    :try_start_0
    new-instance v0, Ljavax/mail/Session$8;

    invoke-direct {v0, p0}, Ljavax/mail/Session$8;-><init>(Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method


# virtual methods
.method public declared-synchronized addProvider(Ljavax/mail/Provider;)V
    .locals 2
    .param p1, "provider"    # Ljavax/mail/Provider;

    monitor-enter p0

    .line 1084
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    .end local p0    # "this":Ljavax/mail/Session;
    :cond_0
    monitor-exit p0

    return-void

    .line 1083
    .end local p1    # "provider":Ljavax/mail/Provider;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDebug()Z
    .locals 1

    monitor-enter p0

    .line 426
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 426
    .end local p0    # "this":Ljavax/mail/Session;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugOut()Ljava/io/PrintStream;
    .locals 1

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 453
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 455
    .end local p0    # "this":Ljavax/mail/Session;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventQueue()Ljavax/mail/EventQueue;
    .locals 1

    .line 1351
    iget-object v0, p0, Ljavax/mail/Session;->q:Ljavax/mail/EventQueue;

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .locals 2
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 656
    invoke-virtual {p0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    .line 657
    .local v0, "store":Ljavax/mail/Store;
    invoke-virtual {v0}, Ljavax/mail/Store;->connect()V

    .line 658
    invoke-virtual {v0, p1}, Ljavax/mail/Store;->getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;

    move-result-object v1

    return-object v1
.end method

.method public getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;
    .locals 1
    .param p1, "url"    # Ljavax/mail/URLName;

    .line 889
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/PasswordAuthentication;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 1

    .line 930
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 941
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getProvider(Ljava/lang/String;)Ljavax/mail/Provider;
    .locals 5
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    monitor-enter p0

    .line 488
    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 492
    const/4 v0, 0x0

    .line 495
    .local v0, "_provider":Ljavax/mail/Provider;
    iget-object v1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "_className":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 497
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class property exists and points to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 502
    .end local p0    # "this":Ljavax/mail/Session;
    :cond_0
    iget-object v2, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 505
    :cond_1
    if-eqz v0, :cond_2

    .line 506
    monitor-exit p0

    return-object v0

    .line 509
    :cond_2
    :try_start_1
    iget-object v2, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Provider;

    move-object v0, v2

    .line 512
    if-eqz v0, :cond_4

    .line 515
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 516
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvider() returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/mail/Provider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    :cond_3
    monitor-exit p0

    return-object v0

    .line 513
    :cond_4
    :try_start_2
    new-instance v2, Ljavax/mail/NoSuchProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 489
    .end local v0    # "_provider":Ljavax/mail/Provider;
    .end local v1    # "_className":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "Invalid protocol: null"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    .end local p1    # "protocol":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProviders()[Ljavax/mail/Provider;
    .locals 2

    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Provider;

    .line 467
    .local v0, "_providers":[Ljavax/mail/Provider;
    iget-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-object v0

    .line 465
    .end local v0    # "_providers":[Ljavax/mail/Provider;
    .end local p0    # "this":Ljavax/mail/Session;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStore()Ljavax/mail/Store;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 554
    const-string v0, "mail.store.protocol"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljava/lang/String;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljava/lang/String;)Ljavax/mail/Store;
    .locals 8
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 568
    new-instance v7, Ljavax/mail/URLName;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/Provider;)Ljavax/mail/Store;
    .locals 1
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;
    .locals 3
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 587
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "protocol":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v1

    .line 589
    .local v1, "p":Ljavax/mail/Provider;
    invoke-direct {p0, v1, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v2

    return-object v2
.end method

.method public getTransport()Ljavax/mail/Transport;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 671
    const-string v0, "mail.transport.protocol"

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "prot":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    return-object v1

    .line 675
    :cond_0
    iget-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v2, "rfc822"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 676
    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    return-object v1

    .line 678
    :cond_1
    const-string v1, "smtp"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    return-object v1
.end method

.method public getTransport(Ljava/lang/String;)Ljavax/mail/Transport;
    .locals 8
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 693
    new-instance v7, Ljavax/mail/URLName;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljavax/mail/Session;->getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;
    .locals 4
    .param p1, "address"    # Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mail.transport.protocol."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 745
    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "transportProtocol":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    return-object v1

    .line 748
    :cond_0
    iget-object v1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 749
    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v1

    return-object v1

    .line 751
    :cond_1
    new-instance v1, Ljavax/mail/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No provider for Address type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 752
    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransport(Ljavax/mail/Provider;)Ljavax/mail/Transport;
    .locals 1
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .locals 3
    .param p1, "url"    # Ljavax/mail/URLName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 711
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "protocol":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v1

    .line 713
    .local v1, "p":Ljavax/mail/Provider;
    invoke-direct {p0, v1, p1}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object v2

    return-object v2
.end method

.method public requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .locals 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "defaultUserName"    # Ljava/lang/String;

    .line 916
    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v0, :cond_0

    .line 917
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/mail/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    return-object v0

    .line 920
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized setDebug(Z)V
    .locals 4
    .param p1, "debug"    # Z

    monitor-enter p0

    .line 414
    :try_start_0
    iput-boolean p1, p0, Ljavax/mail/Session;->debug:Z

    .line 415
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V

    .line 416
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v2, "setDebug: Jakarta Mail version {0}"

    const-string v3, "1.6.6-SNAPSHOT"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-void

    .line 413
    .end local p0    # "this":Ljavax/mail/Session;
    .end local p1    # "debug":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDebugOut(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    monitor-enter p0

    .line 440
    :try_start_0
    iput-object p1, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    .line 441
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 439
    .end local p0    # "this":Ljavax/mail/Session;
    .end local p1    # "out":Ljava/io/PrintStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V
    .locals 1
    .param p1, "url"    # Ljavax/mail/URLName;
    .param p2, "pw"    # Ljavax/mail/PasswordAuthentication;

    .line 875
    if-nez p2, :cond_0

    .line 876
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 878
    :cond_0
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :goto_0
    return-void
.end method

.method public declared-synchronized setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "addresstype"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;

    monitor-enter p0

    .line 1132
    if-nez p2, :cond_0

    .line 1133
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1135
    .end local p0    # "this":Ljavax/mail/Session;
    :cond_0
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    :goto_0
    monitor-exit p0

    return-void

    .line 1131
    .end local p1    # "addresstype":Ljava/lang/String;
    .end local p2    # "protocol":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProvider(Ljavax/mail/Provider;)V
    .locals 3
    .param p1, "provider"    # Ljavax/mail/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    monitor-enter p0

    .line 533
    if-eqz p1, :cond_0

    .line 536
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 532
    .end local p0    # "this":Ljavax/mail/Session;
    .end local p1    # "provider":Ljavax/mail/Provider;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 534
    .restart local p1    # "provider":Ljavax/mail/Provider;
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    const-string v1, "Can\'t set null provider"

    invoke-direct {v0, v1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local p1    # "provider":Ljavax/mail/Provider;
    :goto_0
    monitor-exit p0

    throw p1
.end method
