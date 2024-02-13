.class public Lcom/sun/mail/imap/protocol/FetchResponse;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;
.source "FetchResponse.java"


# static fields
.field private static final HEADER:[C

.field private static final TEXT:[C


# instance fields
.field private extensionItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

.field private items:[Lcom/sun/mail/imap/protocol/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    .line 172
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x48s
        0x45s
        0x41s
        0x44s
        0x45s
        0x52s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2es
        0x54s
        0x45s
        0x58s
        0x54s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    .line 51
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;[Lcom/sun/mail/imap/protocol/FetchItem;)V
    .locals 0
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .param p2, "fitems"    # [Lcom/sun/mail/imap/protocol/FetchItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    .line 71
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    .line 72
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 73
    return-void
.end method

.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 6
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">([",
            "Lcom/sun/mail/iap/Response;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 104
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 105
    return-object v0

    .line 107
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 109
    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    aget-object v2, p0, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v2, :cond_3

    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 111
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 112
    goto :goto_2

    .line 114
    :cond_1
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 115
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 116
    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    iget-object v0, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/Item;

    return-object v0

    .line 115
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v3    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method public static getItems([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">([",
            "Lcom/sun/mail/iap/Response;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 137
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    .line 140
    return-object v0

    .line 142
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 144
    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    aget-object v2, p0, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v2, :cond_3

    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 146
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 147
    goto :goto_2

    .line 149
    :cond_1
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 150
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 151
    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v3    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method private match(Ljava/lang/String;)Z
    .locals 5
    .param p1, "itemName"    # Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 311
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 314
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-byte v2, v3, v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 315
    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_0

    .line 316
    const/4 v1, 0x0

    return v1

    .line 315
    :cond_0
    move v1, v3

    move v2, v4

    goto :goto_0

    .line 317
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 318
    const/4 v1, 0x1

    return v1
.end method

.method private match([C)Z
    .locals 5
    .param p1, "itemName"    # [C

    .line 292
    array-length v0, p1

    .line 293
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 296
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-byte v2, v3, v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-char v1, p1, v1

    if-eq v2, v1, :cond_0

    .line 297
    const/4 v1, 0x0

    return v1

    .line 296
    :cond_0
    move v1, v3

    move v2, v4

    goto :goto_0

    .line 298
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 299
    const/4 v1, 0x1

    return v1
.end method

.method private next20()Ljava/lang/String;
    .locals 4

    .line 204
    iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v0, v0, 0x14

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-le v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v3, v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 175
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/Item;>;"
    const/4 v1, 0x0

    .line 181
    .local v1, "i":Lcom/sun/mail/imap/protocol/Item;
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 184
    :cond_0
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-ge v2, v3, :cond_3

    .line 188
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parseItem()Lcom/sun/mail/imap/protocol/Item;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parseExtensionItem()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    :goto_0
    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->isNextNonSpace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/Item;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/Item;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    .line 198
    return-void

    .line 192
    :cond_2
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in FETCH parsing, unrecognized item at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", starts with \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->next20()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_3
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error in FETCH parsing, ran off end of buffer, size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/Item;>;"
    .end local v1    # "i":Lcom/sun/mail/imap/protocol/Item;
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in FETCH parsing, missing \'(\' at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseExtensionItem()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    return v1

    .line 272
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 273
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->extensionItems:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->extensionItems:Ljava/util/Map;

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->extensionItems:Ljava/util/Map;

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    aget-object v3, v3, v0

    .line 277
    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/FetchItem;->parseItem(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljava/lang/Object;

    move-result-object v3

    .line 276
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const/4 v1, 0x1

    return v1

    .line 272
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_3
    return v1
.end method

.method private parseItem()Lcom/sun/mail/imap/protocol/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 253
    :sswitch_0
    sget-object v0, Lcom/sun/mail/imap/protocol/UID;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    new-instance v0, Lcom/sun/mail/imap/protocol/UID;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 241
    :sswitch_1
    sget-object v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 243
    :cond_0
    sget-object v0, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "isHeader":Z
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    .line 248
    const/4 v0, 0x0

    .line 249
    :goto_0
    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;Z)V

    return-object v1

    .line 257
    .end local v0    # "isHeader":Z
    :sswitch_2
    sget-object v0, Lcom/sun/mail/imap/protocol/MODSEQ;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    new-instance v0, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/MODSEQ;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 227
    :sswitch_3
    sget-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    new-instance v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 223
    :sswitch_4
    sget-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    new-instance v0, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    return-object v0

    .line 219
    :sswitch_5
    sget-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 220
    new-instance v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 231
    :sswitch_6
    sget-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    new-instance v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 233
    :cond_2
    sget-object v0, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_3

    .line 235
    new-instance v0, Lcom/sun/mail/imap/protocol/BODY;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 237
    :cond_3
    new-instance v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 263
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_6
        0x45 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4d -> :sswitch_2
        0x52 -> :sswitch_1
        0x55 -> :sswitch_0
        0x62 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6d -> :sswitch_2
        0x72 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getExtensionItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->extensionItems:Ljava/util/Map;

    return-object v0
.end method

.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
    .locals 1
    .param p1, "index"    # I

    .line 80
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 84
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 85
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/Item;

    return-object v1

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v0, v0

    return v0
.end method
