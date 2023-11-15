.class public Lcom/sun/mail/imap/protocol/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field static final standardItems:[Ljava/lang/String;


# instance fields
.field public highestmodseq:J

.field public items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mbox:Ljava/lang/String;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J

.field public unseen:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MESSAGES"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RECENT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UNSEEN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UIDNEXT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UIDVALIDITY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 8
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 35
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    .line 36
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 37
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 38
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 39
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 47
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->supportsUtf8()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 56
    .local v1, "onlySpaces":Z
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    int-to-char v2, v2

    .line 59
    .local v2, "next":C
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    .line 62
    const/4 v1, 0x0

    .line 64
    .end local v2    # "next":C
    :cond_1
    goto :goto_0

    .line 66
    :cond_2
    if-nez v1, :cond_3

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->mbox:Ljava/lang/String;

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const-string v4, "parse error in STATUS"

    if-ne v2, v3, :cond_d

    .line 74
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "attr":Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 77
    const-string v3, "MESSAGES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    goto :goto_1

    .line 79
    :cond_5
    const-string v3, "RECENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 80
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    goto :goto_1

    .line 81
    :cond_6
    const-string v3, "UIDNEXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 82
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    goto :goto_1

    .line 83
    :cond_7
    const-string v3, "UIDVALIDITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 84
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    goto :goto_1

    .line 85
    :cond_8
    const-string v3, "UNSEEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 86
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    goto :goto_1

    .line 87
    :cond_9
    const-string v3, "HIGHESTMODSEQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 88
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    goto :goto_1

    .line 90
    :cond_a
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-nez v3, :cond_b

    .line 91
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    .line 92
    :cond_b
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 92
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v2    # "attr":Ljava/lang/String;
    :goto_1
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 96
    return-void

    .line 76
    .restart local v2    # "attr":Ljava/lang/String;
    :cond_c
    new-instance v3, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    .end local v2    # "attr":Ljava/lang/String;
    :cond_d
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v2, v4}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V
    .locals 6
    .param p0, "s1"    # Lcom/sun/mail/imap/protocol/Status;
    .param p1, "s2"    # Lcom/sun/mail/imap/protocol/Status;

    .line 127
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->total:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 128
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    .line 129
    :cond_0
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    if-eq v0, v1, :cond_1

    .line 130
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    .line 131
    :cond_1
    iget-wide v2, p1, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 132
    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    .line 133
    :cond_2
    iget-wide v2, p1, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 134
    iput-wide v2, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    .line 135
    :cond_3
    iget v0, p1, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    if-eq v0, v1, :cond_4

    .line 136
    iput v0, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    .line 137
    :cond_4
    iget-wide v0, p1, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 138
    iput-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 140
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    goto :goto_0

    .line 141
    :cond_6
    iget-object v1, p1, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 142
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 143
    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getItem(Ljava/lang/String;)J
    .locals 4
    .param p1, "item"    # Ljava/lang/String;

    .line 106
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 108
    const-wide/16 v0, -0x1

    .line 109
    .local v0, "ret":J
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/Status;->items:Ljava/util/Map;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    move-object v3, v2

    .local v3, "v":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 111
    .end local v3    # "v":Ljava/lang/Long;
    :cond_0
    const-string v2, "MESSAGES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    iget v2, p0, Lcom/sun/mail/imap/protocol/Status;->total:I

    int-to-long v0, v2

    goto :goto_0

    .line 113
    :cond_1
    const-string v2, "RECENT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    iget v2, p0, Lcom/sun/mail/imap/protocol/Status;->recent:I

    int-to-long v0, v2

    goto :goto_0

    .line 115
    :cond_2
    const-string v2, "UIDNEXT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J

    goto :goto_0

    .line 117
    :cond_3
    const-string v2, "UIDVALIDITY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J

    goto :goto_0

    .line 119
    :cond_4
    const-string v2, "UNSEEN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    iget v2, p0, Lcom/sun/mail/imap/protocol/Status;->unseen:I

    int-to-long v0, v2

    goto :goto_0

    .line 121
    :cond_5
    const-string v2, "HIGHESTMODSEQ"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J

    .line 123
    :cond_6
    :goto_0
    return-wide v0
.end method
