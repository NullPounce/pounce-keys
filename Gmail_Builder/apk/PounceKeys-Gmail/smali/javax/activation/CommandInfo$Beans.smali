.class final Ljavax/activation/CommandInfo$Beans;
.super Ljava/lang/Object;
.source "CommandInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/activation/CommandInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Beans"
.end annotation


# static fields
.field static final instantiateMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 144
    :try_start_0
    const-string v0, "java.beans.Beans"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "instantiate"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/ClassLoader;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .local v0, "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 148
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    move-object v0, v1

    .local v1, "m":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 146
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 150
    .local v0, "m":Ljava/lang/reflect/Method;
    :goto_0
    nop

    .line 151
    :goto_1
    sput-object v0, Ljavax/activation/CommandInfo$Beans;->instantiateMethod:Ljava/lang/reflect/Method;

    .line 152
    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "cn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 162
    sget-object v0, Ljavax/activation/CommandInfo$Beans;->instantiateMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 166
    const/4 v4, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalAccessException;
    nop

    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0

    .line 167
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 171
    .local v0, "exception":Ljava/lang/Exception;
    :goto_0
    nop

    .line 212
    return-object v4

    .line 175
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 176
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2

    .line 178
    const/16 v4, 0x2f

    const/16 v5, 0x2e

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "cname":Ljava/lang/String;
    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 180
    const/16 v6, 0x5b

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 181
    .local v6, "b":I
    if-le v6, v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v6, v2, :cond_1

    .line 182
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 185
    .end local v6    # "b":I
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 186
    .local v2, "i":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 187
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 192
    .end local v2    # "i":I
    .end local v4    # "cname":Ljava/lang/String;
    :cond_2
    if-nez p0, :cond_3

    .line 193
    new-instance v1, Ljavax/activation/CommandInfo$Beans$1;

    invoke-direct {v1}, Ljavax/activation/CommandInfo$Beans$1;-><init>()V

    .line 194
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    move-object p0, v1

    check-cast p0, Ljava/lang/ClassLoader;

    .line 204
    :cond_3
    invoke-static {p1, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 206
    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    .line 207
    :catch_2
    move-exception v2

    .line 208
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
