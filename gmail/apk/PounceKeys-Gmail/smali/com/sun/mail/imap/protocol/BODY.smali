.class public Lcom/sun/mail/imap/protocol/BODY;
.super Ljava/lang/Object;
.source "BODY.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field private final data:Lcom/sun/mail/iap/ByteArray;

.field private final isHeader:Z

.field private final msgno:I

.field private final origin:I

.field private final section:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->msgno:I

    .line 49
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 51
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 54
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/BODY;->section:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_1

    .line 58
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "HEADER"

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BODY;->isHeader:Z

    .line 60
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    .line 66
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    .line 67
    return-void

    .line 56
    :cond_1
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "BODY parse error: missing ``]\'\' at section end"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "BODY parse error: missing ``[\'\' at section start"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getByteArray()Lcom/sun/mail/iap/ByteArray;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigin()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    return v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->section:Ljava/lang/String;

    return-object v0
.end method

.method public isHeader()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BODY;->isHeader:Z

    return v0
.end method
