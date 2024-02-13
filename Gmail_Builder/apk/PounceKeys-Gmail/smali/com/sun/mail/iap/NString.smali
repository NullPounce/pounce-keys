.class Lcom/sun/mail/iap/NString;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "b"    # [B

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p1, p0, Lcom/sun/mail/iap/NString;->bytes:[B

    .line 430
    return-void
.end method
