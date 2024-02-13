.class Lcom/sun/mail/pop3/Protocol$LoginAuthenticator;
.super Lcom/sun/mail/pop3/Protocol$Authenticator;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/pop3/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginAuthenticator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/pop3/Protocol;


# direct methods
.method constructor <init>(Lcom/sun/mail/pop3/Protocol;)V
    .locals 1

    .line 538
    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol$LoginAuthenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    .line 539
    const-string v0, "LOGIN"

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/pop3/Protocol$Authenticator;-><init>(Lcom/sun/mail/pop3/Protocol;Ljava/lang/String;)V

    .line 540
    return-void
.end method


# virtual methods
.method authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol$LoginAuthenticator;->this$0:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1, p3, p4}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_0

    .line 549
    const/4 v1, 0x1

    return v1

    .line 547
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method doAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "authzid"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "LOGIN asked for more"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
