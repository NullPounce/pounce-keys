.class public Lcom/sun/mail/util/MessageRemovedIOException;
.super Ljava/io/IOException;
.source "MessageRemovedIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x3b6746fdc4d08728L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
