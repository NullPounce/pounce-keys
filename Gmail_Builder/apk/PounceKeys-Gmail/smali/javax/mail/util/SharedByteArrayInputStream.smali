.class public Ljavax/mail/util/SharedByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SharedByteArrayInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# instance fields
.field protected start:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .line 44
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    .line 45
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    .line 58
    iput p2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    .line 59
    return-void
.end method


# virtual methods
.method public getPosition()J
    .locals 2

    .line 69
    iget v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 5
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 88
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 89
    iget v0, p0, Ljavax/mail/util/SharedByteArrayInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    sub-int/2addr v0, v1

    int-to-long p3, v0

    .line 90
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedByteArrayInputStream;->buf:[B

    iget v2, p0, Ljavax/mail/util/SharedByteArrayInputStream;->start:I

    long-to-int v3, p1

    add-int/2addr v2, v3

    sub-long v3, p3, p1

    long-to-int v4, v3

    invoke-direct {v0, v1, v2, v4}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([BII)V

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
