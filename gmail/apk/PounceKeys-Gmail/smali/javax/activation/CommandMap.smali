.class public abstract Ljavax/activation/CommandMap;
.super Ljava/lang/Object;
.source "CommandMap.java"


# static fields
.field private static defaultCommandMap:Ljavax/activation/CommandMap;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljavax/activation/CommandMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavax/activation/CommandMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultCommandMap()Ljavax/activation/CommandMap;
    .locals 4

    const-class v0, Ljavax/activation/CommandMap;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 49
    monitor-exit v0

    return-object v1

    .line 52
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 53
    .local v1, "tccl":Ljava/lang/ClassLoader;
    sget-object v2, Ljavax/activation/CommandMap;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/activation/CommandMap;

    .line 54
    .local v2, "def":Ljavax/activation/CommandMap;
    if-nez v2, :cond_1

    .line 55
    new-instance v3, Ljavax/activation/MailcapCommandMap;

    invoke-direct {v3}, Ljavax/activation/MailcapCommandMap;-><init>()V

    move-object v2, v3

    .line 56
    sget-object v3, Ljavax/activation/CommandMap;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :cond_1
    monitor-exit v0

    return-object v2

    .line 47
    .end local v1    # "tccl":Ljava/lang/ClassLoader;
    .end local v2    # "def":Ljavax/activation/CommandMap;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultCommandMap(Ljavax/activation/CommandMap;)V
    .locals 5
    .param p0, "commandMap"    # Ljavax/activation/CommandMap;

    const-class v0, Ljavax/activation/CommandMap;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 74
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    goto :goto_0

    .line 75
    :catch_0
    move-exception v2

    .line 79
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-class v3, Ljavax/activation/CommandMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 80
    .local v3, "cl":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    throw v2

    .line 87
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    :goto_0
    sget-object v2, Ljavax/activation/CommandMap;->map:Ljava/util/Map;

    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sput-object p0, Ljavax/activation/CommandMap;->defaultCommandMap:Ljavax/activation/CommandMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    monitor-exit v0

    return-void

    .line 69
    .end local v1    # "security":Ljava/lang/SecurityManager;
    .end local p0    # "commandMap":Ljavax/activation/CommandMap;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
.end method

.method public createDataContentHandler(Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/DataContentHandler;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .line 205
    invoke-virtual {p0, p1}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
.end method

.method public getAllCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .line 144
    invoke-virtual {p0, p1}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
.end method

.method public getCommand(Ljava/lang/String;Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/CommandInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "cmdName"    # Ljava/lang/String;
    .param p3, "ds"    # Ljavax/activation/DataSource;

    .line 173
    invoke-virtual {p0, p1, p2}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()[Ljava/lang/String;
    .locals 1

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
.end method

.method public getPreferredCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "ds"    # Ljavax/activation/DataSource;

    .line 116
    invoke-virtual {p0, p1}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method
