.class Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "ByteArrayDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/util/ByteArrayDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DSByteArrayOutputStream"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .line 41
    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 45
    iget v0, p0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->count:I

    return v0
.end method
