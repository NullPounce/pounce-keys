.class public Lcom/sun/mail/iap/LiteralException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "LiteralException.java"


# static fields
.field private static final serialVersionUID:J = -0x6005dd64fd3b1139L


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/iap/Response;

    .line 33
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/sun/mail/iap/LiteralException;->response:Lcom/sun/mail/iap/Response;

    .line 35
    return-void
.end method
