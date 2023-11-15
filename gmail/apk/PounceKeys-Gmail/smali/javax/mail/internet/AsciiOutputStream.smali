.class Ljavax/mail/internet/AsciiOutputStream;
.super Ljava/io/OutputStream;
.source "MimeUtility.java"


# instance fields
.field private ascii:I

.field private badEOL:Z

.field private breakOnNonAscii:Z

.field private checkEOL:Z

.field private lastb:I

.field private linelen:I

.field private longLine:Z

.field private non_ascii:I

.field private ret:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "breakOnNonAscii"    # Z
    .param p2, "encodeEolStrict"    # Z

    .line 1640
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1632
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    .line 1633
    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    .line 1634
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->longLine:Z

    .line 1635
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->badEOL:Z

    .line 1636
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    .line 1637
    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    .line 1638
    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    .line 1641
    iput-boolean p1, p0, Ljavax/mail/internet/AsciiOutputStream;->breakOnNonAscii:Z

    .line 1642
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    .line 1643
    return-void
.end method

.method private final check(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    and-int/lit16 p1, p1, 0xff

    .line 1664
    iget-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->checkEOL:Z

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    if-ne v0, v2, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    if-eq v0, v2, :cond_2

    if-ne p1, v1, :cond_2

    .line 1666
    :cond_1
    iput-boolean v3, p0, Ljavax/mail/internet/AsciiOutputStream;->badEOL:Z

    .line 1667
    :cond_2
    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 1670
    :cond_3
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    add-int/2addr v0, v3

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    .line 1671
    const/16 v1, 0x3e6

    if-le v0, v1, :cond_5

    .line 1672
    iput-boolean v3, p0, Ljavax/mail/internet/AsciiOutputStream;->longLine:Z

    goto :goto_1

    .line 1668
    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->linelen:I

    .line 1674
    :cond_5
    :goto_1
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1675
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    add-int/2addr v0, v3

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    .line 1676
    iget-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->breakOnNonAscii:Z

    if-nez v0, :cond_6

    goto :goto_2

    .line 1677
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    .line 1678
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 1681
    :cond_7
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    add-int/2addr v0, v3

    iput v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    .line 1682
    :goto_2
    iput p1, p0, Ljavax/mail/internet/AsciiOutputStream;->lastb:I

    .line 1683
    return-void
.end method


# virtual methods
.method public getAscii()I
    .locals 4

    .line 1689
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->ret:I

    if-eqz v0, :cond_0

    .line 1690
    return v0

    .line 1695
    :cond_0
    iget-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->badEOL:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 1696
    return v1

    .line 1697
    :cond_1
    iget v0, p0, Ljavax/mail/internet/AsciiOutputStream;->non_ascii:I

    const/4 v2, 0x2

    if-nez v0, :cond_3

    .line 1699
    iget-boolean v0, p0, Ljavax/mail/internet/AsciiOutputStream;->longLine:Z

    if-eqz v0, :cond_2

    .line 1700
    return v2

    .line 1702
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1704
    :cond_3
    iget v3, p0, Ljavax/mail/internet/AsciiOutputStream;->ascii:I

    if-le v3, v0, :cond_4

    .line 1705
    return v2

    .line 1706
    :cond_4
    return v1
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1647
    invoke-direct {p0, p1}, Ljavax/mail/internet/AsciiOutputStream;->check(I)V

    .line 1648
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

    .line 1652
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/mail/internet/AsciiOutputStream;->write([BII)V

    .line 1653
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1657
    add-int/2addr p3, p2

    .line 1658
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1659
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Ljavax/mail/internet/AsciiOutputStream;->check(I)V

    .line 1658
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1660
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
