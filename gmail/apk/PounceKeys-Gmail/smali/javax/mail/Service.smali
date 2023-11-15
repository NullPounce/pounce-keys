.class public abstract Ljavax/mail/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private connected:Z

.field private final connectionListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected debug:Z

.field private final q:Ljavax/mail/EventQueue;

.field protected session:Ljavax/mail/Session;

.field protected volatile url:Ljavax/mail/URLName;


# direct methods
.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 18
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, v1, Ljavax/mail/Service;->debug:Z

    .line 56
    iput-boolean v0, v1, Ljavax/mail/Service;->connected:Z

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, v1, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    .line 80
    iput-object v2, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    .line 81
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    iput-boolean v0, v1, Ljavax/mail/Service;->debug:Z

    .line 82
    move-object/from16 v3, p2

    iput-object v3, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "protocol":Ljava/lang/String;
    const/4 v4, 0x0

    .line 90
    .local v4, "host":Ljava/lang/String;
    const/4 v5, -0x1

    .line 91
    .local v5, "port":I
    const/4 v6, 0x0

    .line 92
    .local v6, "user":Ljava/lang/String;
    const/4 v7, 0x0

    .line 93
    .local v7, "password":Ljava/lang/String;
    const/4 v8, 0x0

    .line 98
    .local v8, "file":Ljava/lang/String;
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v9, :cond_0

    .line 99
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v9}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v9}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 101
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v9}, Ljavax/mail/URLName;->getPort()I

    move-result v5

    .line 102
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v9}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v6

    .line 103
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v9}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 104
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v9}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v4

    move-object v4, v0

    move-object/from16 v0, v17

    goto :goto_0

    .line 98
    :cond_0
    move-object/from16 v17, v4

    move-object v4, v0

    move-object/from16 v0, v17

    .line 108
    .local v0, "host":Ljava/lang/String;
    .local v4, "protocol":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_2

    .line 109
    const-string v9, "mail."

    if-nez v0, :cond_1

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".host"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_1
    if-nez v6, :cond_2

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".user"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    :cond_2
    if-nez v0, :cond_3

    .line 117
    const-string v9, "mail.host"

    invoke-virtual {v2, v9}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_1

    .line 116
    :cond_3
    move-object/from16 v16, v0

    .line 119
    .end local v0    # "host":Ljava/lang/String;
    .local v16, "host":Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_4

    .line 120
    const-string v0, "mail.user"

    invoke-virtual {v2, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 123
    :cond_4
    if-nez v6, :cond_5

    .line 125
    :try_start_0
    const-string/jumbo v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 129
    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 132
    :cond_5
    :goto_2
    new-instance v0, Ljavax/mail/URLName;

    move-object v9, v0

    move-object v10, v4

    move-object/from16 v11, v16

    move v12, v5

    move-object v13, v8

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 135
    nop

    .line 136
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v9, "mail.event.scope"

    const-string v10, "folder"

    invoke-virtual {v0, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "scope":Ljava/lang/String;
    nop

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v9

    const-string v10, "mail.event.executor"

    invoke-virtual {v9, v10}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Executor;

    .line 139
    .local v9, "executor":Ljava/util/concurrent/Executor;
    const-string v10, "application"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 140
    invoke-static {v9}, Ljavax/mail/EventQueue;->getApplicationEventQueue(Ljava/util/concurrent/Executor;)Ljavax/mail/EventQueue;

    move-result-object v10

    iput-object v10, v1, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    goto :goto_3

    .line 141
    :cond_6
    const-string v10, "session"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 142
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getEventQueue()Ljavax/mail/EventQueue;

    move-result-object v10

    iput-object v10, v1, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    goto :goto_3

    .line 145
    :cond_7
    new-instance v10, Ljavax/mail/EventQueue;

    invoke-direct {v10, v9}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v10, v1, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    .line 146
    :goto_3
    return-void
.end method


# virtual methods
.method public addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .line 545
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 485
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 486
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    monitor-exit p0

    return-void

    .line 484
    .end local p0    # "this":Ljavax/mail/Service;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    monitor-enter p0

    .line 264
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->isConnected()Z

    move-result v2

    if-nez v2, :cond_15

    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, "connected":Z
    const/4 v3, 0x0

    .line 270
    .local v3, "save":Z
    const/4 v4, 0x0

    .line 271
    .local v4, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    .line 276
    .local v5, "file":Ljava/lang/String;
    iget-object v6, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v6, :cond_5

    .line 277
    iget-object v6, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v6}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 278
    if-nez p1, :cond_0

    .line 279
    iget-object v6, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v6}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v6

    .end local p1    # "host":Ljava/lang/String;
    .local v6, "host":Ljava/lang/String;
    goto :goto_0

    .line 278
    .end local v6    # "host":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/Service;
    .restart local p1    # "host":Ljava/lang/String;
    :cond_0
    move-object/from16 v6, p1

    .line 280
    .end local p1    # "host":Ljava/lang/String;
    .restart local v6    # "host":Ljava/lang/String;
    :goto_0
    const/4 v7, -0x1

    move/from16 v8, p2

    if-ne v8, v7, :cond_1

    .line 281
    iget-object v7, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v7}, Ljavax/mail/URLName;->getPort()I

    move-result v7

    .end local p2    # "port":I
    .local v7, "port":I
    goto :goto_1

    .line 280
    .end local v7    # "port":I
    .restart local p2    # "port":I
    :cond_1
    move v7, v8

    .line 283
    .end local p2    # "port":I
    .restart local v7    # "port":I
    :goto_1
    if-nez v0, :cond_3

    .line 284
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    .line 285
    .end local p3    # "user":Ljava/lang/String;
    .local v0, "user":Ljava/lang/String;
    if-nez p4, :cond_2

    .line 286
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v8

    .end local p4    # "password":Ljava/lang/String;
    .local v8, "password":Ljava/lang/String;
    goto :goto_2

    .line 285
    .end local v8    # "password":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :cond_2
    move-object/from16 v8, p4

    goto :goto_2

    .line 288
    .end local v0    # "user":Ljava/lang/String;
    .restart local p3    # "user":Ljava/lang/String;
    :cond_3
    if-nez p4, :cond_4

    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 290
    iget-object v8, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v8}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v8

    .end local p4    # "password":Ljava/lang/String;
    .restart local v8    # "password":Ljava/lang/String;
    goto :goto_2

    .line 293
    .end local v8    # "password":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :cond_4
    move-object/from16 v8, p4

    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    .restart local v0    # "user":Ljava/lang/String;
    .restart local v8    # "password":Ljava/lang/String;
    :goto_2
    iget-object v9, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    invoke-virtual {v9}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v14, v4

    move-object v15, v5

    move v4, v7

    move-object v5, v8

    goto :goto_3

    .line 276
    .end local v0    # "user":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v7    # "port":I
    .end local v8    # "password":Ljava/lang/String;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :cond_5
    move/from16 v8, p2

    move-object/from16 v6, p1

    move-object v14, v4

    move-object v15, v5

    move v4, v8

    move-object/from16 v5, p4

    .line 297
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    .restart local v0    # "user":Ljava/lang/String;
    .local v4, "port":I
    .local v5, "password":Ljava/lang/String;
    .restart local v6    # "host":Ljava/lang/String;
    .local v14, "protocol":Ljava/lang/String;
    .local v15, "file":Ljava/lang/String;
    :goto_3
    if-eqz v14, :cond_7

    .line 298
    if-nez v6, :cond_6

    .line 299
    iget-object v7, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mail."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".host"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 300
    :cond_6
    if-nez v0, :cond_7

    .line 301
    iget-object v7, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mail."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".user"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 305
    :cond_7
    if-nez v6, :cond_8

    .line 306
    iget-object v7, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v8, "mail.host"

    invoke-virtual {v7, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 308
    :cond_8
    if-nez v0, :cond_9

    .line 309
    iget-object v7, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const-string v8, "mail.user"

    invoke-virtual {v7, v8}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    goto :goto_4

    .line 308
    :cond_9
    move-object v7, v0

    .line 312
    .end local v0    # "user":Ljava/lang/String;
    .local v7, "user":Ljava/lang/String;
    :goto_4
    if-nez v7, :cond_a

    .line 314
    :try_start_1
    const-string/jumbo v0, "user.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    .line 318
    move-object v0, v7

    goto :goto_5

    .line 315
    :catch_0
    move-exception v0

    .line 322
    :cond_a
    move-object v0, v7

    .end local v7    # "user":Ljava/lang/String;
    .restart local v0    # "user":Ljava/lang/String;
    :goto_5
    if-nez v5, :cond_d

    :try_start_2
    iget-object v7, v1, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    if-eqz v7, :cond_d

    .line 324
    new-instance v13, Ljavax/mail/URLName;

    const/16 v16, 0x0

    move-object v7, v13

    move-object v8, v14

    move-object v9, v6

    move v10, v4

    move-object v11, v15

    move-object v12, v0

    move/from16 v17, v2

    move-object v2, v13

    .end local v2    # "connected":Z
    .local v17, "connected":Z
    move-object/from16 v13, v16

    invoke-direct/range {v7 .. v13}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 325
    iget-object v2, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/mail/Session;->getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;

    move-result-object v2

    .line 326
    .local v2, "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v2, :cond_c

    .line 327
    if-nez v0, :cond_b

    .line 328
    invoke-virtual {v2}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 329
    invoke-virtual {v2}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v2, v0

    goto :goto_6

    .line 330
    :cond_b
    invoke-virtual {v2}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 331
    invoke-virtual {v2}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v7

    move-object v2, v0

    goto :goto_6

    .line 334
    :cond_c
    const/4 v3, 0x1

    move-object v2, v0

    goto :goto_6

    .line 322
    .end local v17    # "connected":Z
    .local v2, "connected":Z
    :cond_d
    move/from16 v17, v2

    .line 340
    .end local v2    # "connected":Z
    .restart local v17    # "connected":Z
    :cond_e
    move-object v2, v0

    .end local v0    # "user":Ljava/lang/String;
    .local v2, "user":Ljava/lang/String;
    :goto_6
    const/4 v7, 0x0

    .line 342
    .local v7, "authEx":Ljavax/mail/AuthenticationFailedException;
    :try_start_3
    invoke-virtual {v1, v6, v4, v2, v5}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljavax/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .end local v17    # "connected":Z
    .local v0, "connected":Z
    move/from16 v17, v0

    move-object/from16 v16, v7

    goto :goto_7

    .line 343
    .end local v0    # "connected":Z
    .restart local v17    # "connected":Z
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 344
    .local v0, "ex":Ljavax/mail/AuthenticationFailedException;
    move-object v7, v0

    move-object/from16 v16, v7

    .line 348
    .end local v0    # "ex":Ljavax/mail/AuthenticationFailedException;
    .end local v7    # "authEx":Ljavax/mail/AuthenticationFailedException;
    .local v16, "authEx":Ljavax/mail/AuthenticationFailedException;
    :goto_7
    if-nez v17, :cond_f

    .line 351
    :try_start_4
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 354
    .local v0, "addr":Ljava/net/InetAddress;
    goto :goto_8

    .line 352
    .end local v0    # "addr":Ljava/net/InetAddress;
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 353
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v7, 0x0

    move-object v0, v7

    .line 355
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_8
    :try_start_5
    iget-object v7, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    const/4 v11, 0x0

    move-object v8, v0

    move v9, v4

    move-object v10, v14

    move-object v12, v2

    invoke-virtual/range {v7 .. v12}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v7

    .line 359
    .local v7, "pw":Ljavax/mail/PasswordAuthentication;
    if-eqz v7, :cond_f

    .line 360
    invoke-virtual {v7}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 361
    invoke-virtual {v7}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 364
    invoke-virtual {v1, v6, v4, v2, v5}, Ljavax/mail/Service;->protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    move/from16 v17, v8

    .line 369
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v7    # "pw":Ljavax/mail/PasswordAuthentication;
    :cond_f
    if-nez v17, :cond_13

    .line 370
    if-nez v16, :cond_12

    .line 372
    if-eqz v2, :cond_11

    .line 375
    if-nez v5, :cond_10

    .line 376
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    const-string v7, "failed to connect, no password specified?"

    invoke-direct {v0, v7}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_10
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    const-string v7, "failed to connect"

    invoke-direct {v0, v7}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_11
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    const-string v7, "failed to connect, no user name specified?"

    invoke-direct {v0, v7}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_12
    throw v16

    .line 382
    :cond_13
    new-instance v0, Ljavax/mail/URLName;

    move-object v7, v0

    move-object v8, v14

    move-object v9, v6

    move v10, v4

    move-object v11, v15

    move-object v12, v2

    move-object v13, v5

    invoke-direct/range {v7 .. v13}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljavax/mail/Service;->setURLName(Ljavax/mail/URLName;)V

    .line 384
    if-eqz v3, :cond_14

    .line 385
    iget-object v0, v1, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v7

    new-instance v8, Ljavax/mail/PasswordAuthentication;

    invoke-direct {v8, v2, v5}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljavax/mail/Session;->setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V

    .line 389
    :cond_14
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljavax/mail/Service;->setConnected(Z)V

    .line 392
    invoke-virtual {v1, v0}, Ljavax/mail/Service;->notifyConnectionListeners(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    .line 265
    .end local v2    # "user":Ljava/lang/String;
    .end local v3    # "save":Z
    .end local v4    # "port":I
    .end local v5    # "password":Ljava/lang/String;
    .end local v6    # "host":Ljava/lang/String;
    .end local v14    # "protocol":Ljava/lang/String;
    .end local v15    # "file":Ljava/lang/String;
    .end local v16    # "authEx":Ljavax/mail/AuthenticationFailedException;
    .end local v17    # "connected":Z
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :cond_15
    move/from16 v8, p2

    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Ljavax/mail/Service;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 222
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Ljavax/mail/Service;->connect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 638
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0}, Ljavax/mail/EventQueue;->terminateQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 641
    nop

    .line 642
    return-void

    .line 640
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 641
    throw v0
.end method

.method getEventQueue()Ljavax/mail/EventQueue;
    .locals 1

    .line 655
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    return-object v0
.end method

.method getSession()Ljavax/mail/Session;
    .locals 1

    .line 648
    iget-object v0, p0, Ljavax/mail/Service;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getURLName()Ljavax/mail/URLName;
    .locals 9

    .line 504
    iget-object v0, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 505
    .local v0, "url":Ljavax/mail/URLName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/mail/URLName;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 506
    :cond_0
    new-instance v1, Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-virtual {v0}, Ljavax/mail/URLName;->getPort()I

    move-result v5

    const/4 v6, 0x0

    .line 508
    invoke-virtual {v0}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    return-object v1

    .line 510
    :cond_1
    return-object v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 445
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/Service;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 445
    .end local p0    # "this":Ljavax/mail/Service;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyConnectionListeners(I)V
    .locals 2
    .param p1, "type"    # I

    .line 579
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 580
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 581
    .local v0, "e":Ljavax/mail/event/ConnectionEvent;
    iget-object v1, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Ljavax/mail/Service;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 594
    .end local v0    # "e":Ljavax/mail/event/ConnectionEvent;
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 595
    iget-object v0, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0}, Ljavax/mail/EventQueue;->terminateQueue()V

    .line 596
    :cond_1
    return-void
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method protected queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .locals 2
    .param p1, "event"    # Ljavax/mail/event/MailEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/mail/event/MailEvent;",
            "Ljava/util/Vector<",
            "+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .line 628
    .local p2, "vector":Ljava/util/Vector;, "Ljava/util/Vector<+Ljava/util/EventListener;>;"
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 629
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<+Ljava/util/EventListener;>;"
    iget-object v1, p0, Ljavax/mail/Service;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v1, p1, v0}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 630
    return-void
.end method

.method public removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .locals 1
    .param p1, "l"    # Ljavax/mail/event/ConnectionListener;

    .line 558
    iget-object v0, p0, Ljavax/mail/Service;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 559
    return-void
.end method

.method protected declared-synchronized setConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    monitor-enter p0

    .line 462
    :try_start_0
    iput-boolean p1, p0, Ljavax/mail/Service;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit p0

    return-void

    .line 461
    .end local p0    # "this":Ljavax/mail/Service;
    .end local p1    # "connected":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setURLName(Ljavax/mail/URLName;)V
    .locals 0
    .param p1, "url"    # Ljavax/mail/URLName;

    .line 532
    iput-object p1, p0, Ljavax/mail/Service;->url:Ljavax/mail/URLName;

    .line 533
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 604
    invoke-virtual {p0}, Ljavax/mail/Service;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 605
    .local v0, "url":Ljavax/mail/URLName;
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 608
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
