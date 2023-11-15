.class public Lcom/sun/mail/util/BEncoderStream;
.super Lcom/sun/mail/util/BASE64EncoderStream;
.source "BEncoderStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 36
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 39
    return-void
.end method

.method public static encodedLength([B)I
    .locals 1
    .param p0, "b"    # [B

    .line 48
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
