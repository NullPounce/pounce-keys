.class public Lcom/sun/mail/iap/ConnectionException;
.super Lcom/sun/mail/iap/ProtocolException;
.source "ConnectionException.java"


# static fields
.field private static final serialVersionUID:J = 0x4fcb2db4e6c2e197L


# instance fields
.field private transient p:Lcom/sun/mail/iap/Protocol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sun/mail/iap/ProtocolException;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V
    .locals 0
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .param p2, "r"    # Lcom/sun/mail/iap/Response;

    .line 51
    invoke-direct {p0, p2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 52
    iput-object p1, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/Protocol;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getProtocol()Lcom/sun/mail/iap/Protocol;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sun/mail/iap/ConnectionException;->p:Lcom/sun/mail/iap/Protocol;

    return-object v0
.end method
