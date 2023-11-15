.class public Ljavax/activation/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"


# static fields
.field private static final emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

.field private static factory:Ljavax/activation/DataContentHandlerFactory;


# instance fields
.field private currentCommandMap:Ljavax/activation/CommandMap;

.field private dataContentHandler:Ljavax/activation/DataContentHandler;

.field private dataSource:Ljavax/activation/DataSource;

.field private factoryDCH:Ljavax/activation/DataContentHandler;

.field private objDataSource:Ljavax/activation/DataSource;

.field private object:Ljava/lang/Object;

.field private objectMimeType:Ljava/lang/String;

.field private oldFactory:Ljavax/activation/DataContentHandlerFactory;

.field private shortType:Ljava/lang/String;

.field private transferFlavors:[Ljavax/activation/ActivationDataFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    new-array v0, v0, [Ljavax/activation/ActivationDataFlavor;

    sput-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 85
    const/4 v0, 0x0

    sput-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "mimeType"    # Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 65
    iput-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 70
    iput-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    .line 78
    sget-object v1, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 81
    iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 82
    iput-object v0, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 86
    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 88
    iput-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 114
    iput-object p2, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 115
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 65
    iput-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 70
    iput-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    .line 78
    sget-object v1, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 81
    iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 82
    iput-object v0, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 86
    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 88
    iput-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    .line 126
    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 127
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 128
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 2
    .param p1, "ds"    # Ljavax/activation/DataSource;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 65
    iput-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 70
    iput-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    .line 71
    iput-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    .line 78
    sget-object v1, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    iput-object v1, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 81
    iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 82
    iput-object v0, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 86
    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 88
    iput-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 100
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 101
    return-void
.end method

.method static synthetic access$000(Ljavax/activation/DataHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljavax/activation/DataHandler;

    .line 60
    iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljavax/activation/DataHandler;

    .line 60
    iget-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized getBaseType()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 620
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    .local v0, "ct":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljavax/activation/MimeType;

    invoke-direct {v1, v0}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    .line 623
    .local v1, "mt":Ljavax/activation/MimeType;
    invoke-virtual {v1}, Ljavax/activation/MimeType;->getBaseType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    .end local v1    # "mt":Ljavax/activation/MimeType;
    goto :goto_0

    .line 624
    .end local p0    # "this":Ljavax/activation/DataHandler;
    :catch_0
    move-exception v1

    .line 625
    .local v1, "e":Ljavax/activation/MimeTypeParseException;
    :try_start_2
    iput-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;

    .line 628
    .end local v0    # "ct":Ljava/lang/String;
    .end local v1    # "e":Ljavax/activation/MimeTypeParseException;
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->shortType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getCommandMap()Ljavax/activation/CommandMap;
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    monitor-exit p0

    return-object v0

    .line 137
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 133
    .end local p0    # "this":Ljavax/activation/DataHandler;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getDataContentHandler()Ljavax/activation/DataContentHandler;
    .locals 5

    monitor-enter p0

    .line 573
    :try_start_0
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iget-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    if-eq v0, v1, :cond_0

    .line 574
    iput-object v0, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 576
    iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 577
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 580
    .end local p0    # "this":Ljavax/activation/DataHandler;
    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 581
    monitor-exit p0

    return-object v0

    .line 583
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "simpleMT":Ljava/lang/String;
    iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    if-nez v1, :cond_2

    sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    if-eqz v1, :cond_2

    .line 586
    invoke-interface {v1, v0}, Ljavax/activation/DataContentHandlerFactory;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    .line 588
    :cond_2
    iget-object v1, p0, Ljavax/activation/DataHandler;->factoryDCH:Ljavax/activation/DataContentHandler;

    if-eqz v1, :cond_3

    .line 589
    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 591
    :cond_3
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    if-nez v1, :cond_5

    .line 592
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v1, :cond_4

    .line 593
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    .line 594
    invoke-virtual {v1, v0, v2}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    goto :goto_0

    .line 596
    :cond_4
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v1

    .line 597
    invoke-virtual {v1, v0}, Ljavax/activation/CommandMap;->createDataContentHandler(Ljava/lang/String;)Ljavax/activation/DataContentHandler;

    move-result-object v1

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 602
    :cond_5
    :goto_0
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v1, :cond_6

    .line 603
    new-instance v1, Ljavax/activation/DataSourceDataContentHandler;

    iget-object v2, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    iget-object v3, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-direct {v1, v2, v3}, Ljavax/activation/DataSourceDataContentHandler;-><init>(Ljavax/activation/DataContentHandler;Ljavax/activation/DataSource;)V

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    goto :goto_1

    .line 607
    :cond_6
    new-instance v1, Ljavax/activation/ObjectDataContentHandler;

    iget-object v2, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    iget-object v3, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    iget-object v4, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Ljavax/activation/ObjectDataContentHandler;-><init>(Ljavax/activation/DataContentHandler;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 611
    :goto_1
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 572
    .end local v0    # "simpleMT":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized setDataContentHandlerFactory(Ljavax/activation/DataContentHandlerFactory;)V
    .locals 5
    .param p0, "newFactory"    # Ljavax/activation/DataContentHandlerFactory;

    const-class v0, Ljavax/activation/DataHandler;

    monitor-enter v0

    .line 646
    :try_start_0
    sget-object v1, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    if-nez v1, :cond_2

    .line 649
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .local v1, "security":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_1

    .line 653
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    goto :goto_0

    .line 654
    :catch_0
    move-exception v2

    .line 658
    .local v2, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-class v3, Ljavax/activation/DataHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 659
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    throw v2

    .line 663
    .end local v2    # "ex":Ljava/lang/SecurityException;
    :cond_1
    :goto_0
    sput-object p0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    monitor-exit v0

    return-void

    .line 647
    .end local v1    # "security":Ljava/lang/SecurityManager;
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/Error;

    const-string v2, "DataContentHandlerFactory already defined"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 645
    .end local p0    # "newFactory":Ljavax/activation/DataContentHandlerFactory;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAllCommands()[Ljavax/activation/CommandInfo;
    .locals 3

    .line 474
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getAllCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBean(Ljavax/activation/CommandInfo;)Ljava/lang/Object;
    .locals 3
    .param p1, "cmdinfo"    # Ljavax/activation/CommandInfo;

    .line 537
    const/4 v0, 0x0

    .line 541
    .local v0, "bean":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 543
    .local v1, "cld":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 544
    if-nez v1, :cond_0

    .line 545
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 546
    :cond_0
    invoke-virtual {p1, p0, v1}, Ljavax/activation/CommandInfo;->getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 548
    .end local v1    # "cld":Ljava/lang/ClassLoader;
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 547
    :catch_1
    move-exception v1

    goto :goto_0

    .line 550
    :goto_1
    return-object v0
.end method

.method public getCommand(Ljava/lang/String;)Ljavax/activation/CommandInfo;
    .locals 3
    .param p1, "cmdName"    # Ljava/lang/String;

    .line 493
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-virtual {v0, v1, p1, v2}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;Ljavax/activation/DataSource;)Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0

    .line 497
    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljavax/activation/CommandMap;->getCommand(Ljava/lang/String;Ljava/lang/String;)Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 519
    return-object v0

    .line 521
    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/activation/DataContentHandler;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSource()Ljavax/activation/DataSource;
    .locals 1

    .line 155
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljavax/activation/DataHandlerDataSource;

    invoke-direct {v0, p0}, Ljavax/activation/DataHandlerDataSource;-><init>(Ljavax/activation/DataHandler;)V

    iput-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    .line 159
    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->objDataSource:Ljavax/activation/DataSource;

    return-object v0

    .line 161
    :cond_1
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "ins":Ljava/io/InputStream;
    iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v1, :cond_0

    .line 221
    invoke-interface {v1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 223
    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v1

    .line 225
    .local v1, "dch":Ljavax/activation/DataContentHandler;
    if-eqz v1, :cond_3

    .line 229
    instance-of v2, v1, Ljavax/activation/ObjectDataContentHandler;

    if-eqz v2, :cond_2

    .line 230
    move-object v2, v1

    check-cast v2, Ljavax/activation/ObjectDataContentHandler;

    invoke-virtual {v2}, Ljavax/activation/ObjectDataContentHandler;->getDCH()Ljavax/activation/DataContentHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    new-instance v2, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no object DCH for MIME type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_2
    :goto_0
    move-object v2, v1

    .line 243
    .local v2, "fdch":Ljavax/activation/DataContentHandler;
    new-instance v3, Ljava/io/PipedOutputStream;

    invoke-direct {v3}, Ljava/io/PipedOutputStream;-><init>()V

    .line 244
    .local v3, "pos":Ljava/io/PipedOutputStream;
    new-instance v4, Ljava/io/PipedInputStream;

    invoke-direct {v4, v3}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 245
    .local v4, "pin":Ljava/io/PipedInputStream;
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Ljavax/activation/DataHandler$1;

    invoke-direct {v6, p0, v2, v3}, Ljavax/activation/DataHandler$1;-><init>(Ljavax/activation/DataHandler;Ljavax/activation/DataContentHandler;Ljava/io/PipedOutputStream;)V

    const-string v7, "DataHandler.getInputStream"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 260
    move-object v0, v4

    .line 263
    .end local v1    # "dch":Ljavax/activation/DataContentHandler;
    .end local v2    # "fdch":Ljavax/activation/DataContentHandler;
    .end local v3    # "pos":Ljava/io/PipedOutputStream;
    .end local v4    # "pin":Ljava/io/PipedInputStream;
    :goto_1
    return-object v0

    .line 226
    .restart local v1    # "dch":Ljavax/activation/DataContentHandler;
    :cond_3
    new-instance v2, Ljavax/activation/UnsupportedDataTypeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no DCH for MIME type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 227
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/activation/UnsupportedDataTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Ljavax/activation/DataSource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 320
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredCommands()[Ljavax/activation/CommandInfo;
    .locals 3

    .line 454
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-virtual {v0, v1, v2}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;Ljavax/activation/DataSource;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0

    .line 458
    :cond_0
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getCommandMap()Ljavax/activation/CommandMap;

    move-result-object v0

    invoke-direct {p0}, Ljavax/activation/DataHandler;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/activation/CommandMap;->getPreferredCommands(Ljava/lang/String;)[Ljavax/activation/CommandInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTransferData(Ljavax/activation/ActivationDataFlavor;)Ljava/lang/Object;
    .locals 2
    .param p1, "flavor"    # Ljavax/activation/ActivationDataFlavor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    invoke-interface {v0, p1, v1}, Ljavax/activation/DataContentHandler;->getTransferData(Ljavax/activation/ActivationDataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;
    .locals 2

    monitor-enter p0

    .line 348
    :try_start_0
    sget-object v0, Ljavax/activation/DataHandler;->factory:Ljavax/activation/DataContentHandlerFactory;

    iget-object v1, p0, Ljavax/activation/DataHandler;->oldFactory:Ljavax/activation/DataContentHandlerFactory;

    if-eq v0, v1, :cond_0

    .line 349
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 352
    .end local p0    # "this":Ljavax/activation/DataHandler;
    :cond_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    sget-object v1, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    if-ne v0, v1, :cond_1

    .line 353
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    invoke-interface {v0}, Ljavax/activation/DataContentHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 354
    :cond_1
    iget-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_2

    .line 355
    monitor-exit p0

    return-object v0

    .line 357
    :cond_2
    :try_start_1
    invoke-virtual {v0}, [Ljavax/activation/ActivationDataFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/activation/ActivationDataFlavor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDataFlavorSupported(Ljavax/activation/ActivationDataFlavor;)Z
    .locals 3
    .param p1, "flavor"    # Ljavax/activation/ActivationDataFlavor;

    .line 373
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getTransferDataFlavors()[Ljavax/activation/ActivationDataFlavor;

    move-result-object v0

    .line 375
    .local v0, "lFlavors":[Ljavax/activation/ActivationDataFlavor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 376
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Ljavax/activation/ActivationDataFlavor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const/4 v2, 0x1

    return v2

    .line 375
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized setCommandMap(Ljavax/activation/CommandMap;)V
    .locals 1
    .param p1, "commandMap"    # Ljavax/activation/CommandMap;

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;

    if-ne p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 433
    :cond_0
    sget-object v0, Ljavax/activation/DataHandler;->emptyFlavors:[Ljavax/activation/ActivationDataFlavor;

    iput-object v0, p0, Ljavax/activation/DataHandler;->transferFlavors:[Ljavax/activation/ActivationDataFlavor;

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/DataHandler;->dataContentHandler:Ljavax/activation/DataContentHandler;

    .line 436
    iput-object p1, p0, Ljavax/activation/DataHandler;->currentCommandMap:Ljavax/activation/CommandMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_1
    monitor-exit p0

    return-void

    .line 430
    .end local p0    # "this":Ljavax/activation/DataHandler;
    .end local p1    # "commandMap":Ljavax/activation/CommandMap;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Ljavax/activation/DataHandler;->dataSource:Ljavax/activation/DataSource;

    if-eqz v0, :cond_1

    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "is":Ljava/io/InputStream;
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 288
    .local v2, "data":[B
    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 291
    .end local v1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v3, v1

    .local v3, "bytes_read":I
    if-lez v1, :cond_0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 296
    const/4 v0, 0x0

    .line 297
    nop

    .line 298
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "data":[B
    .end local v3    # "bytes_read":I
    goto :goto_1

    .line 295
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local v2    # "data":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 296
    const/4 v0, 0x0

    .line 297
    throw v1

    .line 299
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v2    # "data":[B
    :cond_1
    invoke-direct {p0}, Ljavax/activation/DataHandler;->getDataContentHandler()Ljavax/activation/DataContentHandler;

    move-result-object v0

    .line 300
    .local v0, "dch":Ljavax/activation/DataContentHandler;
    iget-object v1, p0, Ljavax/activation/DataHandler;->object:Ljava/lang/Object;

    iget-object v2, p0, Ljavax/activation/DataHandler;->objectMimeType:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Ljavax/activation/DataContentHandler;->writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 302
    .end local v0    # "dch":Ljavax/activation/DataContentHandler;
    :goto_1
    return-void
.end method
