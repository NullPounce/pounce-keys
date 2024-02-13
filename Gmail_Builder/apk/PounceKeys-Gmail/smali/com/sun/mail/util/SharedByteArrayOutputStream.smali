.class public Lcom/sun/mail/util/SharedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SharedByteArrayOutputStream.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 34
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public toStream()Ljava/io/InputStream;
    .locals 4

    .line 38
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/mail/util/SharedByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/sun/mail/util/SharedByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method
