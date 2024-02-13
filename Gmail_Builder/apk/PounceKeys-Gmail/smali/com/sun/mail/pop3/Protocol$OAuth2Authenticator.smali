.class Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;
.super Lcom/sun/mail/pop3/Protocol$Authenticator;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/pop3/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OAuth2Authenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/pop3/Protocol;


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/Protocol;)V
    .locals 2

    .line 685
    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    .line 686
    const-string v0, "XOAUTH2"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/pop3/Protocol$Authenticator;-><init>(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;Z)V

    .line 687
    return-void
.end method


# virtual methods
.method doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    const-string v0, ""

    .line 726
    .local v0, "err":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v1, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    iget-object v1, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 728
    .local v1, "b":[B
    invoke-static {v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([B)[B

    move-result-object v1

    .line 729
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v2

    .line 731
    .end local v1    # "b":[B
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAUTH2 authentication failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getInitialResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0001auth=Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0001\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "resp":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 695
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 694
    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v1

    .line 696
    .local v1, "b":[B
    invoke-static {v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected runAuthenticationCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "ir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    .line 702
    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->access$600(Lcom/sun/mail/pop3/Protocol;)Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    .line 703
    invoke-static {v3}, Lcom/sun/mail/pop3/Protocol;->access$500(Lcom/sun/mail/pop3/Protocol;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".auth.xoauth2.two.line.authentication.format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 701
    invoke-static {v0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->access$800(Lcom/sun/mail/pop3/Protocol;Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 705
    .local v0, "isTwoLineAuthenticationFormat":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 706
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v1}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-static {v1}, Lcom/sun/mail/pop3/Protocol;->access$000(Lcom/sun/mail/pop3/Protocol;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using two line authentication format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    .line 712
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "="

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 710
    :goto_0
    invoke-static {v1, p1, v2}, Lcom/sun/mail/pop3/Protocol;->access$900(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol$OAuth2Authenticator;->resp:Lcom/sun/mail/pop3/Response;

    goto :goto_1

    .line 715
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sun/mail/pop3/Protocol$Authenticator;->runAuthenticationCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :goto_1
    return-void
.end method
