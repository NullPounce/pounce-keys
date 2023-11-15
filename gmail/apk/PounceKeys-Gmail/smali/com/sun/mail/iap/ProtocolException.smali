.class public Lcom/sun/mail/iap/ProtocolException;
.super Ljava/lang/Exception;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x3c839c61c5f679bfL


# instance fields
.field protected transient response:Lcom/sun/mail/iap/Response;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 61
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    .line 62
    iput-object p1, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    .line 53
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/sun/mail/iap/Response;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sun/mail/iap/ProtocolException;->response:Lcom/sun/mail/iap/Response;

    return-object v0
.end method
