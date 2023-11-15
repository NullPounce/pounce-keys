.class abstract Lcom/sun/mail/pop3/Protocol$Authenticator;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/pop3/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Authenticator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final enabled:Z

.field private final mech:Ljava/lang/String;

.field protected resp:Lcom/sun/mail/pop3/Response;

.field final synthetic this$0:Lcom/sun/mail/pop3/Protocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 426
    const-class v0, Lcom/sun/mail/pop3/Protocol;

    return-void
.end method

.method constructor <init>(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;)V
    .locals 1
    .param p2, "mech"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/pop3/Protocol$Authenticator;-><init>(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;Z)V

    .line 433
    return-void
.end method

.method constructor <init>(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "mech"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 435
    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    .line 437
    iput-boolean p3, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->enabled:Z

    .line 438
    return-void
.end method


# virtual methods
.method authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    move-object v1, p0

    const-string v2, " failed"

    const-string/jumbo v3, "unknown Throwable"

    const-string v4, "succeeded"

    const-string v5, "failed"

    const-string v6, " "

    const-string v7, "authentication failed"

    const-string v8, "AUTH "

    const/4 v9, 0x0

    .line 477
    .local v9, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual/range {p0 .. p4}, Lcom/sun/mail/pop3/Protocol$Authenticator;->getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "ir":Ljava/lang/String;
    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v10}, Lcom/sun/mail/pop3/Protocol;->access$200(Lcom/sun/mail/pop3/Protocol;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v10}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 479
    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v10}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " command trace suppressed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 480
    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v10}, Lcom/sun/mail/pop3/Protocol;->access$300(Lcom/sun/mail/pop3/Protocol;)V

    .line 483
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v0}, Lcom/sun/mail/pop3/Protocol$Authenticator;->runAuthenticationCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v10, v10, Lcom/sun/mail/pop3/Response;->cont:Z

    if-eqz v10, :cond_1

    .line 486
    invoke-virtual/range {p0 .. p4}, Lcom/sun/mail/pop3/Protocol$Authenticator;->doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local v0    # "ir":Ljava/lang/String;
    :cond_1
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$200(Lcom/sun/mail/pop3/Protocol;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    iget-object v6, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v6, v6, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 496
    :cond_3
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$400(Lcom/sun/mail/pop3/Protocol;)V

    .line 497
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v0, :cond_15

    .line 498
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->close()V

    .line 499
    if-eqz v9, :cond_7

    .line 500
    instance-of v0, v9, Ljava/lang/Error;

    if-nez v0, :cond_6

    .line 502
    instance-of v0, v9, Ljava/lang/Exception;

    if-eqz v0, :cond_5

    .line 503
    new-instance v0, Ljava/io/EOFException;

    .line 504
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v2, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 505
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v7, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_1

    :cond_4
    nop

    :goto_1
    invoke-direct {v0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "ex":Ljava/io/EOFException;
    invoke-virtual {v0, v9}, Ljava/io/EOFException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 507
    throw v0

    .line 509
    .end local v0    # "ex":Ljava/io/EOFException;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 501
    :cond_6
    move-object v0, v9

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 511
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v2, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 512
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v7, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_2

    :cond_8
    nop

    :goto_2
    invoke-direct {v0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :catchall_0
    move-exception v0

    .line 490
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v10}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 491
    move-object v9, v0

    .line 493
    .end local v0    # "t":Ljava/lang/Throwable;
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$200(Lcom/sun/mail/pop3/Protocol;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 494
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    iget-object v6, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v6, v6, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    move-object v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 496
    :cond_a
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$400(Lcom/sun/mail/pop3/Protocol;)V

    .line 497
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v0, :cond_15

    .line 498
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->close()V

    .line 499
    nop

    .line 500
    instance-of v0, v9, Ljava/lang/Error;

    if-nez v0, :cond_d

    .line 502
    instance-of v0, v9, Ljava/lang/Exception;

    if-eqz v0, :cond_c

    .line 503
    new-instance v0, Ljava/io/EOFException;

    .line 504
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v2, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 505
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v7, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_4

    :cond_b
    nop

    :goto_4
    invoke-direct {v0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "ex":Ljava/io/EOFException;
    invoke-virtual {v0, v9}, Ljava/io/EOFException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 507
    throw v0

    .line 509
    .end local v0    # "ex":Ljava/io/EOFException;
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 501
    :cond_d
    move-object v0, v9

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v10}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 493
    .end local v0    # "ex":Ljava/io/IOException;
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$200(Lcom/sun/mail/pop3/Protocol;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 494
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 495
    iget-object v6, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v6, v6, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_e

    goto :goto_5

    :cond_e
    move-object v4, v5

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 496
    :cond_f
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$400(Lcom/sun/mail/pop3/Protocol;)V

    .line 497
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v0, :cond_15

    .line 498
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->close()V

    .line 499
    if-eqz v9, :cond_13

    .line 500
    instance-of v0, v9, Ljava/lang/Error;

    if-nez v0, :cond_12

    .line 502
    instance-of v0, v9, Ljava/lang/Exception;

    if-eqz v0, :cond_11

    .line 503
    new-instance v0, Ljava/io/EOFException;

    .line 504
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v2, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 505
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v7, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_6

    :cond_10
    nop

    :goto_6
    invoke-direct {v0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "ex":Ljava/io/EOFException;
    invoke-virtual {v0, v9}, Ljava/io/EOFException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 507
    throw v0

    .line 509
    .end local v0    # "ex":Ljava/io/EOFException;
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 501
    :cond_12
    move-object v0, v9

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 511
    :cond_13
    new-instance v0, Ljava/io/EOFException;

    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v2, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_14

    .line 512
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v7, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_7

    :cond_14
    nop

    :goto_7
    invoke-direct {v0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 493
    :catchall_1
    move-exception v0

    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v2}, Lcom/sun/mail/pop3/Protocol;->access$200(Lcom/sun/mail/pop3/Protocol;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 494
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v2}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 495
    iget-object v8, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v8, v8, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v8, :cond_16

    goto :goto_8

    :cond_16
    move-object v4, v5

    :goto_8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 496
    :cond_17
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v2}, Lcom/sun/mail/pop3/Protocol;->access$400(Lcom/sun/mail/pop3/Protocol;)V

    .line 497
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-boolean v2, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_1d

    .line 498
    iget-object v0, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->close()V

    .line 499
    if-eqz v9, :cond_1b

    .line 500
    instance-of v0, v9, Ljava/lang/Error;

    if-nez v0, :cond_1a

    .line 502
    instance-of v0, v9, Ljava/lang/Exception;

    if-eqz v0, :cond_19

    .line 503
    new-instance v0, Ljava/io/EOFException;

    .line 504
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v2, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 505
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v7, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_9

    :cond_18
    nop

    :goto_9
    invoke-direct {v0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 506
    .restart local v0    # "ex":Ljava/io/EOFException;
    invoke-virtual {v0, v9}, Ljava/io/EOFException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 507
    throw v0

    .line 509
    .end local v0    # "ex":Ljava/io/EOFException;
    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 501
    :cond_1a
    move-object v0, v9

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 511
    :cond_1b
    new-instance v0, Ljava/io/EOFException;

    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v2, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 512
    iget-object v2, v1, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v7, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_a

    :cond_1c
    nop

    :goto_a
    invoke-direct {v0, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_1d
    throw v0
.end method

.method abstract doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method enabled()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->enabled:Z

    return v0
.end method

.method getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    const/4 v0, 0x0

    return-object v0
.end method

.method getMechanism()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->mech:Ljava/lang/String;

    return-object v0
.end method

.method protected runAuthenticationCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "ir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using one line authentication format"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 460
    :cond_0
    if-eqz p2, :cond_2

    .line 461
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "="

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/mail/pop3/Protocol;->access$100(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    goto :goto_1

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v0, p1}, Lcom/sun/mail/pop3/Protocol;->access$100(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol$Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    .line 465
    :goto_1
    return-void
.end method
