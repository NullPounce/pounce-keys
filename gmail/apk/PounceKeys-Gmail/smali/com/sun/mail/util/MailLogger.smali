.class public final Lcom/sun/mail/util/MailLogger;
.super Ljava/lang/Object;
.source "MailLogger.java"


# instance fields
.field private final debug:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final out:Ljava/io/PrintStream;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 2
    .param p2, "subname"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "debug"    # Z
    .param p5, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    .line 109
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->packageOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 112
    iput-object p3, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 113
    iput-boolean p4, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    .line 114
    if-eqz p5, :cond_0

    move-object v1, p5

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/mail/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljavax/mail/Session;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    invoke-virtual {p3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debug"    # Z
    .param p4, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    .line 89
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->packageOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 92
    iput-object p2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 93
    iput-boolean p3, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    .line 94
    if-eqz p4, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/Session;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/mail/Session;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-virtual {p3}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    invoke-virtual {p3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debug"    # Z
    .param p4, "out"    # Ljava/io/PrintStream;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 73
    iput-object p2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 74
    iput-boolean p3, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    .line 75
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    .line 76
    return-void
.end method

.method private debugOut(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void
.end method

.method private ifDebugOut(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 339
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 341
    :cond_0
    return-void
.end method

.method private inferCaller()Ljava/lang/StackTraceElement;
    .locals 7

    .line 384
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 386
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 387
    .local v1, "ix":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 388
    aget-object v2, v0, v1

    .line 389
    .local v2, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, "cname":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sun/mail/util/MailLogger;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    goto :goto_1

    .line 393
    :cond_0
    nop

    .end local v2    # "frame":Ljava/lang/StackTraceElement;
    .end local v3    # "cname":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 394
    goto :goto_0

    .line 396
    :cond_1
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 397
    aget-object v2, v0, v1

    .line 398
    .restart local v2    # "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 399
    .restart local v3    # "cname":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sun/mail/util/MailLogger;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 401
    return-object v2

    .line 403
    :cond_2
    nop

    .end local v2    # "frame":Ljava/lang/StackTraceElement;
    .end local v3    # "cname":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 404
    goto :goto_1

    .line 407
    :cond_3
    new-instance v2, Ljava/lang/StackTraceElement;

    const-class v3, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    const-string v6, "log"

    invoke-direct {v2, v4, v6, v3, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 407
    return-object v2
.end method

.method private isLoggerImplFrame(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cname"    # Ljava/lang/String;

    .line 417
    const-class v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private packageOf(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 362
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 363
    .local v0, "p":Ljava/lang/Package;
    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 365
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "cname":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 367
    .local v2, "i":I
    if-lez v2, :cond_1

    .line 368
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 370
    :cond_1
    const-string v3, ""

    return-object v3
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 297
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 305
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 313
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 321
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sun/mail/util/MailLogger;"
        }
    .end annotation

    .line 170
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    iget-boolean v1, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    iget-boolean v1, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 4
    .param p1, "subname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 185
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v3, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;
    .locals 3
    .param p1, "subname"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "debug"    # Z

    .line 203
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;

    .line 331
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

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

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 213
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->ifDebugOut(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 216
    .local v0, "frame":Ljava/lang/StackTraceElement;
    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "param1"    # Ljava/lang/Object;

    .line 227
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 228
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 234
    .local v6, "frame":Ljava/lang/StackTraceElement;
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    .end local v6    # "frame":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "thrown"    # Ljava/lang/Throwable;

    .line 277
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_1

    .line 278
    if-eqz p3, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", THROW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 286
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 288
    .local v0, "frame":Ljava/lang/StackTraceElement;
    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v0    # "frame":Ljava/lang/StackTraceElement;
    :cond_2
    return-void
.end method

.method public varargs log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 245
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 247
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 252
    .local v6, "frame":Ljava/lang/StackTraceElement;
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    .end local v6    # "frame":Ljava/lang/StackTraceElement;
    :cond_1
    return-void
.end method

.method public varargs logf(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 265
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->ifDebugOut(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 268
    return-void
.end method
