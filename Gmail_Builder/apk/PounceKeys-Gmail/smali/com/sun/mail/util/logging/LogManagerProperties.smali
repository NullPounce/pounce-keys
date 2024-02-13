.class final Lcom/sun/mail/util/logging/LogManagerProperties;
.super Ljava/util/Properties;
.source "LogManagerProperties.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_MANAGER:Ljava/lang/Object;

.field private static final LR_GET_INSTANT:Ljava/lang/reflect/Method;

.field private static volatile REFLECT_NAMES:[Ljava/lang/String; = null

.field private static final ZDT_OF_INSTANT:Ljava/lang/reflect/Method;

.field private static final ZI_SYSTEM_DEFAULT:Ljava/lang/reflect/Method;

.field private static final serialVersionUID:J = -0x1f1604fcef521d6cL


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 52
    const-string v0, "java.time.ZoneId"

    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "lrgi":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 79
    .local v2, "zisd":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 81
    .local v3, "zdtoi":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v4, Ljava/util/logging/LogRecord;

    const-string v5, "getInstant"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v1, v4

    .line 82
    const-class v4, Ljava/lang/Comparable;

    .line 83
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "systemDefault"

    new-array v7, v6, [Ljava/lang/Class;

    .line 85
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v2, v4

    .line 86
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v4, "java.time.ZonedDateTime"

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "ofInstant"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-string v8, "java.time.Instant"

    .line 91
    invoke-static {v8}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v6

    .line 92
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v7, v6

    .line 91
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v0

    .line 93
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const-class v0, Ljava/lang/Comparable;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local v1    # "lrgi":Ljava/lang/reflect/Method;
    .end local v2    # "zisd":Ljava/lang/reflect/Method;
    .end local v3    # "zdtoi":Ljava/lang/reflect/Method;
    throw v0

    .line 94
    .restart local v1    # "lrgi":Ljava/lang/reflect/Method;
    .restart local v2    # "zisd":Ljava/lang/reflect/Method;
    .restart local v3    # "zdtoi":Ljava/lang/reflect/Method;
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local v1    # "lrgi":Ljava/lang/reflect/Method;
    .end local v2    # "zisd":Ljava/lang/reflect/Method;
    .end local v3    # "zdtoi":Ljava/lang/reflect/Method;
    throw v0

    .line 87
    .restart local v1    # "lrgi":Ljava/lang/reflect/Method;
    .restart local v2    # "zisd":Ljava/lang/reflect/Method;
    .restart local v3    # "zdtoi":Ljava/lang/reflect/Method;
    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local v1    # "lrgi":Ljava/lang/reflect/Method;
    .end local v2    # "zisd":Ljava/lang/reflect/Method;
    .end local v3    # "zdtoi":Ljava/lang/reflect/Method;
    throw v0

    .line 82
    .restart local v1    # "lrgi":Ljava/lang/reflect/Method;
    .restart local v2    # "zisd":Ljava/lang/reflect/Method;
    .restart local v3    # "zdtoi":Ljava/lang/reflect/Method;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v1    # "lrgi":Ljava/lang/reflect/Method;
    .end local v2    # "zisd":Ljava/lang/reflect/Method;
    .end local v3    # "zdtoi":Ljava/lang/reflect/Method;
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .restart local v1    # "lrgi":Ljava/lang/reflect/Method;
    .restart local v2    # "zisd":Ljava/lang/reflect/Method;
    .restart local v3    # "zdtoi":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    .line 105
    :cond_4
    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v3, 0x0

    .line 109
    :cond_5
    throw v0

    .line 102
    :catch_0
    move-exception v0

    .line 104
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 104
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    goto :goto_0

    .line 100
    :catch_2
    move-exception v0

    .line 104
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    .line 105
    :cond_6
    :goto_0
    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x0

    .line 107
    const/4 v3, 0x0

    .line 111
    :cond_7
    sput-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->LR_GET_INSTANT:Ljava/lang/reflect/Method;

    .line 112
    sput-object v2, Lcom/sun/mail/util/logging/LogManagerProperties;->ZI_SYSTEM_DEFAULT:Ljava/lang/reflect/Method;

    .line 113
    sput-object v3, Lcom/sun/mail/util/logging/LogManagerProperties;->ZDT_OF_INSTANT:Ljava/lang/reflect/Method;

    .line 126
    .end local v1    # "lrgi":Ljava/lang/reflect/Method;
    .end local v2    # "zisd":Ljava/lang/reflect/Method;
    .end local v3    # "zdtoi":Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->loadLogManager()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/Properties;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 842
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 843
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 846
    iput-object p2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    .line 847
    return-void

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static checkLogManagerAccess()V
    .locals 3

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "checked":Z
    sget-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 225
    .local v1, "m":Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 227
    :try_start_0
    instance-of v2, v1, Ljava/util/logging/LogManager;

    if-eqz v2, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 229
    move-object v2, v1

    check-cast v2, Ljava/util/logging/LogManager;

    invoke-virtual {v2}, Ljava/util/logging/LogManager;->checkAccess()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    goto :goto_1

    .line 235
    :catch_1
    move-exception v2

    .line 237
    :cond_0
    :goto_0
    goto :goto_1

    .line 231
    :catch_2
    move-exception v2

    .line 232
    .local v2, "notAllowed":Ljava/lang/SecurityException;
    if-nez v0, :cond_1

    .end local v2    # "notAllowed":Ljava/lang/SecurityException;
    goto :goto_0

    .line 233
    .restart local v2    # "notAllowed":Ljava/lang/SecurityException;
    :cond_1
    throw v2

    .line 240
    .end local v2    # "notAllowed":Ljava/lang/SecurityException;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 241
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->checkLoggingAccess()V

    .line 243
    :cond_3
    return-void
.end method

.method private static checkLoggingAccess()V
    .locals 6

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "checked":Z
    const-string v1, "global"

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .line 266
    .local v1, "global":Ljava/util/logging/Logger;
    const/4 v2, 0x0

    :try_start_0
    const-class v3, Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 267
    move-object v3, v2

    check-cast v3, Ljava/util/logging/Handler;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    const/4 v0, 0x1

    .line 271
    :cond_0
    goto :goto_0

    .line 270
    :catch_0
    move-exception v3

    .line 273
    :goto_0
    if-nez v0, :cond_1

    .line 274
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 275
    .local v3, "sm":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_1

    .line 276
    new-instance v4, Ljava/util/logging/LoggingPermission;

    const-string v5, "control"

    invoke-direct {v4, v5, v2}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 279
    .end local v3    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    return-void
.end method

.method private exportCopy(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 1
    .param p1, "parent"    # Ljava/util/Properties;

    .line 1072
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 1073
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 1074
    .local v0, "child":Ljava/util/Properties;
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 1075
    return-object v0
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 771
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    .line 772
    .local v0, "loaders":[Ljava/lang/ClassLoader;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 774
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 776
    :try_start_0
    aget-object v2, v0, v1

    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 777
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 778
    .local v1, "tryContext":Ljava/lang/ClassNotFoundException;
    aget-object v2, v0, v3

    invoke-static {p0, v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 779
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    goto :goto_1

    .line 781
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    aget-object v1, v0, v3

    invoke-static {p0, v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 783
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-object v1

    .line 772
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1
.end method

.method static fromLogManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 191
    if-eqz p0, :cond_3

    .line 195
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 197
    .local v0, "m":Ljava/lang/Object;
    :try_start_0
    instance-of v1, v0, Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 198
    move-object v1, v0

    check-cast v1, Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 201
    :cond_0
    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 203
    :goto_0
    if-eqz v0, :cond_2

    .line 205
    :try_start_1
    instance-of v1, v0, Ljava/util/logging/LogManager;

    if-eqz v1, :cond_1

    .line 206
    move-object v1, v0

    check-cast v1, Ljava/util/logging/LogManager;

    invoke-virtual {v1, p0}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 209
    :catch_1
    move-exception v1

    goto :goto_1

    .line 208
    :catch_2
    move-exception v1

    .line 210
    :cond_1
    nop

    .line 212
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 192
    .end local v0    # "m":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 1

    .line 808
    new-instance v0, Lcom/sun/mail/util/logging/LogManagerProperties$1;

    invoke-direct {v0}, Lcom/sun/mail/util/logging/LogManagerProperties$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getLocalHost(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getLocalHost"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 350
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 351
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_0

    .line 352
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 354
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local p0    # "s":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .restart local p0    # "s":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 356
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 357
    .local v0, "EIIE":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v1

    throw v1
.end method

.method static getZonedDateTime(Ljava/util/logging/LogRecord;)Ljava/lang/Comparable;
    .locals 6
    .param p0, "record"    # Ljava/util/logging/LogRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/LogRecord;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 304
    if-eqz p0, :cond_4

    .line 307
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->ZDT_OF_INSTANT:Ljava/lang/reflect/Method;

    .line 308
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 310
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/sun/mail/util/logging/LogManagerProperties;->LR_GET_INSTANT:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 311
    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Lcom/sun/mail/util/logging/LogManagerProperties;->ZI_SYSTEM_DEFAULT:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    .line 312
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 310
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 325
    :catch_0
    move-exception v2

    goto :goto_0

    .line 316
    :catch_1
    move-exception v1

    .line 317
    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 318
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/Error;

    if-nez v3, :cond_1

    .line 320
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 321
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 323
    :cond_0
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v3, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 319
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 313
    .end local v1    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 314
    .local v2, "ignore":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/sun/mail/util/logging/LogManagerProperties;->LR_GET_INSTANT:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sun/mail/util/logging/LogManagerProperties;->ZI_SYSTEM_DEFAULT:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2

    .line 326
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    goto :goto_0

    .line 314
    .restart local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 328
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_3
    :goto_0
    return-object v1

    .line 305
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static hasLogManager()Z
    .locals 2

    .line 289
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 290
    .local v0, "m":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/Properties;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isReflectionClass(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 617
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    .line 618
    .local v0, "names":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 619
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->reflectionClassNames()[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    sput-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    .line 622
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 623
    .local v4, "rf":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 624
    const/4 v1, 0x1

    return v1

    .line 622
    .end local v4    # "rf":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    :cond_2
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 629
    return v2
.end method

.method static isStaticUtilityClass(Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 583
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 584
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Object;

    .line 587
    .local v1, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v3, v2

    .local v3, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v2

    if-eqz v2, :cond_2

    .line 588
    const/4 v2, 0x1

    .line 589
    .local v2, "util":Z
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 590
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, v1, :cond_0

    .line 591
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 592
    const/4 v2, 0x0

    .line 593
    goto :goto_1

    .line 589
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    .line 597
    .end local v2    # "util":Z
    .end local v3    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    const/4 v2, 0x0

    .line 599
    .restart local v2    # "util":Z
    :goto_2
    return v2
.end method

.method private static loadLogManager()Ljava/lang/Object;
    .locals 2

    .line 137
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .local v0, "m":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 140
    .end local v0    # "m":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "unexpected":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v1

    move-object v0, v1

    .local v1, "m":Ljava/lang/Object;
    goto :goto_1

    .line 138
    .end local v0    # "unexpected":Ljava/lang/RuntimeException;
    .end local v1    # "m":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "restricted":Ljava/lang/LinkageError;
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v0

    .local v0, "m":Ljava/lang/Object;
    goto :goto_0

    .line 143
    :goto_1
    return-object v0
.end method

.method static newComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 495
    const-class v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method static newErrorManager(Ljava/lang/String;)Ljava/util/logging/ErrorManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 566
    const-class v0, Ljava/util/logging/ErrorManager;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method static newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 451
    const-class v0, Ljava/util/logging/Filter;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Filter;

    return-object v0
.end method

.method static newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    const-class v0, Ljava/util/logging/Formatter;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Formatter;

    return-object v0
.end method

.method static newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 690
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 693
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 695
    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 696
    :catch_0
    move-exception v1

    .line 697
    .local v1, "ITE":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v2

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v2

    .line 700
    .end local v1    # "ITE":Ljava/lang/reflect/InvocationTargetException;
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be cast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 701
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local p0    # "name":Ljava/lang/String;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_1

    .line 710
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "name":Ljava/lang/String;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catch_1
    move-exception v0

    .line 711
    .local v0, "EIIE":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v1

    throw v1

    .line 703
    .end local v0    # "EIIE":Ljava/lang/ExceptionInInitializerError;
    :catch_2
    move-exception v0

    .line 709
    .local v0, "NCDFE":Ljava/lang/NoClassDefFoundError;
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;
    .locals 3
    .param p0, "ite"    # Ljava/lang/reflect/InvocationTargetException;

    .line 725
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 726
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 729
    instance-of v1, v0, Ljava/lang/VirtualMachineError;

    instance-of v2, v0, Ljava/lang/ThreadDeath;

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 734
    :cond_1
    :goto_0
    return-object p0
.end method

.method static parseDurationToMillis(Ljava/lang/CharSequence;)J
    .locals 7
    .param p0, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    :try_start_0
    const-string v0, "java.time.Duration"

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 383
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "parse"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 384
    .local v1, "parse":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    const-string/jumbo v3, "toMillis"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 390
    .local v3, "toMillis":Ljava/lang/reflect/Method;
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 394
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 392
    :cond_0
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local p0    # "value":Ljava/lang/CharSequence;
    throw v2

    .line 386
    .end local v3    # "toMillis":Ljava/lang/reflect/Method;
    .restart local p0    # "value":Ljava/lang/CharSequence;
    :cond_1
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .end local p0    # "value":Ljava/lang/CharSequence;
    throw v2
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "parse":Ljava/lang/reflect/Method;
    .restart local p0    # "value":Ljava/lang/CharSequence;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v1

    throw v1

    .line 395
    .end local v0    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 396
    .local v0, "EIIE":Ljava/lang/ExceptionInInitializerError;
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v1

    throw v1
.end method

.method private preWrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1060
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1060
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static readConfiguration()Ljava/util/Properties;
    .locals 5

    .line 162
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 164
    .local v0, "props":Ljava/util/Properties;
    :try_start_0
    const-string v1, "java.util.logging.config.file"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "n":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 166
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 167
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 172
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 172
    nop

    .end local v0    # "props":Ljava/util/Properties;
    throw v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    .end local v1    # "n":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v0    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 175
    :catch_1
    move-exception v1

    goto :goto_0

    .line 174
    :catch_2
    move-exception v1

    .line 177
    :cond_0
    :goto_0
    nop

    .line 178
    :goto_1
    return-object v0
.end method

.method private static reflectionClassNames()[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 642
    const-class v0, Lcom/sun/mail/util/logging/LogManagerProperties;

    .line 643
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 646
    .local v1, "traces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 647
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 648
    .local v7, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 649
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 647
    nop

    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 655
    :cond_0
    const-class v4, Ljava/lang/Throwable;

    const-string v5, "fillInStackTrace"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 657
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 658
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 656
    nop

    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 663
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 664
    .end local v1    # "traces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 665
    .local v1, "ITE":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v2

    throw v2

    .line 643
    .end local v1    # "ITE":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 515
    .local p0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    if-eqz p0, :cond_2

    .line 519
    const/4 v0, 0x0

    .line 526
    .local v0, "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "reversed"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 527
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/Comparator;

    .line 528
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 530
    :try_start_1
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 533
    goto :goto_0

    .line 531
    :catch_0
    move-exception v2

    .line 532
    .local v2, "eiie":Ljava/lang/ExceptionInInitializerError;
    :try_start_2
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v3

    .end local v0    # "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .end local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    throw v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 540
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "eiie":Ljava/lang/ExceptionInInitializerError;
    .restart local v0    # "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .restart local p0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_0
    :goto_0
    goto :goto_1

    .line 538
    :catch_1
    move-exception v1

    .line 539
    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    goto :goto_1

    .line 537
    .end local v1    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    goto :goto_0

    .line 536
    :catch_3
    move-exception v1

    goto :goto_0

    .line 535
    :catch_4
    move-exception v1

    goto :goto_0

    .line 542
    :goto_1
    if-nez v0, :cond_1

    .line 543
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 545
    :cond_1
    return-object v0

    .line 516
    .end local v0    # "reverse":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8
    .param p0, "locale"    # Ljava/util/Locale;

    .line 411
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "l":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "c":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "v":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [C

    .line 415
    .local v3, "b":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 416
    .local v4, "count":I
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 417
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x2d

    if-nez v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 418
    :cond_0
    aput-char v7, v3, v4

    .line 419
    add-int/lit8 v4, v4, 0x1

    .line 420
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 424
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 425
    :cond_2
    aput-char v7, v3, v4

    .line 426
    add-int/lit8 v4, v4, 0x1

    .line 427
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 428
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 430
    :cond_3
    invoke-static {v3, v5, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "l"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 795
    if-eqz p1, :cond_0

    .line 796
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 798
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;
    .locals 1
    .param p0, "eiie"    # Ljava/lang/ExceptionInInitializerError;

    .line 749
    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-nez v0, :cond_0

    .line 754
    new-instance v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 750
    :cond_0
    throw p0
.end method

.method private declared-synchronized writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    monitor-enter p0

    .line 1087
    :try_start_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->exportCopy(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 860
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 982
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 983
    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_0
    const/4 v0, 0x0

    .line 984
    .local v0, "found":Z
    :goto_0
    if-nez v0, :cond_3

    .line 985
    iget-object v3, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v3, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-super {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    move v0, v1

    .line 987
    :cond_3
    monitor-exit p0

    return v0

    .line 981
    .end local v0    # "found":Z
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1026
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1027
    return v0

    .line 1029
    :cond_0
    if-ne p1, p0, :cond_1

    .line 1030
    const/4 v0, 0x1

    return v0

    .line 1032
    :cond_1
    instance-of v1, p1, Ljava/util/Properties;

    if-nez v1, :cond_2

    .line 1033
    return v0

    .line 1035
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 925
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 926
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_0

    .line 928
    .end local v0    # "value":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_0
    const/4 v0, 0x0

    .line 932
    .restart local v0    # "value":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    .line 933
    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 934
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 935
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 938
    :cond_1
    monitor-exit p0

    return-object v0

    .line 924
    .end local v0    # "value":Ljava/lang/Object;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 874
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 878
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_0
    if-nez v0, :cond_1

    .line 879
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 888
    :cond_1
    if-eqz v0, :cond_2

    .line 889
    invoke-super {p0, p1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 891
    :cond_2
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 892
    .local v1, "v":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .line 895
    .end local v1    # "v":Ljava/lang/Object;
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    .line 871
    .end local v0    # "value":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 909
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 1046
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .line 1013
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 951
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 952
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 953
    .local v0, "def":Ljava/lang/Object;
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    .local v1, "man":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    monitor-exit p0

    return-object v2

    .line 956
    .end local v0    # "def":Ljava/lang/Object;
    .end local v1    # "man":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 950
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1000
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1001
    .local v0, "def":Ljava/lang/Object;
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .local v1, "man":Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    monitor-exit p0

    return-object v2

    .line 999
    .end local v0    # "def":Ljava/lang/Object;
    .end local v1    # "man":Ljava/lang/Object;
    .end local p0    # "this":Lcom/sun/mail/util/logging/LogManagerProperties;
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 969
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
