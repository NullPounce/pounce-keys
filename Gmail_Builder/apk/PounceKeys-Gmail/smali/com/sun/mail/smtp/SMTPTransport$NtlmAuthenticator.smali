.class Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;
.super Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NtlmAuthenticator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ntlm:Lcom/sun/mail/auth/Ntlm;

.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1063
    const-class v0, Lcom/sun/mail/smtp/SMTPTransport;

    return-void
.end method

.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 1

    .line 1066
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1067
    const-string v0, "NTLM"

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V

    .line 1068
    return-void
.end method


# virtual methods
.method doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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

    .line 1090
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->ntlm:Lcom/sun/mail/auth/Ntlm;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1092
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPTransport;->getLastServerResponse()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1091
    invoke-virtual {v0, v1}, Lcom/sun/mail/auth/Ntlm;->generateType3Msg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, "type3":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->resp:I

    .line 1095
    return-void

    .line 1090
    .end local v0    # "type3":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
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

    .line 1073
    new-instance v6, Lcom/sun/mail/auth/Ntlm;

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport;->getNTLMDomain()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1074
    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;

    move-result-object v5

    move-object v0, v6

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/auth/Ntlm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/mail/util/MailLogger;)V

    iput-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->ntlm:Lcom/sun/mail/auth/Ntlm;

    .line 1076
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1077
    invoke-static {v0}, Lcom/sun/mail/smtp/SMTPTransport;->access$600(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1078
    invoke-static {v3}, Lcom/sun/mail/smtp/SMTPTransport;->access$700(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".auth.ntlm.flags"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result v0

    .line 1079
    .local v0, "flags":I
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1080
    invoke-static {v1}, Lcom/sun/mail/smtp/SMTPTransport;->access$800(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 1081
    invoke-static {v3}, Lcom/sun/mail/smtp/SMTPTransport;->access$700(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".auth.ntlm.v2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1079
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v1

    .line 1083
    .local v1, "v2":Z
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;->ntlm:Lcom/sun/mail/auth/Ntlm;

    invoke-virtual {v2, v0, v1}, Lcom/sun/mail/auth/Ntlm;->generateType1Msg(IZ)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, "type1":Ljava/lang/String;
    return-object v2
.end method
