.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;,
        Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;,
        Lcom/sun/mail/smtp/SMTPTransport$OAuth2Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:[B

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final UNKNOWN_SA:[Ljava/lang/String;

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private allowutf8:Z

.field private authenticators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/mail/smtp/SMTPTransport$Authenticator;",
            ">;"
        }
    .end annotation
.end field

.field private authorizationID:Ljava/lang/String;

.field private chunkSize:I

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private debugpassword:Z

.field private debugusername:Z

.field private defaultAuthenticationMechanisms:Ljava/lang/String;

.field private defaultPort:I

.field private enableSASL:Z

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private noauthdebug:Z

.field private noopStrict:Z

.field private notificationDone:Z

.field private ntlmDomain:Ljava/lang/String;

.field private quitOnSessionReject:Z

.field private quitWait:Z

.field private reportSuccess:Z

.field private requireStartTLS:Z

.field private saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

.field private saslMechanisms:[Ljava/lang/String;

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;

.field private useCanonicalHostName:Z

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    nop

    .line 134
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Bcc"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "Content-Length"

    aput-object v4, v1, v2

    sput-object v1, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    .line 135
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    .line 137
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    .line 2604
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 2
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 147
    const-string v0, "smtp"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "isSSL"    # Z

    .line 160
    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 77
    const-string v0, "smtp"

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 78
    const/16 v0, 0x19

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 88
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    .line 101
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 102
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitOnSessionReject:Z

    .line 104
    const-string v2, "UNKNOWN"

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 106
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    .line 107
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    .line 108
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 110
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 127
    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    .line 161
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 163
    .local v3, "props":Ljava/util/Properties;
    new-instance v4, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 164
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v6

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v7

    const-string v8, "DEBUG SMTP"

    invoke-direct {v4, v5, v8, v6, v7}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    .line 165
    const-string v5, "protocol"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    .line 166
    const-string v4, "mail.debug.auth"

    invoke-static {v3, v4, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    xor-int/2addr v4, v2

    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    .line 168
    const-string v4, "mail.debug.auth.username"

    invoke-static {v3, v4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugusername:Z

    .line 170
    const-string v4, "mail.debug.auth.password"

    invoke-static {v3, v4, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugpassword:Z

    .line 172
    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 174
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 175
    const-string v4, "mail."

    if-nez p4, :cond_1

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".ssl.enable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    .line 178
    :cond_1
    if-eqz p4, :cond_2

    .line 179
    const/16 v0, 0x1d1

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    goto :goto_0

    .line 181
    :cond_2
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 182
    :goto_0
    iput-boolean p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".quitwait"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".quitonsessionreject"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitOnSessionReject:Z

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".reportsuccess"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".starttls.enable"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".starttls.required"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".userset"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".noop.strict"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".sasl.enable"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    .line 218
    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "enable SASL"

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".sasl.usecanonicalhostname"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    .line 222
    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v5, "use canonical host name"

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 225
    :cond_4
    const-string v0, "mail.mime.allowutf8"

    invoke-static {v3, v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    .line 227
    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "allow UTF-8"

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 230
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".chunksize"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {v3, v0, v4}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    .line 232
    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chunk size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 236
    :cond_6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    new-instance v4, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;

    invoke-direct {v4, p0}, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v4, v0, v1

    new-instance v1, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;

    invoke-direct {v1, p0}, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;

    invoke-direct {v1, p0}, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;

    invoke-direct {v1, p0}, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/mail/smtp/SMTPTransport$OAuth2Authenticator;

    invoke-direct {v1, p0}, Lcom/sun/mail/smtp/SMTPTransport$OAuth2Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 243
    .local v0, "a":[Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 245
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    aget-object v5, v0, v2

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 248
    .end local v2    # "i":I
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 0
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sun/mail/smtp/SMTPTransport;

    .line 75
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    return-object v0
.end method

.method private addressesFailed()V
    .locals 6

    .line 1368
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_1

    .line 1369
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1370
    array-length v3, v0

    array-length v1, v1

    add-int/2addr v3, v1

    new-array v1, v3, [Ljavax/mail/Address;

    .line 1372
    .local v1, "newa":[Ljavax/mail/Address;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1374
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    array-length v5, v0

    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1376
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1377
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1378
    .end local v1    # "newa":[Ljavax/mail/Address;
    goto :goto_0

    .line 1379
    :cond_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1380
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1383
    :cond_1
    :goto_0
    return-void
.end method

.method private authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".auth.mechanisms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, "mechs":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getAuthorizationId()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "authzid":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 797
    move-object v1, p1

    .line 798
    :cond_1
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    const/4 v9, 0x1

    if-eqz v3, :cond_3

    .line 799
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "Authenticate with SASL"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 801
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLMechanisms()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v6, v1

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/sun/mail/smtp/SMTPTransport;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 803
    return v9

    .line 805
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "SASL authentication failed"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    const/4 v2, 0x0

    return v2

    .line 808
    :catch_0
    move-exception v3

    .line 809
    .local v3, "ex":Ljava/lang/UnsupportedOperationException;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "SASL support failed"

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 814
    .end local v3    # "ex":Ljava/lang/UnsupportedOperationException;
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 815
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to authenticate using mechanisms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 823
    :cond_4
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 824
    .local v3, "st":Ljava/util/StringTokenizer;
    :cond_5
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 825
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, "m":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 827
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    .line 828
    .local v5, "a":Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    if-nez v5, :cond_6

    .line 829
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "no authenticator for mechanism {0}"

    invoke-virtual {v6, v7, v8, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    goto :goto_0

    .line 833
    :cond_6
    invoke-virtual {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 834
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "mechanism {0} not supported by server"

    invoke-virtual {v6, v7, v8, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    goto :goto_0

    .line 842
    :cond_7
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    if-ne v0, v6, :cond_8

    .line 843
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".auth."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 844
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".disable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 845
    .local v6, "dprop":Ljava/lang/String;
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 846
    invoke-virtual {v7}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v7

    .line 847
    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->enabled()Z

    move-result v8

    .line 845
    xor-int/2addr v8, v9

    invoke-static {v7, v6, v8}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v7

    .line 848
    .local v7, "disabled":Z
    if-eqz v7, :cond_8

    .line 849
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v10}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 850
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mechanism "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " disabled by property: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 857
    .end local v6    # "dprop":Ljava/lang/String;
    .end local v7    # "disabled":Z
    :cond_8
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Using mechanism {0}"

    invoke-virtual {v2, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v5, v2, v1, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 862
    .end local v4    # "m":Ljava/lang/String;
    .end local v5    # "a":Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    :cond_9
    new-instance v2, Ljavax/mail/AuthenticationFailedException;

    const-string v4, "No authentication mechanisms supported by both server and client"

    invoke-direct {v2, v4}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private closeConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1409
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 1410
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    :cond_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1415
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1416
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1417
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1418
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1419
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 1421
    :cond_1
    return-void

    .line 1414
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v1

    .line 1412
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Server Close Failed"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1414
    .end local v1    # "ioex":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1415
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1416
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1417
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1418
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 1420
    :cond_2
    throw v1
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .locals 5
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .line 1549
    const/4 v0, 0x0

    .line 1551
    .local v0, "changed":Z
    :try_start_0
    const-string v1, "text/*"

    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1552
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "enc":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v2, "quoted-printable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "base64"

    .line 1554
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_5

    .line 1555
    :cond_0
    const/4 v2, 0x0

    .line 1557
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 1558
    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1568
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v3

    .line 1569
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 1568
    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1570
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "8bit"

    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1571
    const/4 v0, 0x1

    .line 1574
    :cond_1
    if-eqz v2, :cond_5

    .line 1576
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1579
    :goto_0
    goto :goto_3

    .line 1577
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1574
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 1576
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1579
    goto :goto_1

    .line 1577
    :catch_1
    move-exception v4

    .line 1581
    :cond_2
    :goto_1
    nop

    .end local v0    # "changed":Z
    .end local p1    # "part":Ljavax/mail/internet/MimePart;
    :try_start_4
    throw v3

    .line 1583
    .end local v1    # "enc":Ljava/lang/String;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "changed":Z
    .restart local p1    # "part":Ljavax/mail/internet/MimePart;
    :cond_3
    const-string v1, "multipart/*"

    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1584
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    .line 1585
    .local v1, "mp":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v2

    .line 1586
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 1587
    invoke-virtual {v1, v3}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v4, :cond_4

    .line 1588
    const/4 v0, 0x1

    .line 1586
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1583
    .end local v1    # "mp":Ljavax/mail/internet/MimeMultipart;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_5
    :goto_3
    goto :goto_4

    .line 1593
    :catch_2
    move-exception v1

    goto :goto_5

    .line 1591
    :catch_3
    move-exception v1

    .line 1595
    :cond_6
    :goto_4
    nop

    .line 1596
    :goto_5
    return v0
.end method

.method private expandGroups()V
    .locals 6

    .line 1501
    const/4 v0, 0x0

    .line 1502
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/Address;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 1503
    aget-object v2, v2, v1

    check-cast v2, Ljavax/mail/internet/InternetAddress;

    .line 1504
    .local v2, "a":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1505
    if-nez v0, :cond_0

    .line 1507
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 1508
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 1509
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1513
    .end local v3    # "k":I
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 1514
    .local v3, "ia":[Ljavax/mail/internet/InternetAddress;
    if-eqz v3, :cond_2

    .line 1515
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 1516
    aget-object v5, v3, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v4    # "j":I
    :cond_1
    goto :goto_3

    .line 1518
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1519
    .end local v3    # "ia":[Ljavax/mail/internet/InternetAddress;
    :catch_0
    move-exception v3

    .line 1521
    .local v3, "pex":Ljavax/mail/internet/ParseException;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    .end local v3    # "pex":Ljavax/mail/internet/ParseException;
    :goto_3
    goto :goto_4

    .line 1525
    :cond_3
    if-eqz v0, :cond_4

    .line 1526
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1502
    .end local v2    # "a":Ljavax/mail/internet/InternetAddress;
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1531
    .end local v1    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    .line 1532
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/internet/InternetAddress;

    .line 1533
    .local v1, "newa":[Ljavax/mail/internet/InternetAddress;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1534
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1536
    .end local v1    # "newa":[Ljavax/mail/internet/InternetAddress;
    :cond_6
    return-void
.end method

.method private initStreams()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2277
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "mail.debug.quote"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 2280
    .local v0, "quote":Z
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2281
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 2282
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 2284
    new-instance v1, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2285
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 2286
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 2288
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2290
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2292
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2293
    return-void
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 1608
    const/4 v0, 0x0

    .line 1609
    .local v0, "linelen":I
    const/4 v1, 0x0

    .line 1611
    .local v1, "need8bit":Z
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .local v4, "b":I
    if-ltz v3, :cond_5

    .line 1612
    and-int/lit16 v3, v4, 0xff

    .line 1613
    .end local v4    # "b":I
    .local v3, "b":I
    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1615
    :cond_1
    if-nez v3, :cond_2

    .line 1616
    return v2

    .line 1618
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 1619
    const/16 v4, 0x3e6

    if-le v0, v4, :cond_4

    .line 1620
    return v2

    .line 1614
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 1622
    :cond_4
    const/16 v2, 0x7f

    if-le v3, v2, :cond_0

    .line 1623
    const/4 v1, 0x1

    goto :goto_0

    .line 1627
    .end local v3    # "b":I
    .restart local v4    # "b":I
    :cond_5
    nop

    .line 1628
    if-eqz v1, :cond_6

    .line 1629
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "found an 8bit part"

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1630
    :cond_6
    return v1

    .line 1625
    .end local v4    # "b":I
    :catch_0
    move-exception v3

    .line 1626
    .local v3, "ex":Ljava/io/IOException;
    return v2
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 2531
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTracing()Z
    .locals 2

    .line 2299
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .locals 17
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2348
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2353
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    move v10, v1

    move/from16 v11, p2

    .local v10, "ret":I
    if-eq v1, v11, :cond_6

    .line 2356
    iget-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_0
    move v12, v3

    .line 2357
    .local v12, "vsl":I
    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v13, v3

    .line 2358
    .local v13, "vul":I
    add-int v3, v12, v13

    new-array v14, v3, [Ljavax/mail/Address;

    .line 2359
    .local v14, "valid":[Ljavax/mail/Address;
    if-lez v12, :cond_2

    .line 2360
    invoke-static {v1, v2, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2361
    :cond_2
    if-lez v13, :cond_3

    .line 2362
    iget-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {v1, v2, v14, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2363
    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 2364
    iput-object v14, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 2365
    iget-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2366
    iget-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", with response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2368
    :cond_4
    iget-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2369
    .local v1, "_lsr":Ljava/lang/String;
    iget v15, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2370
    .local v15, "_lrc":I
    iget-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v2, :cond_5

    .line 2371
    const-string v2, "RSET"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 2372
    :cond_5
    iput-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2373
    iput v15, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2374
    new-instance v16, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v6, v0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v7, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v8, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v9, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move v4, v10

    invoke-direct/range {v2 .. v9}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v16

    .line 2377
    .end local v1    # "_lsr":Ljava/lang/String;
    .end local v12    # "vsl":I
    .end local v13    # "vul":I
    .end local v14    # "valid":[Ljavax/mail/Address;
    .end local v15    # "_lrc":I
    :cond_6
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 2536
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2539
    :cond_0
    return-object p1
.end method

.method private openServer()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2222
    const-string v0, ", port: "

    const/4 v1, -0x1

    .line 2223
    .local v1, "port":I
    const-string v2, "UNKNOWN"

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2225
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    move v1, v2

    .line 2226
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2227
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2228
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting protocol to host \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2231
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2233
    const/4 v2, -0x1

    .line 2234
    .local v2, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    const/16 v4, 0xdc

    const-string v5, "\", port: "

    if-eq v3, v4, :cond_4

    .line 2236
    const/4 v3, 0x0

    :try_start_1
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitOnSessionReject:Z

    if-eqz v4, :cond_1

    .line 2237
    const-string v4, "QUIT"

    invoke-virtual {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2238
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v4, :cond_1

    .line 2239
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v4

    .line 2240
    .local v4, "resp":I
    const/16 v6, 0xdd

    if-eq v4, v6, :cond_1

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 2241
    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2242
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QUIT failed with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2249
    .end local v4    # "resp":I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 2250
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2251
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2252
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2253
    :goto_0
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2254
    goto :goto_1

    .line 2249
    :catchall_0
    move-exception v4

    goto/16 :goto_2

    .line 2245
    :catch_0
    move-exception v4

    .line 2246
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2247
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "QUIT failed"

    invoke-virtual {v6, v7, v8, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2249
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 2250
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2251
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2252
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    goto :goto_0

    .line 2255
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v4, ", response: "

    if-eqz v3, :cond_3

    .line 2256
    :try_start_5
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got bad greeting from host \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2259
    :cond_3
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got bad greeting from SMTP host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v1    # "port":I
    throw v3

    .line 2249
    .restart local v1    # "port":I
    :goto_2
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 2250
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2251
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2252
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2253
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2254
    nop

    .end local v1    # "port":I
    throw v4

    .line 2264
    .restart local v1    # "port":I
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2265
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "protocol started to host \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2272
    .end local v2    # "r":I
    :cond_5
    nop

    .line 2273
    return-void

    .line 2268
    :catch_1
    move-exception v2

    .line 2269
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not start protocol to SMTP host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private openServer(Ljava/lang/String;I)V
    .locals 10
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2153
    const-string v0, ", port: "

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2154
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying to connect to host \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSSL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2158
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 2160
    .local v1, "props":Ljava/util/Properties;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-static {p1, p2, v1, v2, v3}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2165
    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v2

    move p2, v2

    .line 2167
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2169
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2171
    const/4 v2, -0x1

    .line 2172
    .local v2, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    const/16 v4, 0xdc

    const-string v5, "\", port: "

    if-eq v3, v4, :cond_4

    .line 2173
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2175
    .local v3, "failResponse":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitOnSessionReject:Z

    if-eqz v6, :cond_1

    .line 2176
    const-string v6, "QUIT"

    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2177
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v6, :cond_1

    .line 2178
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v6

    .line 2179
    .local v6, "resp":I
    const/16 v7, 0xdd

    if-eq v6, v7, :cond_1

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 2180
    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2181
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "QUIT failed with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2188
    .end local v6    # "resp":I
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 2189
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2190
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2191
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2192
    :goto_0
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2193
    goto :goto_1

    .line 2188
    :catchall_0
    move-exception v5

    goto/16 :goto_2

    .line 2184
    :catch_0
    move-exception v6

    .line 2185
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2186
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "QUIT failed"

    invoke-virtual {v7, v8, v9, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2188
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 2189
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2190
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2191
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    goto :goto_0

    .line 2194
    :goto_1
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v6, ", response: "

    if-eqz v4, :cond_3

    .line 2195
    :try_start_6
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got bad greeting from host \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2198
    :cond_3
    new-instance v4, Ljavax/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got bad greeting from SMTP host: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    throw v4

    .line 2188
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    :goto_2
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 2189
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2190
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2191
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2192
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2193
    nop

    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    throw v5

    .line 2203
    .end local v3    # "failResponse":Ljava/lang/String;
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2204
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connected to host \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2214
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "r":I
    :cond_5
    nop

    .line 2215
    return-void

    .line 2211
    :catch_1
    move-exception v1

    .line 2212
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not connect to SMTP host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 2209
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 2210
    .local v0, "scex":Lcom/sun/mail/util/SocketConnectException;
    new-instance v1, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw v1

    .line 2207
    .end local v0    # "scex":Lcom/sun/mail/util/SocketConnectException;
    :catch_3
    move-exception v0

    .line 2208
    .local v0, "uhex":Ljava/net/UnknownHostException;
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown SMTP host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private resumeTracing()V
    .locals 2

    .line 2317
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2319
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 2321
    :cond_0
    return-void
.end method

.method private sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "allowed"    # [Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "authzid"    # Ljava/lang/String;
    .param p4, "u"    # Ljava/lang/String;
    .param p5, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1139
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    .local v0, "serviceHost":Ljava/lang/String;
    goto :goto_0

    .line 1142
    .end local v0    # "serviceHost":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 1143
    .restart local v0    # "serviceHost":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    if-nez v1, :cond_1

    .line 1145
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sun.mail.smtp.SMTPSaslAuthenticator"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1147
    .local v2, "sac":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/sun/mail/smtp/SMTPTransport;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/util/Properties;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Lcom/sun/mail/util/MailLogger;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v5, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1154
    .local v4, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    aput-object v5, v3, v6

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 1158
    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    aput-object v5, v3, v7

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    aput-object v5, v3, v8

    aput-object v0, v3, v9

    .line 1154
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/smtp/SaslAuthenticator;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    .end local v2    # "sac":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_1

    .line 1162
    :catch_0
    move-exception v2

    .line 1163
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Can\'t load SASL authenticator"

    invoke-virtual {v3, v4, v5, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1165
    return v1

    .line 1171
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    .line 1173
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1174
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 1175
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1176
    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_3
    goto :goto_4

    .line 1179
    .end local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .restart local v1    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v2, :cond_5

    .line 1181
    const-string v3, "AUTH"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1182
    .local v2, "a":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1183
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1185
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1189
    .end local v2    # "a":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1191
    .local v2, "mechs":[Ljava/lang/String;
    :try_start_1
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1192
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "SASL AUTH command trace suppressed"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1193
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    .line 1195
    :cond_6
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/sun/mail/smtp/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1197
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    .line 1195
    return v3

    .line 1197
    :catchall_0
    move-exception v3

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    .line 1198
    throw v3
.end method

.method private sendCommand([B)V
    .locals 3
    .param p1, "cmdBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2422
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2427
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2428
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2429
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2432
    nop

    .line 2433
    return-void

    .line 2430
    :catch_0
    move-exception v0

    .line 2431
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t send command to SMTP host"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 2422
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private sendMessageEnd()V
    .locals 0

    .line 2696
    return-void
.end method

.method private sendMessageStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .line 2695
    return-void
.end method

.method private suspendTracing()V
    .locals 2

    .line 2307
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2308
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2309
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 2311
    :cond_0
    return-void
.end method

.method private toBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 2685
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    if-eqz v0, :cond_0

    .line 2686
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 2689
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private tracePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 2676
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugpassword:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 2677
    :cond_0
    if-nez p1, :cond_1

    const-string v0, "<null>"

    goto :goto_0

    :cond_1
    const-string v0, "<non-null>"

    .line 2676
    :goto_0
    return-object v0
.end method

.method private traceUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "user"    # Ljava/lang/String;

    .line 2672
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugusername:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "<user name suppressed>"

    :goto_0
    return-object v0
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 2631
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static xtext(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "utf8"    # Z

    .line 2643
    const/4 v0, 0x0

    .line 2645
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 2646
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .local v1, "bytes":[B
    goto :goto_0

    .line 2648
    .end local v1    # "bytes":[B
    :cond_0
    invoke-static {p0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 2649
    .restart local v1    # "bytes":[B
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 2650
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    .line 2651
    .local v3, "c":C
    if-nez p1, :cond_2

    const/16 v4, 0x80

    if-ge v3, v4, :cond_1

    goto :goto_2

    .line 2652
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non-ASCII character in SMTP submitter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2654
    :cond_2
    :goto_2
    const/16 v4, 0x21

    const/16 v5, 0x2b

    if-lt v3, v4, :cond_4

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_4

    if-eq v3, v5, :cond_4

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    goto :goto_3

    .line 2664
    :cond_3
    if-eqz v0, :cond_6

    .line 2665
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2656
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 2657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v4

    .line 2658
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2661
    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2662
    sget-object v4, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v5, v3, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2649
    .end local v3    # "c":C
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2668
    .end local v2    # "i":I
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object v2, p0

    :goto_5
    return-object v2
.end method


# virtual methods
.method protected bdat()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2106
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    new-instance v0, Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iget v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    .line 2108
    return-object v0

    .line 2106
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected checkConnected()V
    .locals 2

    .line 2525
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    return-void

    .line 2526
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1390
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 1391
    monitor-exit p0

    return-void

    .line 1393
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 1394
    :try_start_2
    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1395
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v0, :cond_1

    .line 1396
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 1397
    .local v0, "resp":I
    const/16 v1, 0xdd

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 1398
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1399
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QUIT failed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1403
    .end local v0    # "resp":I
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1404
    nop

    .line 1405
    monitor-exit p0

    return-void

    .line 1403
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 1404
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1389
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 313
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 314
    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 312
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected data()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2079
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    const-string v0, "DATA"

    const/16 v1, 0x162

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 2081
    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    .line 2082
    return-object v0

    .line 2079
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .locals 12
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1679
    if-eqz p1, :cond_0

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EHLO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "cmd":Ljava/lang/String;
    goto :goto_0

    .line 1682
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string v0, "EHLO"

    .line 1683
    .restart local v0    # "cmd":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    .line 1685
    .local v1, "resp":I
    const/4 v2, 0x0

    const/16 v3, 0xfa

    if-ne v1, v3, :cond_6

    .line 1687
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1690
    .local v4, "rd":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    .line 1692
    const/4 v5, 0x1

    .line 1693
    .local v5, "first":Z
    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 1694
    if-eqz v5, :cond_1

    .line 1695
    const/4 v5, 0x0

    .line 1696
    goto :goto_1

    .line 1698
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x5

    if-ge v6, v8, :cond_2

    .line 1699
    goto :goto_1

    .line 1700
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1701
    .end local v7    # "line":Ljava/lang/String;
    .local v6, "line":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1702
    .local v7, "i":I
    const-string v8, ""

    .line 1703
    .local v8, "arg":Ljava/lang/String;
    if-lez v7, :cond_3

    .line 1704
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1705
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1707
    :cond_3
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v10, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1708
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found extension \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\", arg \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1710
    :cond_4
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1711
    nop

    .end local v7    # "i":I
    .end local v8    # "arg":Ljava/lang/String;
    goto :goto_1

    .line 1712
    .end local v5    # "first":Z
    .end local v6    # "line":Ljava/lang/String;
    .local v7, "line":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1714
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :cond_6
    :goto_2
    if-ne v1, v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1636
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    :goto_0
    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    .line 1641
    goto :goto_1

    .line 1640
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    .line 1641
    throw v0

    .line 1637
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1642
    :goto_1
    return-void
.end method

.method protected finishBdat()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2119
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    .line 2121
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->close()V

    .line 2122
    return-void

    .line 2119
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected finishData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2093
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    .line 2095
    const-string v0, "."

    const/16 v1, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 2096
    return-void

    .line 2093
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public declared-synchronized getAuthorizationId()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sasl.authorizationid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 329
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .line 2569
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2570
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2569
    :goto_0
    return-object v0
.end method

.method public declared-synchronized getLastReturnCode()I
    .locals 1

    monitor-enter p0

    .line 645
    :try_start_0
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 645
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 634
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 261
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".localhost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".localaddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 268
    :cond_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 269
    .local v0, "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 271
    if-nez v1, :cond_5

    .line 273
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

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_5
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 279
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 282
    .restart local v0    # "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 284
    if-nez v1, :cond_7

    .line 286
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

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 289
    .end local v0    # "localHost":Ljava/net/InetAddress;
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNTLMDomain()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".auth.ntlm.domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    .line 475
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNoopStrict()Z
    .locals 1

    monitor-enter p0

    .line 607
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 607
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReportSuccess()Z
    .locals 1

    monitor-enter p0

    .line 504
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 504
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequireStartTLS()Z
    .locals 1

    monitor-enter p0

    .line 550
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 550
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLEnabled()Z
    .locals 1

    monitor-enter p0

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 352
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLMechanisms()[Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    sget-object v1, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    if-ne v0, v1, :cond_3

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 429
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".sasl.mechanisms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 431
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SASL mechanisms allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 433
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " ,"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "m":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 437
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v3    # "m":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 440
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 441
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 443
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    .line 444
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 445
    :cond_4
    :try_start_1
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sasl.realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 376
    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".saslrealm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 379
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .locals 1

    monitor-enter p0

    .line 528
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 528
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseCanonicalHostName()Z
    .locals 1

    monitor-enter p0

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 402
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .locals 1

    monitor-enter p0

    .line 583
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 583
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1662
    const/16 v0, 0xfa

    if-eqz p1, :cond_0

    .line 1663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HELO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    goto :goto_0

    .line 1665
    :cond_0
    const-string v1, "HELO"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1666
    :goto_0
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 3

    monitor-enter p0

    .line 1429
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1431
    monitor-exit p0

    return v1

    .line 1436
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v0, :cond_1

    .line 1437
    const-string v0, "RSET"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 1439
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_1
    const-string v0, "NOOP"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1440
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 1459
    .local v0, "resp":I
    if-ltz v0, :cond_3

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_2
    const/16 v2, 0x1a5

    if-eq v0, v2, :cond_3

    .line 1460
    :goto_1
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 1463
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1466
    goto :goto_2

    .line 1464
    :catch_0
    move-exception v2

    .line 1467
    :goto_2
    monitor-exit p0

    return v1

    .line 1469
    .end local v0    # "resp":I
    :catch_1
    move-exception v0

    .line 1471
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1474
    goto :goto_3

    .line 1472
    :catch_2
    move-exception v2

    .line 1475
    :goto_3
    monitor-exit p0

    return v1

    .line 1428
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 571
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2334
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 2339
    .local v0, "resp":I
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2340
    :cond_0
    new-instance v1, Ljavax/mail/MessagingException;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2341
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2333
    .end local v0    # "resp":I
    .end local p1    # "cmd":Ljava/lang/String;
    .end local p2    # "expect":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected mailFrom()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1733
    const/4 v0, 0x0

    .line 1734
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_0

    .line 1735
    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v0

    .line 1736
    :cond_0
    const-string v1, "mail."

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1737
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1738
    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    .line 1741
    :cond_3
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v3

    move-object v4, v3

    .local v4, "fa":[Ljavax/mail/Address;
    if-eqz v3, :cond_4

    array-length v3, v4

    if-lez v3, :cond_4

    .line 1743
    aget-object v3, v4, v2

    .local v3, "me":Ljavax/mail/Address;
    goto :goto_0

    .line 1745
    .end local v3    # "me":Ljavax/mail/Address;
    .end local v4    # "fa":[Ljavax/mail/Address;
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 1747
    .restart local v3    # "me":Ljavax/mail/Address;
    :goto_0
    if-eqz v3, :cond_11

    .line 1748
    move-object v4, v3

    check-cast v4, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1754
    .end local v3    # "me":Ljavax/mail/Address;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAIL FROM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1756
    .local v3, "cmd":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    const-string v5, "SMTPUTF8"

    if-eqz v4, :cond_6

    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " SMTPUTF8"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1760
    :cond_6
    const-string v4, "DSN"

    invoke-virtual {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1761
    const/4 v4, 0x0

    .line 1762
    .local v4, "ret":Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v7, v6, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v7, :cond_7

    .line 1763
    check-cast v6, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v6}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v4

    .line 1764
    :cond_7
    if-nez v4, :cond_8

    .line 1765
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dsn.ret"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1767
    :cond_8
    if-eqz v4, :cond_9

    .line 1768
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RET="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1776
    .end local v4    # "ret":Ljava/lang/String;
    :cond_9
    const-string v4, "AUTH"

    invoke-virtual {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1777
    const/4 v4, 0x0

    .line 1778
    .local v4, "submitter":Ljava/lang/String;
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v7, v6, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v7, :cond_a

    .line 1779
    check-cast v6, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v6}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v4

    .line 1780
    :cond_a
    if-nez v4, :cond_b

    .line 1781
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".submitter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1783
    :cond_b
    if-eqz v4, :cond_d

    .line 1785
    :try_start_0
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    if-eqz v6, :cond_c

    .line 1786
    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v2, 0x1

    goto :goto_1

    :cond_c
    nop

    .line 1785
    :goto_1
    invoke-static {v4, v2}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1787
    .local v2, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AUTH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 1792
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_2

    .line 1788
    :catch_0
    move-exception v2

    .line 1789
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1790
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignoring invalid submitter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1799
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "submitter":Ljava/lang/String;
    :cond_d
    :goto_2
    const/4 v2, 0x0

    .line 1800
    .local v2, "ext":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_e

    .line 1801
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v2

    .line 1802
    :cond_e
    if-nez v2, :cond_f

    .line 1803
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".mailextension"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1804
    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 1805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1808
    :cond_10
    const/16 v1, 0xfa

    :try_start_1
    invoke-direct {p0, v3, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/sun/mail/smtp/SMTPSendFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1826
    nop

    .line 1827
    return-void

    .line 1809
    :catch_1
    move-exception v1

    .line 1810
    .local v1, "ex":Lcom/sun/mail/smtp/SMTPSendFailedException;
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getReturnCode()I

    move-result v4

    .line 1811
    .local v4, "retCode":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_3

    .line 1815
    :sswitch_0
    :try_start_2
    new-instance v5, Lcom/sun/mail/smtp/SMTPSenderFailedException;

    new-instance v6, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v6, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v3, v4, v7}, Lcom/sun/mail/smtp/SMTPSenderFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1815
    invoke-virtual {v1, v5}, Lcom/sun/mail/smtp/SMTPSendFailedException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1820
    goto :goto_3

    .line 1818
    :catch_2
    move-exception v5

    .line 1821
    nop

    .line 1825
    :goto_3
    throw v1

    .line 1750
    .end local v1    # "ex":Lcom/sun/mail/smtp/SMTPSendFailedException;
    .end local v2    # "ext":Ljava/lang/String;
    .end local v4    # "retCode":I
    .local v3, "me":Ljavax/mail/Address;
    :cond_11
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "can\'t determine local email address"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f5 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x226 -> :sswitch_0
        0x227 -> :sswitch_0
        0x229 -> :sswitch_0
    .end sparse-switch
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "validSent"    # [Ljavax/mail/Address;
    .param p3, "validUnsent"    # [Ljavax/mail/Address;
    .param p4, "invalid"    # [Ljavax/mail/Address;
    .param p5, "msg"    # Ljavax/mail/Message;

    .line 1490
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    if-nez v0, :cond_0

    .line 1491
    invoke-super/range {p0 .. p5}, Ljavax/mail/Transport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1495
    :cond_0
    return-void
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 673
    .local v0, "props":Ljava/util/Properties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".auth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v1

    .line 682
    .local v1, "useAuth":Z
    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 683
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 684
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "need username and password for authentication"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 685
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocolConnect returning false, host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 687
    invoke-direct {p0, p3}, Lcom/sun/mail/smtp/SMTPTransport;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", password="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 688
    invoke-direct {p0, p4}, Lcom/sun/mail/smtp/SMTPTransport;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 685
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 690
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_1
    monitor-exit p0

    return v2

    .line 694
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ehlo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v2

    .line 696
    .local v2, "useEhlo":Z
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 697
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "useEhlo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", useAuth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 703
    :cond_3
    const/4 v4, -0x1

    if-ne p2, v4, :cond_4

    .line 704
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mail."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".port"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v5

    move p2, v5

    .line 706
    :cond_4
    if-ne p2, v4, :cond_5

    .line 707
    iget v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    move p2, v4

    .line 709
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 710
    :cond_6
    const-string v4, "localhost"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v4

    .line 716
    :cond_7
    const/4 v4, 0x0

    .line 719
    .local v4, "connected":Z
    :try_start_2
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v5, :cond_8

    .line 720
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    goto :goto_0

    .line 722
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V

    .line 724
    :goto_0
    const/4 v5, 0x0

    .line 725
    .local v5, "succeed":Z
    if-eqz v2, :cond_9

    .line 726
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v6

    move v5, v6

    .line 727
    :cond_9
    if-nez v5, :cond_a

    .line 728
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    .line 730
    :cond_a
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-eqz v6, :cond_e

    .line 731
    :cond_b
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of v6, v6, Ljavax/net/ssl/SSLSocket;

    if-eqz v6, :cond_c

    .line 732
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "STARTTLS requested but already using SSL"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_1

    .line 733
    :cond_c
    const-string v6, "STARTTLS"

    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 734
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 741
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    goto :goto_1

    .line 742
    :cond_d
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-nez v6, :cond_16

    .line 750
    :cond_e
    :goto_1
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    if-eqz v6, :cond_f

    const-string v6, "SMTPUTF8"

    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 751
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "mail.mime.allowutf8 set but server doesn\'t advertise SMTPUTF8 support"

    invoke-virtual {v6, v7, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 754
    :cond_f
    if-nez v1, :cond_10

    if-eqz p3, :cond_11

    if-eqz p4, :cond_11

    :cond_10
    const-string v6, "AUTH"

    .line 755
    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "AUTH=LOGIN"

    .line 756
    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_11

    goto :goto_3

    .line 767
    :cond_11
    const/4 v4, 0x1

    .line 768
    nop

    .line 773
    if-nez v4, :cond_12

    .line 775
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 778
    goto :goto_2

    .line 776
    :catch_0
    move-exception v6

    .line 768
    :cond_12
    :goto_2
    monitor-exit p0

    return v3

    .line 757
    :cond_13
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 758
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protocolConnect login, host="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", user="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 760
    invoke-direct {p0, p3}, Lcom/sun/mail/smtp/SMTPTransport;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", password="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 761
    invoke-direct {p0, p4}, Lcom/sun/mail/smtp/SMTPTransport;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 758
    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 762
    :cond_14
    invoke-direct {p0, p3, p4}, Lcom/sun/mail/smtp/SMTPTransport;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 763
    .end local v4    # "connected":Z
    .local v3, "connected":Z
    nop

    .line 773
    if-nez v3, :cond_15

    .line 775
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 778
    goto :goto_4

    .line 776
    :catch_1
    move-exception v4

    .line 763
    :cond_15
    :goto_4
    monitor-exit p0

    return v3

    .line 743
    .end local v3    # "connected":Z
    .restart local v4    # "connected":Z
    :cond_16
    :try_start_6
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "STARTTLS required but not supported"

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 744
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v6, "STARTTLS is required but host does not support STARTTLS"

    invoke-direct {v3, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "useAuth":Z
    .end local v2    # "useEhlo":Z
    .end local v4    # "connected":Z
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 773
    .end local v5    # "succeed":Z
    .restart local v0    # "props":Ljava/util/Properties;
    .restart local v1    # "useAuth":Z
    .restart local v2    # "useEhlo":Z
    .restart local v4    # "connected":Z
    .restart local p1    # "host":Ljava/lang/String;
    .restart local p2    # "port":I
    .restart local p3    # "user":Ljava/lang/String;
    .restart local p4    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-nez v4, :cond_17

    .line 775
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 778
    goto :goto_5

    .line 776
    :catch_2
    move-exception v5

    .line 780
    :cond_17
    :goto_5
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 669
    .end local v0    # "props":Ljava/util/Properties;
    .end local v1    # "useAuth":Z
    .end local v2    # "useEhlo":Z
    .end local v4    # "connected":Z
    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "password":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected rcptTo()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1852
    move-object/from16 v7, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1853
    .local v8, "valid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 1854
    .local v9, "validUnsent":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1855
    .local v10, "invalid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    const/4 v0, -0x1

    .line 1856
    .local v0, "retCode":I
    const/4 v1, 0x0

    .line 1857
    .local v1, "mex":Ljavax/mail/MessagingException;
    const/4 v2, 0x0

    .line 1858
    .local v2, "sendFailed":Z
    const/4 v3, 0x0

    .line 1859
    .local v3, "sfex":Ljavax/mail/MessagingException;
    const/4 v4, 0x0

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1860
    const/4 v4, 0x0

    .line 1861
    .local v4, "sendPartial":Z
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v6, v5, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v6, :cond_0

    .line 1862
    check-cast v5, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v4

    .line 1863
    :cond_0
    const-string v5, "mail."

    if-nez v4, :cond_1

    .line 1864
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v6}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".sendpartial"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    move v11, v4

    goto :goto_0

    .line 1863
    :cond_1
    move v11, v4

    .line 1866
    .end local v4    # "sendPartial":Z
    .local v11, "sendPartial":Z
    :goto_0
    if-eqz v11, :cond_2

    .line 1867
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v6, "sendPartial set"

    invoke-virtual {v4, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1869
    :cond_2
    const/4 v4, 0x0

    .line 1870
    .local v4, "dsn":Z
    const/4 v6, 0x0

    .line 1871
    .local v6, "notify":Ljava/lang/String;
    const-string v12, "DSN"

    invoke-virtual {v7, v12}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1872
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v13, v12, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v13, :cond_3

    .line 1873
    check-cast v12, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v12}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v6

    .line 1874
    :cond_3
    if-nez v6, :cond_4

    .line 1875
    iget-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ".dsn.notify"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 1877
    :cond_4
    if-eqz v6, :cond_5

    .line 1878
    const/4 v4, 0x1

    move v12, v4

    move-object v13, v6

    goto :goto_1

    .line 1877
    :cond_5
    move v12, v4

    move-object v13, v6

    goto :goto_1

    .line 1871
    :cond_6
    move v12, v4

    move-object v13, v6

    .line 1882
    .end local v4    # "dsn":Z
    .end local v6    # "notify":Ljava/lang/String;
    .local v12, "dsn":Z
    .local v13, "notify":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    move v14, v0

    move-object v15, v1

    move-object/from16 v16, v3

    .end local v0    # "retCode":I
    .end local v1    # "mex":Ljavax/mail/MessagingException;
    .end local v3    # "sfex":Ljavax/mail/MessagingException;
    .local v4, "i":I
    .local v14, "retCode":I
    .local v15, "mex":Ljavax/mail/MessagingException;
    .local v16, "sfex":Ljavax/mail/MessagingException;
    :goto_2
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v1, v0

    const-string v5, "RSET"

    if-ge v4, v1, :cond_14

    .line 1884
    const/4 v1, 0x0

    .line 1885
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .local v1, "sfex":Ljavax/mail/MessagingException;
    aget-object v0, v0, v4

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    .line 1886
    .local v0, "ia":Ljavax/mail/internet/InternetAddress;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RCPT TO:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1887
    .local v3, "cmd":Ljava/lang/String;
    if-eqz v12, :cond_7

    .line 1888
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v16, v1

    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v16    # "sfex":Ljavax/mail/MessagingException;
    const-string v1, " NOTIFY="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1887
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    :cond_7
    move-object/from16 v16, v1

    .line 1890
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v16    # "sfex":Ljavax/mail/MessagingException;
    :goto_3
    invoke-virtual {v7, v3}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v14

    .line 1893
    sparse-switch v14, :sswitch_data_0

    .line 1941
    const/16 v1, 0x190

    if-lt v14, v1, :cond_e

    const/16 v1, 0x1f3

    if-gt v14, v1, :cond_e

    .line 1943
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1913
    :sswitch_0
    if-nez v11, :cond_8

    .line 1914
    const/4 v2, 0x1

    .line 1915
    :cond_8
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1917
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14, v5}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1919
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_9

    .line 1920
    move-object v5, v1

    move-object/from16 v16, v1

    move-object v15, v5

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .local v5, "mex":Ljavax/mail/MessagingException;
    goto/16 :goto_5

    .line 1922
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_9
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1923
    move-object/from16 v16, v1

    goto/16 :goto_5

    .line 1927
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v16    # "sfex":Ljavax/mail/MessagingException;
    :sswitch_1
    if-nez v11, :cond_a

    .line 1928
    const/4 v2, 0x1

    .line 1929
    :cond_a
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1931
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14, v5}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1933
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_b

    .line 1934
    move-object v5, v1

    move-object/from16 v16, v1

    move-object v15, v5

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .restart local v5    # "mex":Ljavax/mail/MessagingException;
    goto :goto_5

    .line 1936
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_b
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1937
    move-object/from16 v16, v1

    goto :goto_5

    .line 1895
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v16    # "sfex":Ljavax/mail/MessagingException;
    :sswitch_2
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1896
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v1, :cond_c

    .line 1897
    goto :goto_5

    .line 1903
    :cond_c
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14, v5}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1905
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_d

    .line 1906
    move-object v5, v1

    move-object/from16 v16, v1

    move-object v15, v5

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .restart local v5    # "mex":Ljavax/mail/MessagingException;
    goto :goto_5

    .line 1908
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_d
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1909
    move-object/from16 v16, v1

    goto :goto_5

    .line 1944
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v16    # "sfex":Ljavax/mail/MessagingException;
    :cond_e
    const/16 v1, 0x1f4

    if-lt v14, v1, :cond_11

    const/16 v1, 0x257

    if-gt v14, v1, :cond_11

    .line 1946
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1961
    :goto_4
    if-nez v11, :cond_f

    .line 1962
    const/4 v2, 0x1

    .line 1964
    :cond_f
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v14, v5}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1966
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_10

    .line 1967
    move-object v5, v1

    move-object/from16 v16, v1

    move-object v15, v5

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .restart local v5    # "mex":Ljavax/mail/MessagingException;
    goto :goto_5

    .line 1969
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_10
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-object/from16 v16, v1

    .line 1882
    .end local v0    # "ia":Ljavax/mail/internet/InternetAddress;
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .end local v3    # "cmd":Ljava/lang/String;
    .restart local v16    # "sfex":Ljavax/mail/MessagingException;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1949
    .restart local v0    # "ia":Ljavax/mail/internet/InternetAddress;
    .restart local v3    # "cmd":Ljava/lang/String;
    :cond_11
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1950
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    .end local v2    # "sendFailed":Z
    .local v18, "sendFailed":Z
    const-string v2, "got response code "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", with response: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_6

    .line 1949
    .end local v18    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    :cond_12
    move/from16 v18, v2

    .line 1952
    .end local v2    # "sendFailed":Z
    .restart local v18    # "sendFailed":Z
    :goto_6
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1953
    .local v1, "_lsr":Ljava/lang/String;
    iget v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1954
    .local v2, "_lrc":I
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v6, :cond_13

    .line 1955
    const/4 v6, -0x1

    invoke-virtual {v7, v5, v6}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1956
    :cond_13
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1957
    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1958
    new-instance v5, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    invoke-direct {v5, v0, v3, v14, v1}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v5

    .line 1882
    .end local v0    # "ia":Ljavax/mail/internet/InternetAddress;
    .end local v1    # "_lsr":Ljava/lang/String;
    .end local v3    # "cmd":Ljava/lang/String;
    .end local v18    # "sendFailed":Z
    .local v2, "sendFailed":Z
    :cond_14
    move/from16 v18, v2

    const/4 v6, -0x1

    .line 1976
    .end local v2    # "sendFailed":Z
    .end local v4    # "i":I
    .restart local v18    # "sendFailed":Z
    if-eqz v11, :cond_15

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 1977
    const/4 v2, 0x1

    move/from16 v18, v2

    .line 1980
    :cond_15
    if-eqz v18, :cond_18

    .line 1982
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1983
    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1986
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1987
    const/4 v0, 0x0

    .line 1988
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 1989
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Address;

    aput-object v4, v2, v0

    .line 1988
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_7

    .line 1990
    .end local v1    # "j":I
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_16
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 1991
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .restart local v3    # "i":I
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Address;

    aput-object v4, v2, v0

    .line 1990
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_8

    .line 1992
    .end local v1    # "j":I
    .end local v3    # "i":I
    :cond_17
    goto :goto_a

    :cond_18
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v0, :cond_1a

    if-eqz v11, :cond_19

    .line 1993
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1a

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    goto :goto_9

    .line 2011
    :cond_19
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto :goto_a

    .line 1996
    :cond_1a
    :goto_9
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1997
    iput-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 2000
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 2001
    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2004
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 2005
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2008
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 2009
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2016
    :goto_a
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2017
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const-string v1, "  "

    if-eqz v0, :cond_1b

    array-length v0, v0

    if-lez v0, :cond_1b

    .line 2018
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Verified Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2019
    const/4 v0, 0x0

    .local v0, "l":I
    :goto_b
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 2020
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2019
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2023
    .end local v0    # "l":I
    :cond_1b
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_1c

    array-length v0, v0

    if-lez v0, :cond_1c

    .line 2024
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Valid Unsent Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2025
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_c
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 2026
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2025
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2029
    .end local v0    # "j":I
    :cond_1c
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_1d

    array-length v0, v0

    if-lez v0, :cond_1d

    .line 2030
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Invalid Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2031
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_d
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 2032
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2031
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2038
    .end local v0    # "k":I
    :cond_1d
    if-eqz v18, :cond_1f

    .line 2039
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Sending failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2041
    const/4 v2, 0x2

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v5

    move-object v5, v0

    move v0, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 2046
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2047
    .local v6, "lsr":Ljava/lang/String;
    iget v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2049
    .local v5, "lrc":I
    :try_start_0
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1e

    .line 2050
    move-object/from16 v1, v19

    invoke-virtual {v7, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    :cond_1e
    :goto_e
    iput-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2061
    iput v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2062
    goto :goto_f

    .line 2060
    :catchall_0
    move-exception v0

    move-object/from16 v20, v8

    move v8, v5

    goto :goto_10

    .line 2051
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2054
    .local v1, "ex":Ljavax/mail/MessagingException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2058
    goto :goto_e

    .line 2055
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2057
    .local v0, "ex2":Ljavax/mail/MessagingException;
    :try_start_2
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "close failed"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_e

    .line 2064
    .end local v0    # "ex2":Ljavax/mail/MessagingException;
    .end local v1    # "ex":Ljavax/mail/MessagingException;
    :goto_f
    new-instance v17, Ljavax/mail/SendFailedException;

    const-string v1, "Invalid Addresses"

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object/from16 v0, v17

    move-object/from16 v19, v2

    move-object v2, v15

    move-object/from16 v20, v8

    move v8, v5

    .end local v5    # "lrc":I
    .local v8, "lrc":I
    .local v20, "valid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v17

    .line 2060
    .end local v20    # "valid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    .restart local v5    # "lrc":I
    .local v8, "valid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v20, v8

    move v8, v5

    .end local v5    # "lrc":I
    .local v8, "lrc":I
    .restart local v20    # "valid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    :goto_10
    iput-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2061
    iput v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2062
    throw v0

    .line 2068
    .end local v6    # "lsr":Ljava/lang/String;
    .end local v20    # "valid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    .local v8, "valid":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    :cond_1f
    return-void

    :sswitch_data_0
    .sparse-switch
        0xfa -> :sswitch_2
        0xfb -> :sswitch_2
        0x1c2 -> :sswitch_1
        0x1c3 -> :sswitch_1
        0x1c4 -> :sswitch_1
        0x1f5 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x226 -> :sswitch_0
        0x227 -> :sswitch_0
        0x228 -> :sswitch_1
        0x229 -> :sswitch_0
    .end sparse-switch
.end method

.method protected readServerResponse()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2445
    const-string v0, "close failed"

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2446
    const-string v1, ""

    .line 2447
    .local v1, "serverResponse":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2448
    .local v2, "returnCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2453
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 2456
    .local v4, "line":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v6}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 2457
    const/4 v6, -0x1

    if-nez v4, :cond_2

    .line 2458
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 2459
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2460
    const-string v0, "[EOF]"

    move-object v1, v0

    .line 2461
    :cond_1
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2462
    iput v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2463
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "EOF: {0}"

    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2464
    return v6

    .line 2466
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2467
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2470
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v1, v7

    .line 2478
    .end local v4    # "line":Ljava/lang/String;
    nop

    .line 2485
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_3

    .line 2487
    :try_start_1
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2504
    .end local v2    # "returnCode":I
    .local v0, "returnCode":I
    :goto_0
    goto :goto_3

    .line 2496
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :catch_0
    move-exception v4

    .line 2498
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2502
    goto :goto_1

    .line 2499
    :catch_1
    move-exception v5

    .line 2501
    .local v5, "mex":Ljavax/mail/MessagingException;
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v0, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2503
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    :goto_1
    const/4 v0, -0x1

    .end local v2    # "returnCode":I
    .end local v4    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v0    # "returnCode":I
    goto :goto_0

    .line 2488
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :catch_2
    move-exception v4

    .line 2490
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2494
    goto :goto_2

    .line 2491
    :catch_3
    move-exception v5

    .line 2493
    .restart local v5    # "mex":Ljavax/mail/MessagingException;
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v0, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2495
    .end local v5    # "mex":Ljavax/mail/MessagingException;
    :goto_2
    const/4 v0, -0x1

    .end local v2    # "returnCode":I
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "returnCode":I
    goto :goto_0

    .line 2506
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :cond_3
    const/4 v0, -0x1

    .line 2508
    .end local v2    # "returnCode":I
    .restart local v0    # "returnCode":I
    :goto_3
    if-ne v0, v6, :cond_4

    .line 2509
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "bad server response: {0}"

    invoke-virtual {v2, v4, v5, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2511
    :cond_4
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2512
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2513
    return v0

    .line 2471
    .end local v0    # "returnCode":I
    .restart local v2    # "returnCode":I
    :catch_4
    move-exception v0

    .line 2472
    .local v0, "ioex":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "exception reading response"

    invoke-virtual {v4, v6, v7, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2474
    const-string v4, ""

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2475
    iput v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2476
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Exception reading response"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 2445
    .end local v0    # "ioex":Ljava/io/IOException;
    .end local v1    # "serverResponse":Ljava/lang/String;
    .end local v2    # "returnCode":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2418
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 2419
    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 21
    .param p1, "message"    # Ljavax/mail/Message;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljavax/mail/SendFailedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    monitor-enter p0

    .line 1240
    if-eqz v8, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    const-string v0, ""

    :goto_0
    invoke-direct {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageStart(Ljava/lang/String;)V

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    .line 1245
    instance-of v0, v8, Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_b

    .line 1249
    if-eqz v9, :cond_a

    array-length v0, v9

    if-eqz v0, :cond_a

    .line 1252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, v9

    if-ge v0, v1, :cond_2

    .line 1253
    aget-object v1, v9, v0

    instance-of v1, v1, Ljavax/mail/internet/InternetAddress;

    if-eqz v1, :cond_1

    .line 1252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1254
    :cond_1
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an InternetAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1259
    .end local v0    # "i":I
    :cond_2
    move-object v0, v8

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1260
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1261
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, "use8bit":Z
    instance-of v1, v8, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v1, :cond_3

    .line 1266
    move-object v1, v8

    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v1

    move v0, v1

    .line 1267
    :cond_3
    const/4 v10, 0x0

    if-nez v0, :cond_4

    .line 1268
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mail."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".allow8bitmime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    move v11, v0

    goto :goto_2

    .line 1267
    :cond_4
    move v11, v0

    .line 1270
    .end local v0    # "use8bit":Z
    .local v11, "use8bit":Z
    :goto_2
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1271
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use8bit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1272
    :cond_5
    if-eqz v11, :cond_6

    const-string v0, "8BITMIME"

    invoke-virtual {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1273
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_6

    .line 1277
    :try_start_1
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1280
    goto :goto_3

    .line 1278
    :catch_0
    move-exception v0

    .line 1285
    :cond_6
    :goto_3
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V

    .line 1286
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    .line 1287
    iget v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    if-lez v0, :cond_7

    const-string v0, "CHUNKING"

    invoke-virtual {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1297
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->bdat()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishBdat()V

    goto :goto_4

    .line 1300
    :cond_7
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    .line 1303
    :goto_4
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    if-nez v0, :cond_8

    .line 1317
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "message successfully delivered to mail server"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1318
    const/4 v2, 0x1

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1354
    :try_start_3
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1355
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1356
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1357
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1358
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1359
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1360
    nop

    .line 1361
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1362
    monitor-exit p0

    return-void

    .line 1306
    :cond_8
    :try_start_4
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Sending partially failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1308
    const/4 v2, 0x3

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1313
    new-instance v0, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v14, "."

    iget v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v13, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v13 .. v20}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v0
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1354
    .restart local v11    # "use8bit":Z
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 1338
    :catch_1
    move-exception v0

    move-object v13, v0

    .line 1339
    .local v13, "ex":Ljava/io/IOException;
    :try_start_5
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "IOException while sending, closing"

    invoke-virtual {v0, v1, v2, v13}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1343
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1344
    :goto_5
    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    .line 1345
    :goto_6
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    .line 1346
    const/4 v2, 0x2

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1350
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while sending message"

    invoke-direct {v0, v1, v13}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v0

    .line 1321
    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v11    # "use8bit":Z
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :catch_3
    move-exception v0

    move-object v13, v0

    .line 1322
    .local v13, "mex":Ljavax/mail/MessagingException;
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "MessagingException while sending"

    invoke-virtual {v0, v1, v2, v13}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1324
    invoke-virtual {v13}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_9

    .line 1327
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "nested IOException, closing"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1329
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1330
    :goto_7
    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    .line 1332
    :cond_9
    :goto_8
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    .line 1333
    const/4 v2, 0x2

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1337
    nop

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1354
    .end local v13    # "mex":Ljavax/mail/MessagingException;
    .restart local v11    # "use8bit":Z
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :goto_9
    :try_start_a
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1355
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1356
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1357
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1358
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1359
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1360
    throw v0

    .line 1250
    .end local v11    # "use8bit":Z
    :cond_a
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v1, "No recipient addresses"

    invoke-direct {v0, v1}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_b
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Can only send RFC822 msgs"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1247
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "SMTP can only send RFC822 messages"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1239
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthorizationID(Ljava/lang/String;)V
    .locals 0
    .param p1, "authzid"    # Ljava/lang/String;

    monitor-enter p0

    .line 341
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 340
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "authzid":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "localhost"    # Ljava/lang/String;

    monitor-enter p0

    .line 299
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 298
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "localhost":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNTLMDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "ntlmDomain"    # Ljava/lang/String;

    monitor-enter p0

    .line 487
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    .line 486
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "ntlmDomain":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNoopStrict(Z)V
    .locals 0
    .param p1, "noopStrict"    # Z

    monitor-enter p0

    .line 619
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    .line 618
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "noopStrict":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .locals 0
    .param p1, "reportSuccess"    # Z

    monitor-enter p0

    .line 516
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    monitor-exit p0

    return-void

    .line 515
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "reportSuccess":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRequireStartTLS(Z)V
    .locals 0
    .param p1, "requireStartTLS"    # Z

    monitor-enter p0

    .line 561
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 560
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "requireStartTLS":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLEnabled(Z)V
    .locals 0
    .param p1, "enableSASL"    # Z

    monitor-enter p0

    .line 363
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 362
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "enableSASL":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLMechanisms([Ljava/lang/String;)V
    .locals 1
    .param p1, "mechanisms"    # [Ljava/lang/String;

    monitor-enter p0

    .line 458
    if-eqz p1, :cond_0

    .line 459
    :try_start_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    .line 460
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 457
    .end local p1    # "mechanisms":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "saslRealm"    # Ljava/lang/String;

    monitor-enter p0

    .line 391
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 390
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "saslRealm":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartTLS(Z)V
    .locals 0
    .param p1, "useStartTLS"    # Z

    monitor-enter p0

    .line 539
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 538
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useStartTLS":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseCanonicalHostName(Z)V
    .locals 0
    .param p1, "useCanonicalHostName"    # Z

    monitor-enter p0

    .line 414
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 413
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useCanonicalHostName":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseRset(Z)V
    .locals 0
    .param p1, "useRset"    # Z

    monitor-enter p0

    .line 595
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 594
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useRset":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2390
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2389
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "cmd":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected simpleCommand([B)I
    .locals 1
    .param p1, "cmd"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2404
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 2406
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    return v0

    .line 2404
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected startTLS()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2132
    const-string v0, "STARTTLS"

    const/16 v1, 0xdc

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 2135
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 2136
    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2135
    invoke-static {v0, v1, v2, v3}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2137
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    nop

    .line 2143
    return-void

    .line 2138
    :catch_0
    move-exception v0

    .line 2139
    .local v0, "ioex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 2140
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "auth"    # Ljava/lang/String;

    .line 2584
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2585
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2586
    return v1

    .line 2587
    :cond_0
    const-string v2, "AUTH"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2588
    .local v0, "a":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2589
    return v1

    .line 2590
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2591
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 2592
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 2593
    .local v3, "tok":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2594
    return v4

    .line 2595
    .end local v3    # "tok":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 2597
    :cond_3
    const-string v3, "LOGIN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "AUTH=LOGIN"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2598
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string/jumbo v3, "use AUTH=LOGIN hack"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2599
    return v4

    .line 2601
    :cond_4
    return v1

    .line 2584
    .end local v0    # "a":Ljava/lang/String;
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .line 2555
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2556
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2555
    :goto_0
    return v0
.end method
