.class public Lcom/sun/mail/util/LineOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LineOutputStream.java"


# static fields
.field private static newline:[B


# instance fields
.field private allowutf8:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    .line 41
    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 42
    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "allowutf8"    # Z

    .line 55
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    iput-boolean p2, p0, Lcom/sun/mail/util/LineOutputStream;->allowutf8:Z

    .line 57
    return-void
.end method


# virtual methods
.method public writeln()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 71
    return-void
.end method

.method public writeln(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Lcom/sun/mail/util/LineOutputStream;->allowutf8:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, "bytes":[B
    goto :goto_0

    .line 64
    .end local v0    # "bytes":[B
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 65
    .restart local v0    # "bytes":[B
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 66
    iget-object v1, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;

    sget-object v2, Lcom/sun/mail/util/LineOutputStream;->newline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 67
    return-void
.end method
