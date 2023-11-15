.class public abstract Ljavax/activation/FileTypeMap;
.super Ljava/lang/Object;
.source "FileTypeMap.java"


# static fields
.field private static defaultMap:Ljavax/activation/FileTypeMap;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljavax/activation/FileTypeMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static declared-synchronized getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
    .locals 4

    const-class v0, Ljavax/activation/FileTypeMap;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 104
    monitor-exit v0

    return-object v1

    .line 107
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 108
    .local v1, "tccl":Ljava/lang/ClassLoader;
    sget-object v2, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/activation/FileTypeMap;

    .line 109
    .local v2, "def":Ljavax/activation/FileTypeMap;
    if-nez v2, :cond_1

    .line 110
    new-instance v3, Ljavax/activation/MimetypesFileTypeMap;

    invoke-direct {v3}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    move-object v2, v3

    .line 111
    sget-object v3, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_1
    monitor-exit v0

    return-object v2

    .line 102
    .end local v1    # "tccl":Ljava/lang/ClassLoader;
    .end local v2    # "def":Ljavax/activation/FileTypeMap;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultFileTypeMap(Ljavax/activation/FileTypeMap;)V
    .locals 5
    .param p0, "fileTypeMap"    # Ljavax/activation/FileTypeMap;

    const-class v0, Ljavax/activation/FileTypeMap;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 77
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-class v3, Ljavax/activation/FileTypeMap;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 83
    .local v3, "cl":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    throw v2

    .line 89
    .end local v2    # "ex":Ljava/lang/SecurityException;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    :cond_1
    :goto_0
    sget-object v2, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sput-object p0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    monitor-exit v0

    return-void

    .line 72
    .end local v1    # "security":Ljava/lang/SecurityManager;
    .end local p0    # "fileTypeMap":Ljavax/activation/FileTypeMap;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract getContentType(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method
