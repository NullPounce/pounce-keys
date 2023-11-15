.class public Lcom/sun/mail/util/CRLFOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CRLFOutputStream.java"


# static fields
.field private static final newline:[B


# instance fields
.field protected atBOL:Z

.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 34
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 35
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_0

    .line 41
    :cond_0
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 42
    iget v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v1, v0, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 48
    :cond_2
    :goto_0
    iput p1, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    .line 49
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    .line 54
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    move v0, p2

    .line 60
    .local v0, "start":I
    add-int/2addr p3, p2

    .line 61
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_3

    .line 62
    aget-byte v2, p1, v1

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 63
    iget-object v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, v1, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    .line 65
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 66
    :cond_0
    aget-byte v2, p1, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    .line 67
    iget v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    if-eq v2, v3, :cond_1

    .line 68
    iget-object v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v3, v1, v0

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 69
    invoke-virtual {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    .line 71
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .line 73
    :cond_2
    :goto_1
    aget-byte v2, p1, v1

    iput v2, p0, Lcom/sun/mail/util/CRLFOutputStream;->lastb:I

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_3
    sub-int v1, p3, v0

    if-lez v1, :cond_4

    .line 76
    iget-object v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sub-int v2, p3, v0

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 79
    :cond_4
    return-void
.end method

.method public writeln()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/util/CRLFOutputStream;->atBOL:Z

    .line 87
    return-void
.end method
