.class public Ljavax/activation/MailcapCommandMap;
.super Ljavax/activation/CommandMap;
.source "MailcapCommandMap.java"


# static fields
.field private static final PROG:I

.field private static final confDir:Ljava/lang/String;


# instance fields
.field private DB:[Lcom/sun/activation/registries/MailcapFile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    const/4 v0, 0x0

    .line 122
    .local v0, "dir":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljavax/activation/MailcapCommandMap$1;

    invoke-direct {v1}, Ljavax/activation/MailcapCommandMap$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 137
    :goto_0
    sput-object v0, Ljavax/activation/MailcapCommandMap;->confDir:Ljava/lang/String;

    .line 138
    .end local v0    # "dir":Ljava/lang/String;
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 144
    invoke-direct {p0}, Ljavax/activation/CommandMap;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v0, "dbv":Ljava/util/List;
    const/4 v1, 0x0

    .line 147
    .local v1, "mf":Lcom/sun/activation/registries/MailcapFile;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v2, "MailcapCommandMap: load HOME"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 151
    :try_start_0
    const-string/jumbo v2, "user.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "user_home":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mailcap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v4

    move-object v1, v4

    .line 156
    if-eqz v1, :cond_0

    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v2    # "user_home":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    nop

    .line 161
    const-string v2, "MailcapCommandMap: load SYS"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 164
    :try_start_1
    sget-object v2, Ljavax/activation/MailcapCommandMap;->confDir:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mailcap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v2

    move-object v1, v2

    .line 166
    if-eqz v1, :cond_1

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 169
    :catch_1
    move-exception v2

    :cond_1
    :goto_1
    nop

    .line 171
    const-string v2, "MailcapCommandMap: load JAR"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 173
    const-string v2, "META-INF/mailcap"

    invoke-direct {p0, v0, v2}, Ljavax/activation/MailcapCommandMap;->loadAllResources(Ljava/util/List;Ljava/lang/String;)V

    .line 175
    const-string v2, "MailcapCommandMap: load DEF"

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 176
    const-string v2, "/META-INF/mailcap.default"

    invoke-direct {p0, v2}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_2

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 182
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/activation/registries/MailcapFile;

    iput-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 328
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 330
    const-string v0, "MailcapCommandMap: load PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 333
    :try_start_0
    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 338
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljavax/activation/MailcapCommandMap;-><init>()V

    .line 313
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MailcapCommandMap: load PROG from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 315
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 316
    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 318
    :cond_1
    return-void
.end method

.method private appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .param p1, "typeHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .line 451
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 453
    .local v0, "verb_enum":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 455
    .local v1, "verb":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 456
    .local v2, "cmdList2":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 458
    .local v3, "cmd_enum":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 460
    .local v4, "cmd":Ljava/lang/String;
    new-instance v5, Ljavax/activation/CommandInfo;

    invoke-direct {v5, v1, v4}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v4    # "cmd":Ljava/lang/String;
    goto :goto_1

    .line 463
    .end local v1    # "verb":Ljava/lang/String;
    .end local v2    # "cmdList2":Ljava/util/List;
    .end local v3    # "cmd_enum":Ljava/util/Iterator;
    :cond_0
    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method

.method private appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .param p1, "cmdHash"    # Ljava/util/Map;
    .param p2, "cmdList"    # Ljava/util/List;

    .line 385
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 387
    .local v0, "verb_enum":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    .local v1, "verb":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Ljavax/activation/MailcapCommandMap;->checkForVerb(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 391
    .local v2, "cmdList2":Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    .local v3, "className":Ljava/lang/String;
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, v1, v3}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v1    # "verb":Ljava/lang/String;
    .end local v2    # "cmdList2":Ljava/util/List;
    .end local v3    # "className":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 395
    :cond_1
    return-void
.end method

.method private checkForVerb(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmdList"    # Ljava/util/List;
    .param p2, "verb"    # Ljava/lang/String;

    .line 402
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 403
    .local v0, "ee":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    nop

    .line 405
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/activation/CommandInfo;

    invoke-virtual {v1}, Ljavax/activation/CommandInfo;->getCommandName()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "enum_verb":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const/4 v2, 0x1

    return v2

    .line 408
    .end local v1    # "enum_verb":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 409
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 583
    const-string v0, "Can\'t load DCH "

    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    const-string v1, "    got content-handler"

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 585
    :cond_0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 588
    :cond_1
    const/4 v1, 0x0

    .line 590
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 591
    if-nez v1, :cond_2

    .line 592
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    .line 593
    :cond_2
    const/4 v2, 0x0

    .line 595
    .local v2, "cl":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 599
    goto :goto_0

    .line 596
    :catch_0
    move-exception v3

    .line 598
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v2, v4

    .line 600
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_3

    .line 601
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/activation/DataContentHandler;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 600
    .end local v1    # "cld":Ljava/lang/ClassLoader;
    .end local v2    # "cl":Ljava/lang/Class;
    :cond_3
    goto :goto_1

    .line 608
    :catch_1
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 605
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 602
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_4
    :goto_1
    nop

    .line 612
    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadAllResources(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .param p1, "v"    # Ljava/util/List;
    .param p2, "name"    # Ljava/lang/String;

    .line 222
    const-string v0, "MailcapCommandMap: can\'t load "

    const/4 v1, 0x0

    .line 225
    .local v1, "anyLoaded":Z
    const/4 v2, 0x0

    .line 227
    .local v2, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v2, v3

    .line 228
    if-nez v2, :cond_0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v2, v3

    .line 230
    :cond_0
    if-eqz v2, :cond_1

    .line 231
    invoke-static {v2, p2}, Ljavax/activation/SecuritySupport;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    .local v3, "urls":[Ljava/net/URL;
    goto :goto_0

    .line 233
    .end local v3    # "urls":[Ljava/net/URL;
    :cond_1
    invoke-static {p2}, Ljavax/activation/SecuritySupport;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v3

    .line 234
    .restart local v3    # "urls":[Ljava/net/URL;
    :goto_0
    if-eqz v3, :cond_a

    .line 235
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    const-string v4, "MailcapCommandMap: getResources"

    invoke-static {v4}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 237
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_a

    .line 238
    aget-object v5, v3, v4

    .line 239
    .local v5, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 240
    .local v6, "clis":Ljava/io/InputStream;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MailcapCommandMap: URL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 243
    :cond_3
    :try_start_1
    invoke-static {v5}, Ljavax/activation/SecuritySupport;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v7

    move-object v6, v7

    .line 244
    if-eqz v6, :cond_4

    .line 245
    new-instance v7, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v7, v6}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const/4 v1, 0x1

    .line 247
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MailcapCommandMap: successfully loaded mailcap file from URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 253
    :cond_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MailcapCommandMap: not loading mailcap file from URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 269
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    .line 270
    :catch_0
    move-exception v7

    .line 271
    goto :goto_4

    .line 270
    :cond_6
    :goto_3
    goto :goto_4

    .line 267
    :catchall_0
    move-exception v7

    goto :goto_5

    .line 262
    :catch_1
    move-exception v7

    .line 263
    .local v7, "sex":Ljava/lang/SecurityException;
    :try_start_3
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    .end local v7    # "sex":Ljava/lang/SecurityException;
    :cond_7
    if-eqz v6, :cond_6

    .line 269
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 258
    :catch_2
    move-exception v7

    .line 259
    .local v7, "ioex":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    .end local v7    # "ioex":Ljava/io/IOException;
    :cond_8
    if-eqz v6, :cond_6

    .line 269
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 237
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "clis":Ljava/io/InputStream;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 268
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "clis":Ljava/io/InputStream;
    :goto_5
    if-eqz v6, :cond_9

    .line 269
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 270
    :catch_3
    move-exception v8

    :cond_9
    :goto_6
    nop

    .line 271
    nop

    .end local v1    # "anyLoaded":Z
    .end local p1    # "v":Ljava/util/List;
    .end local p2    # "name":Ljava/lang/String;
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 277
    .end local v2    # "cld":Ljava/lang/ClassLoader;
    .end local v3    # "urls":[Ljava/net/URL;
    .end local v4    # "i":I
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "clis":Ljava/io/InputStream;
    .restart local v1    # "anyLoaded":Z
    .restart local p1    # "v":Ljava/util/List;
    .restart local p2    # "name":Ljava/lang/String;
    :cond_a
    goto :goto_7

    .line 274
    :catch_4
    move-exception v2

    .line 275
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_b
    :goto_7
    if-nez v1, :cond_d

    .line 281
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 282
    const-string v0, "MailcapCommandMap: !anyLoaded"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 283
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/activation/MailcapCommandMap;->loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;

    move-result-object v0

    .line 284
    .local v0, "mf":Lcom/sun/activation/registries/MailcapFile;
    if-eqz v0, :cond_d

    .line 285
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v0    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :cond_d
    return-void
.end method

.method private loadFile(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .line 296
    .local v0, "mtf":Lcom/sun/activation/registries/MailcapFile;
    :try_start_0
    new-instance v1, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v1, p1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 299
    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 300
    :goto_0
    return-object v0
.end method

.method private loadResource(Ljava/lang/String;)Lcom/sun/activation/registries/MailcapFile;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 189
    const-string v0, "MailcapCommandMap: can\'t load "

    const/4 v1, 0x0

    .line 191
    .local v1, "clis":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Ljavax/activation/SecuritySupport;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 192
    if-eqz v1, :cond_2

    .line 193
    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2, v1}, Lcom/sun/activation/registries/MailcapFile;-><init>(Ljava/io/InputStream;)V

    .line 194
    .local v2, "mf":Lcom/sun/activation/registries/MailcapFile;
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MailcapCommandMap: successfully loaded mailcap file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    nop

    .line 211
    if-eqz v1, :cond_1

    .line 212
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    nop

    .line 197
    return-object v2

    .line 199
    .end local v2    # "mf":Lcom/sun/activation/registries/MailcapFile;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MailcapCommandMap: not loading mailcap file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :cond_3
    if-eqz v1, :cond_4

    .line 212
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 213
    :catch_1
    move-exception v0

    .line 214
    goto :goto_2

    .line 213
    :cond_4
    :goto_1
    goto :goto_2

    .line 210
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 206
    :catch_2
    move-exception v2

    .line 207
    .local v2, "sex":Ljava/lang/SecurityException;
    :try_start_4
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 211
    .end local v2    # "sex":Ljava/lang/SecurityException;
    :cond_5
    if-eqz v1, :cond_4

    .line 212
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 203
    :catch_3
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 211
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    if-eqz v1, :cond_4

    .line 212
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 215
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 211
    :goto_3
    if-eqz v1, :cond_7

    .line 212
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    .line 213
    :catch_4
    move-exception v2

    :cond_7
    :goto_4
    nop

    .line 214
    throw v0
.end method


# virtual methods
.method public declared-synchronized addMailcap(Ljava/lang/String;)V
    .locals 3
    .param p1, "mail_cap"    # Ljava/lang/String;

    monitor-enter p0

    .line 524
    :try_start_0
    const-string v0, "MailcapCommandMap: add to PROG"

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 526
    new-instance v2, Lcom/sun/activation/registries/MailcapFile;

    invoke-direct {v2}, Lcom/sun/activation/registries/MailcapFile;-><init>()V

    aput-object v2, v0, v1

    .line 528
    .end local p0    # "this":Ljavax/activation/MailcapCommandMap;
    :cond_0
    iget-object v0, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/sun/activation/registries/MailcapFile;->appendToMailcap(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    monitor-exit p0

    return-void

    .line 523
    .end local p1    # "mail_cap":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 539
    :try_start_0
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MailcapCommandMap: createDataContentHandler for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 542
    .end local p0    # "this":Ljavax/activation/MailcapCommandMap;
    :cond_0
    if-eqz p1, :cond_1

    .line 543
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 545
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_5

    .line 546
    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 547
    goto :goto_1

    .line 548
    :cond_2
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  search DB #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 550
    :cond_3
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 551
    .local v1, "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_4

    .line 552
    const-string v2, "content-handler"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 553
    .local v2, "v":Ljava/util/List;
    if-eqz v2, :cond_4

    .line 554
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 555
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    .local v4, "dch":Ljavax/activation/DataContentHandler;
    if-eqz v4, :cond_4

    .line 557
    monitor-exit p0

    return-object v4

    .line 545
    .end local v1    # "cmdMap":Ljava/util/Map;
    .end local v2    # "v":Ljava/util/List;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "dch":Ljavax/activation/DataContentHandler;
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    :try_start_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v1

    if-ge v0, v2, :cond_9

    .line 564
    aget-object v1, v1, v0

    if-nez v1, :cond_6

    .line 565
    goto :goto_3

    .line 566
    :cond_6
    invoke-static {}, Lcom/sun/activation/registries/LogSupport;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  search fallback DB #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/activation/registries/LogSupport;->log(Ljava/lang/String;)V

    .line 568
    :cond_7
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 569
    .restart local v1    # "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_8

    .line 570
    const-string v2, "content-handler"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 571
    .restart local v2    # "v":Ljava/util/List;
    if-eqz v2, :cond_8

    .line 572
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 573
    .local v4, "name":Ljava/lang/String;
    invoke-direct {p0, v4}, Ljavax/activation/MailcapCommandMap;->getDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    .local v5, "dch":Ljavax/activation/DataContentHandler;
    if-eqz v5, :cond_8

    .line 575
    monitor-exit p0

    return-object v5

    .line 563
    .end local v1    # "cmdMap":Ljava/util/Map;
    .end local v2    # "v":Ljava/util/List;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "dch":Ljavax/activation/DataContentHandler;
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 579
    .end local v0    # "i":I
    :cond_9
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 538
    .end local p1    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 420
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 422
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 424
    .end local p0    # "this":Ljavax/activation/MailcapCommandMap;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 425
    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 426
    goto :goto_1

    .line 427
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 428
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_2

    .line 429
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 424
    .end local v2    # "cmdMap":Ljava/util/Map;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 434
    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 435
    goto :goto_3

    .line 436
    :cond_4
    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 437
    .restart local v2    # "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_5

    .line 438
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 433
    .end local v2    # "cmdMap":Ljava/util/Map;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 441
    .end local v1    # "i":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/activation/CommandInfo;

    .line 442
    .local v1, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/activation/CommandInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 444
    monitor-exit p0

    return-object v1

    .line 419
    .end local v0    # "cmdList":Ljava/util/List;
    .end local v1    # "cmdInfos":[Ljavax/activation/CommandInfo;
    .end local p1    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "cmdName"    # Ljava/lang/String;

    monitor-enter p0

    .line 475
    if-eqz p1, :cond_0

    .line 476
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    goto :goto_0

    .line 474
    .end local p0    # "this":Ljavax/activation/MailcapCommandMap;
    .end local p1    # "mimeType":Ljava/lang/String;
    .end local p2    # "cmdName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 478
    .restart local p1    # "mimeType":Ljava/lang/String;
    .restart local p2    # "cmdName":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 479
    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 480
    goto :goto_2

    .line 481
    :cond_1
    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 482
    .local v1, "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_2

    .line 484
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 485
    .local v2, "v":Ljava/util/List;
    if-eqz v2, :cond_2

    .line 486
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 488
    .local v3, "cmdClassName":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 489
    new-instance v4, Ljavax/activation/CommandInfo;

    invoke-direct {v4, p2, v3}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 478
    .end local v1    # "cmdMap":Ljava/util/Map;
    .end local v2    # "v":Ljava/util/List;
    .end local v3    # "cmdClassName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 495
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    :try_start_1
    iget-object v1, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 496
    aget-object v1, v1, v0

    if-nez v1, :cond_4

    .line 497
    goto :goto_4

    .line 498
    :cond_4
    invoke-virtual {v1, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 499
    .restart local v1    # "cmdMap":Ljava/util/Map;
    if-eqz v1, :cond_5

    .line 501
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 502
    .restart local v2    # "v":Ljava/util/List;
    if-eqz v2, :cond_5

    .line 503
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 505
    .local v4, "cmdClassName":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 506
    new-instance v3, Ljavax/activation/CommandInfo;

    invoke-direct {v3, p2, v4}, Ljavax/activation/CommandInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 495
    .end local v1    # "cmdMap":Ljava/util/Map;
    .end local v2    # "v":Ljava/util/List;
    .end local v4    # "cmdClassName":Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 510
    .end local v0    # "i":I
    :cond_6
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 474
    .end local p1    # "mimeType":Ljava/lang/String;
    .end local p2    # "cmdName":Ljava/lang/String;
    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMimeTypes()[Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 622
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v0, "mtList":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 625
    aget-object v2, v2, v1

    if-nez v2, :cond_0

    .line 626
    goto :goto_2

    .line 627
    :cond_0
    invoke-virtual {v2}, Lcom/sun/activation/registries/MailcapFile;->getMimeTypes()[Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, "ts":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 629
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 631
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 632
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    .end local p0    # "this":Ljavax/activation/MailcapCommandMap;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 624
    .end local v2    # "ts":[Ljava/lang/String;
    .end local v3    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 638
    .local v1, "mts":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 640
    monitor-exit p0

    return-object v1

    .line 621
    .end local v0    # "mtList":Ljava/util/List;
    .end local v1    # "mts":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 659
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 661
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 663
    .end local p0    # "this":Ljavax/activation/MailcapCommandMap;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 664
    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 665
    goto :goto_2

    .line 666
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getNativeCommands(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, "cmds":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 668
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 670
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 671
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 663
    .end local v2    # "cmds":[Ljava/lang/String;
    .end local v3    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    .end local v1    # "i":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 677
    .local v1, "cmds":[Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 679
    monitor-exit p0

    return-object v1

    .line 658
    .end local v0    # "cmdList":Ljava/util/List;
    .end local v1    # "cmds":[Ljava/lang/String;
    .end local p1    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;
    .locals 4
    .param p1, "mimeType"    # Ljava/lang/String;

    monitor-enter p0

    .line 354
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "cmdList":Ljava/util/List;
    if-eqz p1, :cond_0

    .line 356
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 358
    .end local p0    # "this":Ljavax/activation/MailcapCommandMap;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 359
    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 360
    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 362
    .local v2, "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_2

    .line 363
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 358
    .end local v2    # "cmdMap":Ljava/util/Map;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Ljavax/activation/MailcapCommandMap;->DB:[Lcom/sun/activation/registries/MailcapFile;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 368
    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 369
    goto :goto_3

    .line 370
    :cond_4
    invoke-virtual {v2, p1}, Lcom/sun/activation/registries/MailcapFile;->getMailcapFallbackList(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 371
    .restart local v2    # "cmdMap":Ljava/util/Map;
    if-eqz v2, :cond_5

    .line 372
    invoke-direct {p0, v2, v0}, Ljavax/activation/MailcapCommandMap;->appendPrefCmdsToList(Ljava/util/Map;Ljava/util/List;)V

    .line 367
    .end local v2    # "cmdMap":Ljava/util/Map;
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 375
    .end local v1    # "i":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/activation/CommandInfo;

    .line 376
    .local v1, "cmdInfos":[Ljavax/activation/CommandInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/activation/CommandInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 378
    monitor-exit p0

    return-object v1

    .line 353
    .end local v0    # "cmdList":Ljava/util/List;
    .end local v1    # "cmdInfos":[Ljavax/activation/CommandInfo;
    .end local p1    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
