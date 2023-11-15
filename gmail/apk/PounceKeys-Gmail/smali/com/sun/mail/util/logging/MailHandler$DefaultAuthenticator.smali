.class final Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;
.super Ljavax/mail/Authenticator;
.source "MailHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/util/logging/MailHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultAuthenticator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final pass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4250
    const-class v0, Lcom/sun/mail/util/logging/MailHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pass"    # Ljava/lang/String;

    .line 4275
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 4276
    if-eqz p1, :cond_0

    .line 4277
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->pass:Ljava/lang/String;

    .line 4278
    return-void

    .line 4276
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static of(Ljava/lang/String;)Ljavax/mail/Authenticator;
    .locals 1
    .param p0, "pass"    # Ljava/lang/String;

    .line 4263
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .line 4282
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->getDefaultUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->pass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
