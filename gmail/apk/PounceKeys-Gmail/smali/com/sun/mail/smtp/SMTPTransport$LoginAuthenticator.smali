.class Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;
.super Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/smtp/SMTPTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginAuthenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/smtp/SMTPTransport;


# direct methods
.method constructor <init>(Lcom/sun/mail/smtp/SMTPTransport;)V
    .locals 1

    .line 971
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    .line 972
    const-string v0, "LOGIN"

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/lang/String;)V

    .line 973
    return-void
.end method


# virtual methods
.method doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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

    .line 979
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 980
    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 979
    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->resp:I

    .line 981
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->resp:I

    const/16 v1, 0x14e

    if-ne v0, v1, :cond_0

    .line 983
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->this$0:Lcom/sun/mail/smtp/SMTPTransport;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 984
    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 983
    invoke-static {v1}, Lcom/sun/mail/util/BASE64EncoderStream;->encode([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;->resp:I

    .line 986
    :cond_0
    return-void
.end method
