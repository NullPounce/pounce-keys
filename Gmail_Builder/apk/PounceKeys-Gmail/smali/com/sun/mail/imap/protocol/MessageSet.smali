.class public Lcom/sun/mail/imap/protocol/MessageSet;
.super Ljava/lang/Object;
.source "MessageSet.java"


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 34
    iput p2, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 35
    return-void
.end method

.method public static createMessageSets([I)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 6
    .param p0, "msgs"    # [I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/MessageSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 57
    new-instance v2, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 58
    .local v2, "ms":Lcom/sun/mail/imap/protocol/MessageSet;
    aget v3, p0, v1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 61
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 62
    aget v4, p0, v3

    add-int/lit8 v5, v3, -0x1

    aget v5, p0, v5

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_0

    .line 63
    goto :goto_2

    .line 61
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    :cond_1
    :goto_2
    add-int/lit8 v4, v3, -0x1

    aget v4, p0, v4

    iput v4, v2, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v3, -0x1

    .line 56
    .end local v2    # "ms":Lcom/sun/mail/imap/protocol/MessageSet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "j":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/MessageSet;

    return-object v2
.end method

.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
    .locals 3
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "count":I
    if-nez p0, :cond_0

    .line 113
    const/4 v1, 0x0

    return v1

    .line 115
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 116
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/MessageSet;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
    .locals 7
    .param p0, "msgsets"    # [Lcom/sun/mail/imap/protocol/MessageSet;

    .line 79
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 83
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v1, "s":Ljava/lang/StringBuilder;
    array-length v2, p0

    .line 88
    .local v2, "size":I
    :goto_0
    aget-object v3, p0, v0

    iget v3, v3, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 89
    .local v3, "start":I
    aget-object v4, p0, v0

    iget v4, v4, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 91
    .local v4, "end":I
    if-le v4, v3, :cond_1

    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 97
    if-lt v0, v2, :cond_2

    .line 98
    nop

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 100
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    .end local v0    # "i":I
    .end local v1    # "s":Ljava/lang/StringBuilder;
    .end local v2    # "size":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public size()I
    .locals 2

    .line 43
    iget v0, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    iget v1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
