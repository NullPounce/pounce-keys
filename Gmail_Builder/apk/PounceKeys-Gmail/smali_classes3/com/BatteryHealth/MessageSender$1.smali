.class Lcom/BatteryHealth/MessageSender$1;
.super Ljavax/mail/Authenticator;
.source "MessageSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BatteryHealth/MessageSender;->sendEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/BatteryHealth/MessageSender;


# direct methods
.method constructor <init>(Lcom/BatteryHealth/MessageSender;)V
    .locals 0
    .param p1, "this$0"    # Lcom/BatteryHealth/MessageSender;

    .line 32
    iput-object p1, p0, Lcom/BatteryHealth/MessageSender$1;->this$0:Lcom/BatteryHealth/MessageSender;

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .line 34
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    const-string v1, "YOUR-EMAIL@gmail.com"

    const-string v2, "APP-PASS"

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
