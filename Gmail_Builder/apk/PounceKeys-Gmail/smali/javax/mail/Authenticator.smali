.class public abstract Ljavax/mail/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# instance fields
.field private requestingPort:I

.field private requestingPrompt:Ljava/lang/String;

.field private requestingProtocol:Ljava/lang/String;

.field private requestingSite:Ljava/net/InetAddress;

.field private requestingUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getDefaultUserName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingUserName:Ljava/lang/String;

    return-object v0
.end method

.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 1

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    .line 95
    iget v0, p0, Ljavax/mail/Authenticator;->requestingPort:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingPrompt:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    .line 88
    iget-object v0, p0, Ljavax/mail/Authenticator;->requestingSite:Ljava/net/InetAddress;

    return-object v0
.end method

.method final declared-synchronized requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "defaultUserName"    # Ljava/lang/String;

    monitor-enter p0

    .line 75
    :try_start_0
    iput-object p1, p0, Ljavax/mail/Authenticator;->requestingSite:Ljava/net/InetAddress;

    .line 76
    iput p2, p0, Ljavax/mail/Authenticator;->requestingPort:I

    .line 77
    iput-object p3, p0, Ljavax/mail/Authenticator;->requestingProtocol:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Ljavax/mail/Authenticator;->requestingPrompt:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Ljavax/mail/Authenticator;->requestingUserName:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Ljavax/mail/Authenticator;->getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 74
    .end local p0    # "this":Ljavax/mail/Authenticator;
    .end local p1    # "addr":Ljava/net/InetAddress;
    .end local p2    # "port":I
    .end local p3    # "protocol":Ljava/lang/String;
    .end local p4    # "prompt":Ljava/lang/String;
    .end local p5    # "defaultUserName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
