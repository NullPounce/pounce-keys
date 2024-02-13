.class Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;,
        Lcom/sun/mail/pop3/Protocol$NtlmAuthenticator;,
        Lcom/sun/mail/pop3/Protocol$PlainAuthenticator;,
        Lcom/sun/mail/pop3/Protocol$LoginAuthenticator;,
        Lcom/sun/mail/pop3/Protocol$Authenticator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final POP3_PORT:I = 0x6e

.field private static final SLOP:I = 0x80

.field private static digits:[C


# instance fields
.field private apopChallenge:Ljava/lang/String;

.field private authenticators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/mail/pop3/Protocol$Authenticator;",
            ">;"
        }
    .end annotation
.end field

.field private capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAuthenticationMechanisms:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private input:Ljava/io/BufferedReader;

.field private localHostName:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private noauthdebug:Z

.field private output:Ljava/io/PrintWriter;

.field private pipelining:Z

.field private prefix:Ljava/lang/String;

.field private props:Ljava/util/Properties;

.field private socket:Ljava/net/Socket;

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;

.field private traceSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    nop

    .line 769
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;ILcom/sun/mail/util/MailLogger;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "logger"    # Lcom/sun/mail/util/MailLogger;
    .param p4, "props"    # Ljava/util/Properties;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "isSSL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 65
    iput-object v0, v1, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    .line 67
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 69
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Lcom/sun/mail/pop3/Protocol;->authenticators:Ljava/util/Map;

    .line 84
    iput-object v2, v1, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    .line 85
    iput-object v4, v1, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    .line 86
    iput-object v5, v1, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    .line 87
    iput-object v3, v1, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    .line 88
    const-string v8, "protocol"

    invoke-virtual {v3, v8, v0}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v8

    iput-object v8, v1, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 89
    const-string v8, "mail.debug.auth"

    const/4 v9, 0x0

    invoke-static {v4, v8, v9}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v8

    xor-int/2addr v8, v7

    iput-boolean v8, v1, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".apop.enable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v4, v8}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v8

    .line 94
    .local v8, "enableAPOP":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".disablecapa"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v4, v10}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v10

    .line 96
    .local v10, "disableCapa":Z
    const/4 v11, -0x1

    move/from16 v12, p2

    if-ne v12, v11, :cond_0

    .line 97
    const/16 v12, 0x6e

    .line 98
    .end local p2    # "port":I
    .local v12, "port":I
    :cond_0
    :try_start_0
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v13}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 99
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "connecting to host \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\", port "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", isSSL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-static {v2, v12, v4, v5, v6}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v13

    iput-object v13, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V

    .line 104
    invoke-direct {v1, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    nop

    .line 109
    iget-boolean v13, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v13, :cond_9

    .line 112
    if-eqz v8, :cond_3

    iget-object v13, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 113
    iget-object v13, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v14, 0x3c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 114
    .local v13, "challStart":I
    iget-object v14, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v15, 0x3e

    invoke-virtual {v14, v15, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 115
    .local v14, "challEnd":I
    if-eq v13, v11, :cond_2

    if-eq v14, v11, :cond_2

    .line 116
    iget-object v11, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v11, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 117
    :cond_2
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "APOP challenge: {0}"

    iget-object v7, v1, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {v3, v11, v15, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .end local v13    # "challStart":I
    .end local v14    # "challEnd":I
    :cond_3
    if-nez v10, :cond_4

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    .line 124
    :cond_4
    const-string v7, "PIPELINING"

    invoke-virtual {v1, v7}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ".pipelining"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-static {v4, v7, v9}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v1, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    .line 126
    if-eqz v7, :cond_7

    .line 127
    const-string v7, "PIPELINING enabled"

    invoke-virtual {v3, v7}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 130
    :cond_7
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sun/mail/pop3/Protocol$Authenticator;

    new-instance v11, Lcom/sun/mail/pop3/Protocol$LoginAuthenticator;

    invoke-direct {v11, v1}, Lcom/sun/mail/pop3/Protocol$LoginAuthenticator;-><init>(Lcom/sun/mail/pop3/Protocol;)V

    aput-object v11, v7, v9

    new-instance v9, Lcom/sun/mail/pop3/Protocol$PlainAuthenticator;

    invoke-direct {v9, v1}, Lcom/sun/mail/pop3/Protocol$PlainAuthenticator;-><init>(Lcom/sun/mail/pop3/Protocol;)V

    const/4 v11, 0x1

    aput-object v9, v7, v11

    new-instance v9, Lcom/sun/mail/pop3/Protocol$NtlmAuthenticator;

    invoke-direct {v9, v1}, Lcom/sun/mail/pop3/Protocol$NtlmAuthenticator;-><init>(Lcom/sun/mail/pop3/Protocol;)V

    const/4 v11, 0x2

    aput-object v9, v7, v11

    new-instance v9, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;

    invoke-direct {v9, v1}, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;-><init>(Lcom/sun/mail/pop3/Protocol;)V

    const/4 v11, 0x3

    aput-object v9, v7, v11

    .line 137
    .local v7, "a":[Lcom/sun/mail/pop3/Protocol$Authenticator;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    array-length v13, v7

    if-ge v11, v13, :cond_8

    .line 139
    iget-object v13, v1, Lcom/sun/mail/pop3/Protocol;->authenticators:Ljava/util/Map;

    aget-object v14, v7, v11

    invoke-virtual {v14}, Lcom/sun/mail/pop3/Protocol$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v7, v11

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    aget-object v13, v7, v11

    invoke-virtual {v13}, Lcom/sun/mail/pop3/Protocol$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 142
    .end local v11    # "i":I
    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/sun/mail/pop3/Protocol;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 143
    return-void

    .line 110
    .end local v7    # "a":[Lcom/sun/mail/pop3/Protocol$Authenticator;
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    iget-object v7, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    new-instance v9, Ljava/io/IOException;

    const-string v11, "Connect failed"

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/sun/mail/pop3/Protocol;->cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    throw v7

    .line 105
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v7, v1, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-static {v7, v0}, Lcom/sun/mail/pop3/Protocol;->cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v7

    throw v7
.end method

.method static synthetic access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;

    .line 53
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/mail/pop3/Protocol;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;

    .line 53
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sun/mail/pop3/Protocol;)V
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;

    .line 53
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->suspendTracing()V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/mail/pop3/Protocol;)V
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;

    .line 53
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/mail/pop3/Protocol;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;

    .line 53
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/mail/pop3/Protocol;)Ljava/util/Properties;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;

    .line 53
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/mail/pop3/Protocol;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;

    .line 53
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/mail/pop3/Protocol;Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;
    .param p1, "x1"    # Ljava/util/Properties;
    .param p2, "x2"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/pop3/Protocol;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/pop3/Protocol;->twoLinesCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    return-object v0
.end method

.method private batchCommandContinue(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 1335
    return-void
.end method

.method private batchCommandEnd()V
    .locals 0

    .line 1336
    return-void
.end method

.method private batchCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 1334
    return-void
.end method

.method private static cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "ife"    # Ljava/io/IOException;

    .line 147
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    .local v0, "thr":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p1, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 162
    .end local v0    # "thr":Ljava/lang/Throwable;
    :goto_0
    return-object p1

    .line 152
    .restart local v0    # "thr":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 153
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    .line 156
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 157
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unexpected exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 154
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1
.end method

.method private final declared-synchronized getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 4
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "prop"    # Ljava/lang/String;

    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 176
    .local v0, "val":Z
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    monitor-exit p0

    return v0

    .line 174
    .end local v0    # "val":Z
    .end local p1    # "props":Ljava/util/Properties;
    .end local p2    # "prop":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 412
    .local v2, "md":Ljava/security/MessageDigest;
    const-string v3, "iso-8859-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v2    # "md":Ljava/security/MessageDigest;
    .local v1, "digest":[B
    nop

    .line 418
    invoke-static {v1}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 415
    .end local v1    # "digest":[B
    :catch_0
    move-exception v2

    .line 416
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    return-object v1

    .line 413
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 414
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    return-object v1
.end method

.method private declared-synchronized getLocalHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 744
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 745
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 746
    .local v0, "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->localHostName:Ljava/lang/String;

    .line 748
    if-nez v1, :cond_1

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->localHostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_1
    goto :goto_0

    .line 743
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 752
    :catch_0
    move-exception v0

    .line 756
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 758
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 759
    .restart local v0    # "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->localHostName:Ljava/lang/String;

    .line 761
    if-nez v1, :cond_3

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->localHostName:Ljava/lang/String;

    .line 766
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->localHostName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 743
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private initStreams()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    const-string v1, "mail.debug.quote"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 184
    .local v0, "quote":Z
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 185
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 186
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 188
    new-instance v1, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 189
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 190
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 193
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const-string v4, "iso-8859-1"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 195
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v3, v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 198
    return-void
.end method

.method private static isRecoverable(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 166
    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/LinkageError;

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

.method private issueCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 1188
    if-eqz p1, :cond_0

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1190
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1193
    :cond_0
    return-void

    .line 1186
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Folder is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1251
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1254
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v1, :cond_0

    .line 1255
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    .line 1256
    return-object v0

    .line 1258
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 1259
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    .line 1260
    return-object v0
.end method

.method private multilineCommandEnd()V
    .locals 0

    .line 1333
    return-void
.end method

.method private multilineCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 1332
    return-void
.end method

.method private readMultilineResponse(I)Ljava/io/InputStream;
    .locals 5
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1270
    new-instance v0, Lcom/sun/mail/util/SharedByteArrayOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/SharedByteArrayOutputStream;-><init>(I)V

    .line 1271
    .local v0, "buf":Lcom/sun/mail/util/SharedByteArrayOutputStream;
    const/16 v1, 0xa

    .line 1273
    .local v1, "lastb":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .local v3, "b":I
    if-ltz v2, :cond_1

    .line 1274
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/16 v2, 0x2e

    if-ne v3, v2, :cond_0

    .line 1275
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .line 1276
    const/16 v2, 0xd

    if-ne v3, v2, :cond_0

    .line 1278
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    move v3, v2

    .line 1279
    goto :goto_1

    .line 1282
    :cond_0
    invoke-virtual {v0, v3}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    move v1, v3

    goto :goto_0

    .line 1293
    :cond_1
    :goto_1
    nop

    .line 1294
    if-ltz v3, :cond_2

    .line 1296
    invoke-virtual {v0}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 1295
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    const-string v4, "EOF on socket"

    invoke-direct {v2, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1285
    .end local v3    # "b":I
    :catch_0
    move-exception v2

    .line 1290
    .local v2, "iioex":Ljava/io/InterruptedIOException;
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1291
    :catch_1
    move-exception v3

    :goto_2
    nop

    .line 1292
    throw v2
.end method

.method private readResponse()Lcom/sun/mail/pop3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1199
    const/4 v0, 0x0

    .line 1201
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1224
    nop

    .line 1226
    if-eqz v0, :cond_4

    .line 1230
    new-instance v1, Lcom/sun/mail/pop3/Response;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Response;-><init>()V

    .line 1231
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    const-string v2, "+OK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1232
    iput-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    goto :goto_0

    .line 1233
    :cond_0
    const-string v2, "+ "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1234
    iput-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    .line 1235
    iput-boolean v3, v1, Lcom/sun/mail/pop3/Response;->cont:Z

    goto :goto_0

    .line 1236
    :cond_1
    const-string v2, "-ERR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1237
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    .line 1241
    :goto_0
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-ltz v2, :cond_2

    .line 1242
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 1243
    :cond_2
    return-object v1

    .line 1239
    .end local v3    # "i":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1227
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    :cond_4
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "<EOF>"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 1228
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "EOF on socket"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1213
    :catch_0
    move-exception v1

    .line 1221
    .local v1, "ex":Ljava/net/SocketException;
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1222
    :catch_1
    move-exception v2

    :goto_1
    nop

    .line 1223
    new-instance v2, Ljava/io/EOFException;

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1202
    .end local v1    # "ex":Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 1210
    .local v1, "iioex":Ljava/io/InterruptedIOException;
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 1211
    :catch_3
    move-exception v2

    :goto_2
    nop

    .line 1212
    new-instance v2, Ljava/io/EOFException;

    invoke-virtual {v1}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private resumeTracing()V
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 1323
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 1325
    :cond_0
    return-void
.end method

.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommandStart(Ljava/lang/String;)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 1153
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1154
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->simpleCommandEnd()V

    .line 1155
    return-object v0
.end method

.method private simpleCommandEnd()V
    .locals 0

    .line 1331
    return-void
.end method

.method private simpleCommandStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 1330
    return-void
.end method

.method private suspendTracing()V
    .locals 2

    .line 1311
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 1313
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 1315
    :cond_0
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 778
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 780
    .local v0, "result":[C
    const/4 v1, 0x0

    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 781
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    .line 782
    .local v3, "temp":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    .line 783
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .restart local v2    # "i":I
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 780
    .end local v3    # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v1    # "index":I
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private twoLinesCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 2
    .param p1, "firstCommand"    # Ljava/lang/String;
    .param p2, "secondCommand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "cmd":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    .line 1172
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 1174
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 1176
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    .line 1178
    return-object v1
.end method


# virtual methods
.method declared-synchronized authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "mech"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "passwd"    # Ljava/lang/String;

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->authenticators:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/Protocol$Authenticator;

    .line 301
    .local v0, "a":Lcom/sun/mail/pop3/Protocol$Authenticator;
    if-nez v0, :cond_0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such authentication mechanism: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 304
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sun/mail/pop3/Protocol$Authenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 305
    const-string v1, "login failed"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 306
    :cond_1
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 299
    .end local v0    # "a":Lcom/sun/mail/pop3/Protocol$Authenticator;
    .end local v1    # "ex":Ljava/io/IOException;
    .end local p1    # "mech":Ljava/lang/String;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "authzid":Ljava/lang/String;
    .end local p4    # "user":Ljava/lang/String;
    .end local p5    # "passwd":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized capa()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1141
    :try_start_0
    const-string v0, "CAPA"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1142
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1143
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 1144
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1140
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method close()V
    .locals 2

    .line 807
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 808
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 812
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 813
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 814
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 815
    throw v1

    .line 809
    :catch_0
    move-exception v1

    .line 812
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 813
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 814
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 815
    nop

    .line 816
    return-void
.end method

.method declared-synchronized dele(I)Z
    .locals 2
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1039
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1040
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1038
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "msg":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 207
    nop

    .line 208
    return-void

    .line 206
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 207
    throw v0
.end method

.method declared-synchronized getCapabilities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 259
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDefaultMechanisms()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->defaultAuthenticationMechanisms:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized hasCapability(Ljava/lang/String;)Z
    .locals 2
    .param p1, "c"    # Ljava/lang/String;

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 252
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    monitor-exit p0

    return v0

    .line 250
    .end local p1    # "c":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isMechanismEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mech"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->authenticators:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/Protocol$Authenticator;

    .line 288
    .local v0, "a":Lcom/sun/mail/pop3/Protocol$Authenticator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol$Authenticator;->enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1133
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isTracing()Z
    .locals 2

    .line 1303
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized list(I)I
    .locals 4
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 852
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 853
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    const/4 v1, -0x1

    .line 854
    .local v1, "size":I
    iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 856
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 857
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 858
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    .line 861
    .end local v2    # "st":Ljava/util/StringTokenizer;
    goto :goto_0

    .line 859
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catch_0
    move-exception v2

    .line 863
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 851
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "size":I
    .end local p1    # "msg":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized list()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 870
    :try_start_0
    const-string v0, "LIST"

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 871
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 869
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 347
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    const/4 v0, 0x0

    .line 351
    .local v0, "batch":Z
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "authentication command trace suppressed"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->suspendTracing()V

    .line 355
    :cond_1
    const/4 v1, 0x0

    .line 356
    .local v1, "dpw":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 357
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APOP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v2

    .local v2, "r":Lcom/sun/mail/pop3/Response;
    goto/16 :goto_3

    .line 360
    .end local v2    # "r":Lcom/sun/mail/pop3/Response;
    :cond_3
    if-eqz v0, :cond_6

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PASS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 365
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 368
    .local v3, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v4, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v4, :cond_5

    .line 369
    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, "USER command failed"

    .line 370
    .local v4, "err":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    .line 371
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    nop

    .line 390
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    monitor-exit p0

    return-object v4

    .line 374
    .end local v4    # "err":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v4

    move-object v3, v4

    .line 375
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    .line 376
    .end local v2    # "cmd":Ljava/lang/String;
    move-object v2, v3

    goto :goto_3

    .line 377
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v2

    .line 378
    .local v2, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v3, :cond_8

    .line 379
    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v3, "USER command failed"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 379
    monitor-exit p0

    return-object v3

    .line 380
    :cond_8
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PASS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v3

    move-object v2, v3

    .line 382
    :goto_3
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 383
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "authentication command {0}"

    .line 384
    iget-boolean v6, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v6, :cond_9

    const-string v6, "succeeded"

    goto :goto_4

    :cond_9
    const-string v6, "failed"

    .line 383
    :goto_4
    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    :cond_a
    iget-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v3, :cond_c

    .line 386
    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_5

    :cond_b
    const-string v3, "login failed"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 390
    :goto_5
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 386
    monitor-exit p0

    return-object v3

    .line 387
    :cond_c
    nop

    .line 390
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 387
    monitor-exit p0

    const/4 v3, 0x0

    return-object v3

    .line 390
    .end local v1    # "dpw":Ljava/lang/String;
    .end local v2    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V

    .line 391
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 346
    .end local v0    # "batch":Z
    .end local p1    # "user":Ljava/lang/String;
    .end local p2    # "password":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized noop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1087
    :try_start_0
    const-string v0, "NOOP"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1088
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1086
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized quit()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 792
    const/4 v0, 0x0

    .line 794
    .local v0, "ok":Z
    :try_start_0
    const-string v1, "QUIT"

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 795
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 797
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 798
    nop

    .line 799
    monitor-exit p0

    return v0

    .line 797
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->close()V

    .line 798
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 791
    .end local v0    # "ok":Z
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized retr(II)Ljava/io/InputStream;
    .locals 9
    .param p1, "msg"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 883
    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 882
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "msg":I
    .end local p2    # "size":I
    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 883
    .restart local p1    # "msg":I
    .restart local p2    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 884
    .local v0, "batch":Z
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_6

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIST "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 886
    .local v2, "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 887
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 889
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 890
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 891
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 892
    .local v3, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v4, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    .line 895
    :try_start_1
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 896
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 897
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move p2, v5

    .line 899
    if-gt p2, v1, :cond_3

    if-gez p2, :cond_1

    goto :goto_1

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 903
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pipeline message size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :cond_2
    add-int/lit16 p2, p2, 0x80

    goto :goto_2

    .line 900
    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 907
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :goto_2
    goto :goto_3

    .line 906
    :catch_0
    move-exception v1

    .line 909
    :cond_4
    :goto_3
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 910
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_5

    .line 911
    add-int/lit16 v3, p2, 0x80

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 912
    :cond_5
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    goto/16 :goto_7

    .line 914
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    .restart local v2    # "cmd":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 916
    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 917
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 918
    .restart local v3    # "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v4, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v4, :cond_7

    .line 919
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 920
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 930
    :cond_7
    if-gtz p2, :cond_c

    :try_start_3
    iget-object v4, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_c

    .line 932
    :try_start_4
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, v3, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 933
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 934
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 935
    .local v6, "octets":Ljava/lang/String;
    const-string v7, "octets"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 936
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move p2, v7

    .line 938
    if-gt p2, v1, :cond_a

    if-gez p2, :cond_8

    goto :goto_4

    .line 941
    :cond_8
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 942
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "guessing message size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 943
    :cond_9
    add-int/lit16 p2, p2, 0x80

    goto :goto_5

    .line 939
    :cond_a
    :goto_4
    const/4 p2, 0x0

    .line 947
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "octets":Ljava/lang/String;
    :cond_b
    :goto_5
    goto :goto_6

    .line 946
    :catch_1
    move-exception v1

    .line 949
    :cond_c
    :goto_6
    :try_start_5
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 950
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    move-object v1, v3

    .line 952
    .end local v3    # "r":Lcom/sun/mail/pop3/Response;
    .restart local v1    # "r":Lcom/sun/mail/pop3/Response;
    :goto_7
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_d

    .line 953
    if-lez p2, :cond_d

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 954
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got message size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 956
    :cond_d
    iget-object v3, v1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v3

    .line 882
    .end local v0    # "batch":Z
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    .end local v2    # "cmd":Ljava/lang/String;
    .end local p1    # "msg":I
    .end local p2    # "size":I
    :goto_8
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized retr(ILjava/io/OutputStream;)Z
    .locals 9
    .param p1, "msg"    # I
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 964
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RETR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "cmd":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 966
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 967
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 968
    .local v1, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_0

    .line 969
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    monitor-exit p0

    const/4 v2, 0x0

    return v2

    .line 973
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    const/4 v2, 0x0

    .line 974
    .local v2, "terr":Ljava/lang/Throwable;
    const/16 v3, 0xa

    .line 976
    .local v3, "lastb":I
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v4

    move v5, v4

    .local v5, "b":I
    if-ltz v4, :cond_3

    .line 977
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    const/16 v4, 0x2e

    if-ne v5, v4, :cond_1

    .line 978
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v4

    move v5, v4

    .line 979
    const/16 v4, 0xd

    if-ne v5, v4, :cond_1

    .line 981
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v4
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v4

    .line 982
    goto :goto_3

    .line 990
    :cond_1
    if-nez v2, :cond_2

    .line 992
    :try_start_2
    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 996
    :catch_0
    move-exception v4

    .line 997
    .local v4, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "exception while streaming"

    invoke-virtual {v6, v7, v8, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 998
    move-object v2, v4

    goto :goto_2

    .line 993
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v4

    .line 994
    .local v4, "ex":Ljava/io/IOException;
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "exception while streaming"

    invoke-virtual {v6, v7, v8, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 995
    move-object v2, v4

    .line 999
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_1
    nop

    .line 1001
    :cond_2
    :goto_2
    move v3, v5

    goto :goto_0

    .line 1011
    :cond_3
    :goto_3
    nop

    .line 1012
    if-ltz v5, :cond_7

    .line 1016
    if-eqz v2, :cond_6

    .line 1017
    :try_start_4
    instance-of v4, v2, Ljava/io/IOException;

    if-nez v4, :cond_5

    .line 1019
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 1021
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1020
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    throw v4

    .line 1018
    :cond_5
    move-object v4, v2

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 1023
    :cond_6
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1024
    monitor-exit p0

    const/4 v4, 0x1

    return v4

    .line 1013
    :cond_7
    :try_start_5
    new-instance v4, Ljava/io/EOFException;

    const-string v6, "EOF on socket"

    invoke-direct {v4, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1003
    .end local v5    # "b":I
    :catch_2
    move-exception v4

    .line 1008
    .local v4, "iioex":Ljava/io/InterruptedIOException;
    :try_start_6
    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 1009
    :catch_3
    move-exception v5

    :goto_4
    nop

    .line 1010
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 963
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "r":Lcom/sun/mail/pop3/Response;
    .end local v2    # "terr":Ljava/lang/Throwable;
    .end local v3    # "lastb":I
    .end local v4    # "iioex":Ljava/io/InterruptedIOException;
    .end local p1    # "msg":I
    .end local p2    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized rset()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1095
    :try_start_0
    const-string v0, "RSET"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1096
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 1094
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCapabilities(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;

    monitor-enter p0

    .line 214
    if-nez p1, :cond_0

    .line 215
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    monitor-exit p0

    return-void

    .line 219
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, "r":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "us-ascii"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 226
    nop

    .line 229
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 230
    move-object v1, v2

    .line 231
    .local v1, "cap":Ljava/lang/String;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 232
    .local v3, "i":I
    if-lez v3, :cond_1

    .line 233
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 234
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    nop

    .end local v1    # "cap":Ljava/lang/String;
    .end local v3    # "i":I
    goto :goto_0

    .line 240
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 241
    goto :goto_3

    :catch_0
    move-exception v1

    .line 242
    goto :goto_3

    .line 239
    .end local v2    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 240
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 241
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    .line 242
    :goto_2
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 236
    :catch_2
    move-exception v1

    .line 240
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 241
    goto :goto_3

    :catch_3
    move-exception v1

    .line 242
    nop

    .line 243
    :goto_3
    monitor-exit p0

    return-void

    .line 223
    :catch_4
    move-exception v1

    .line 225
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_8
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 213
    .end local v0    # "r":Ljava/io/BufferedReader;
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local p1    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 823
    :try_start_0
    const-string v0, "STAT"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 824
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    new-instance v1, Lcom/sun/mail/pop3/Status;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Status;-><init>()V

    .line 834
    .local v1, "s":Lcom/sun/mail/pop3/Status;
    iget-boolean v2, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_1

    .line 837
    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 839
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 840
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->total:I

    .line 841
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->size:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    .end local v2    # "st":Ljava/util/StringTokenizer;
    goto :goto_0

    .line 842
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catch_0
    move-exception v2

    .line 845
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 835
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STAT command failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "s":Lcom/sun/mail/pop3/Status;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stls()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 1105
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1106
    :cond_0
    :try_start_1
    const-string v0, "STLS"

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1107
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 1110
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 1111
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1124
    goto :goto_0

    .line 1112
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :catch_0
    move-exception v1

    .line 1114
    .local v1, "ioex":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1116
    :try_start_4
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 1117
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 1118
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 1119
    nop

    .line 1120
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not convert socket to TLS"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v2, "sioex":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1123
    throw v2

    .line 1116
    .end local v2    # "sioex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 1117
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 1118
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 1119
    throw v3

    .line 1126
    .end local v1    # "ioex":Ljava/io/IOException;
    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    .line 1103
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized supportsAuthentication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "auth"    # Ljava/lang/String;

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    const-string v0, "LOGIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 325
    monitor-exit p0

    return v1

    .line 326
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 327
    monitor-exit p0

    return v2

    .line 328
    :cond_1
    :try_start_2
    const-string v3, "SASL"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .local v0, "a":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 330
    monitor-exit p0

    return v2

    .line 331
    :cond_2
    :try_start_3
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "tok":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_3

    .line 335
    monitor-exit p0

    return v1

    .line 336
    .end local v4    # "tok":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 337
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_4
    monitor-exit p0

    return v2

    .line 322
    .end local v0    # "a":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    .end local p1    # "auth":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 323
    .restart local p1    # "auth":Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 322
    .end local p1    # "auth":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method supportsMechanism(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mech"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->authenticators:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized top(II)Ljava/io/InputStream;
    .locals 2
    .param p1, "msg"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1031
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1032
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1030
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    .end local p1    # "msg":I
    .end local p2    # "n":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl(I)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1047
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIDL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1048
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1049
    monitor-exit p0

    return-object v2

    .line 1050
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1051
    .local v1, "i":I
    if-lez v1, :cond_1

    .line 1052
    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 1054
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_1
    monitor-exit p0

    return-object v2

    .line 1046
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "i":I
    .end local p1    # "msg":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl([Ljava/lang/String;)Z
    .locals 8
    .param p1, "uids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1062
    :try_start_0
    const-string v0, "UIDL"

    array-length v1, p1

    mul-int/lit8 v1, v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 1063
    .local v0, "r":Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1064
    monitor-exit p0

    return v2

    .line 1065
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1066
    .local v1, "lis":Lcom/sun/mail/util/LineInputStream;
    const/4 v3, 0x0

    .line 1067
    .local v3, "line":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 1068
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1069
    .local v4, "i":I
    if-lt v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 1070
    goto :goto_0

    .line 1071
    :cond_2
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1072
    .local v5, "n":I
    if-lez v5, :cond_3

    array-length v6, p1

    if-gt v5, v6, :cond_3

    .line 1073
    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local p0    # "this":Lcom/sun/mail/pop3/Protocol;
    :cond_3
    goto :goto_0

    .line 1076
    :cond_4
    :try_start_2
    iget-object v2, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1079
    goto :goto_1

    .line 1077
    :catch_0
    move-exception v2

    .line 1080
    :goto_1
    monitor-exit p0

    return v5

    .line 1061
    .end local v0    # "r":Lcom/sun/mail/pop3/Response;
    .end local v1    # "lis":Lcom/sun/mail/util/LineInputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local p1    # "uids":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
