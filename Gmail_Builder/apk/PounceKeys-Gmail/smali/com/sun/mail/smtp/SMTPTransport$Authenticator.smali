.class abstract Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
.super Ljava/lang/Object;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
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

.field protected resp:I

.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 869
    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    return-void
.end method

.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V
    .locals 1
    .param p2, "mech"    # Ljava/lang/String;

    .line 875
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;Z)V

    .line 876
    return-void
.end method

.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "mech"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 878
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    .line 880
    iput-boolean p3, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->enabled:Z

    .line 881
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
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 898
    move-object v1, p0

    const-string v2, " failed"

    const-string/jumbo v3, "unknown Throwable"

    const-string v4, "succeeded"

    const-string v5, "failed"

    const-string v6, " "

    const-string v7, "AUTH "

    const/4 v8, 0x0

    .line 901
    .local v8, "thrown":Ljava/lang/Throwable;
    const/16 v9, 0xeb

    :try_start_0
    invoke-virtual/range {p0 .. p4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "ir":Ljava/lang/String;
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v10}, Lcom/sun/mail/smtp/SMTPTransport;->access$000(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v10}, Lcom/sun/mail/smtp/SMTPTransport;->access$100(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 903
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v10}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " command trace suppressed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 904
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v10}, Lcom/sun/mail/smtp/SMTPTransport;->access$300(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 906
    :cond_0
    if-eqz v0, :cond_2

    .line 907
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 908
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "="

    goto :goto_0

    :cond_1
    move-object v12, v0

    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 907
    invoke-virtual {v10, v11}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    goto :goto_1

    .line 910
    :cond_2
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    .line 916
    :goto_1
    iget v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    const/16 v11, 0x212

    if-ne v10, v11, :cond_4

    .line 917
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v10}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 918
    if-eqz v0, :cond_3

    .line 919
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    goto :goto_2

    .line 921
    :cond_3
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v10

    iput v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    .line 923
    :cond_4
    :goto_2
    iget v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    const/16 v11, 0x14e

    if-ne v10, v11, :cond_5

    .line 924
    invoke-virtual/range {p0 .. p4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    .end local v0    # "ir":Ljava/lang/String;
    :cond_5
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$000(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$100(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 932
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 933
    iget v6, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v6, v9, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 934
    :cond_7
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$400(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 935
    iget v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v0, v9, :cond_14

    .line 936
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$500(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 937
    if-eqz v8, :cond_a

    .line 938
    instance-of v0, v8, Ljava/lang/Error;

    if-nez v0, :cond_9

    .line 940
    instance-of v0, v8, Ljava/lang/Exception;

    if-nez v0, :cond_8

    .line 944
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 941
    :cond_8
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 942
    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    check-cast v3, Ljava/lang/Exception;

    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 939
    :cond_9
    move-object v0, v8

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 946
    :cond_a
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 947
    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :catchall_0
    move-exception v0

    .line 928
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v10}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 929
    move-object v8, v0

    .line 931
    .end local v0    # "t":Ljava/lang/Throwable;
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$000(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$100(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 932
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 933
    iget v6, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v6, v9, :cond_b

    goto :goto_4

    :cond_b
    move-object v4, v5

    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 934
    :cond_c
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$400(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 935
    iget v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v0, v9, :cond_14

    .line 936
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$500(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 937
    nop

    .line 938
    instance-of v0, v8, Ljava/lang/Error;

    if-nez v0, :cond_e

    .line 940
    instance-of v0, v8, Ljava/lang/Exception;

    if-nez v0, :cond_d

    .line 944
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 941
    :cond_d
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 942
    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    check-cast v3, Ljava/lang/Exception;

    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 939
    :cond_e
    move-object v0, v8

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v10}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 931
    .end local v0    # "ex":Ljava/io/IOException;
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$000(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$100(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 932
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 933
    iget v6, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v6, v9, :cond_f

    goto :goto_5

    :cond_f
    move-object v4, v5

    :goto_5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 934
    :cond_10
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$400(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 935
    iget v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v0, v9, :cond_14

    .line 936
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$500(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 937
    if-eqz v8, :cond_13

    .line 938
    instance-of v0, v8, Ljava/lang/Error;

    if-nez v0, :cond_12

    .line 940
    instance-of v0, v8, Ljava/lang/Exception;

    if-nez v0, :cond_11

    .line 944
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 941
    :cond_11
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 942
    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    check-cast v3, Ljava/lang/Exception;

    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 939
    :cond_12
    move-object v0, v8

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 946
    :cond_13
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 947
    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 931
    :catchall_1
    move-exception v0

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$000(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$100(Lcom/sun/mail/smtp/SMTPTransport;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 932
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 933
    iget v7, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-ne v7, v9, :cond_15

    goto :goto_6

    :cond_15
    move-object v4, v5

    :goto_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 934
    :cond_16
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v2}, Lcom/sun/mail/smtp/SMTPTransport;->access$400(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 935
    iget v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->resp:I

    if-eq v2, v9, :cond_1a

    .line 936
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$500(Lcom/sun/mail/smtp/SMTPTransport;)V

    .line 937
    if-eqz v8, :cond_19

    .line 938
    instance-of v0, v8, Ljava/lang/Error;

    if-nez v0, :cond_18

    .line 940
    instance-of v0, v8, Ljava/lang/Exception;

    if-nez v0, :cond_17

    .line 944
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 941
    :cond_17
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 942
    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    check-cast v3, Ljava/lang/Exception;

    invoke-direct {v0, v2, v3}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 939
    :cond_18
    move-object v0, v8

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 946
    :cond_19
    new-instance v0, Ljavax/mail/AuthenticationFailedException;

    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 947
    invoke-virtual {v2}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_1a
    throw v0
.end method

.method abstract doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method enabled()Z
    .locals 1

    .line 888
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->enabled:Z

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
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    const/4 v0, 0x0

    return-object v0
.end method

.method getMechanism()Ljava/lang/String;
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->mech:Ljava/lang/String;

    return-object v0
.end method
