.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;
.source "MailboxInfo.java"


# instance fields
.field public availableFlags:Ljavax/mail/Flags;

.field public first:I

.field public highestmodseq:J

.field public mode:I

.field public permanentFlags:Ljavax/mail/Flags;

.field public recent:I

.field public responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sun/mail/imap/protocol/IMAPResponse;",
            ">;"
        }
    .end annotation
.end field

.field public total:I

.field public uidNotSticky:Z

.field public uidnext:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # [Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 37
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 41
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 43
    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    .line 45
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    .line 47
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    .line 49
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidNotSticky:Z

    .line 51
    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 66
    aget-object v2, p1, v1

    if-eqz v2, :cond_14

    aget-object v2, p1, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v2, :cond_0

    .line 67
    goto/16 :goto_4

    .line 69
    :cond_0
    aget-object v2, p1, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 71
    .local v2, "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v3, "EXISTS"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    .line 73
    aput-object v0, p1, v1

    goto/16 :goto_4

    .line 74
    :cond_1
    const-string v3, "RECENT"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    .line 76
    aput-object v0, p1, v1

    goto/16 :goto_4

    .line 77
    :cond_2
    const-string v3, "FLAGS"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    new-instance v3, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v3, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    .line 79
    aput-object v0, p1, v1

    goto/16 :goto_4

    .line 80
    :cond_3
    const-string v3, "VANISHED"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 81
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-nez v3, :cond_4

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    aput-object v0, p1, v1

    goto/16 :goto_4

    .line 85
    :cond_5
    const-string v3, "FETCH"

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 86
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-nez v3, :cond_6

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    .line 88
    :cond_6
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    aput-object v0, p1, v1

    goto/16 :goto_4

    .line 90
    :cond_7
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v3

    const/16 v4, 0x5b

    if-eqz v3, :cond_f

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 99
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 101
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v3

    if-eq v3, v4, :cond_8

    .line 102
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    .line 103
    goto/16 :goto_4

    .line 106
    :cond_8
    const/4 v3, 0x1

    .line 107
    .local v3, "handled":Z
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "s":Ljava/lang/String;
    const-string v5, "UNSEEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 109
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v5

    iput v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    goto :goto_1

    .line 110
    :cond_9
    const-string v5, "UIDVALIDITY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 111
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    goto :goto_1

    .line 112
    :cond_a
    const-string v5, "PERMANENTFLAGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 113
    new-instance v5, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v5, v2}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_1

    .line 114
    :cond_b
    const-string v5, "UIDNEXT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 115
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    goto :goto_1

    .line 116
    :cond_c
    const-string v5, "HIGHESTMODSEQ"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 117
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    goto :goto_1

    .line 119
    :cond_d
    const/4 v3, 0x0

    .line 121
    :goto_1
    if-eqz v3, :cond_e

    .line 122
    aput-object v0, p1, v1

    goto :goto_3

    .line 124
    :cond_e
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto :goto_3

    .line 125
    .end local v3    # "handled":Z
    .end local v4    # "s":Ljava/lang/String;
    :cond_f
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isNO()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 130
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    .line 132
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v3

    if-eq v3, v4, :cond_10

    .line 133
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    .line 134
    goto :goto_4

    .line 137
    :cond_10
    const/4 v3, 0x1

    .line 138
    .restart local v3    # "handled":Z
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 139
    .restart local v4    # "s":Ljava/lang/String;
    const-string v5, "UIDNOTSTICKY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 140
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidNotSticky:Z

    goto :goto_2

    .line 142
    :cond_11
    const/4 v3, 0x0

    .line 144
    :goto_2
    if-eqz v3, :cond_12

    .line 145
    aput-object v0, p1, v1

    goto :goto_4

    .line 147
    :cond_12
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    goto :goto_4

    .line 125
    .end local v3    # "handled":Z
    .end local v4    # "s":Ljava/lang/String;
    :cond_13
    :goto_3
    nop

    .line 65
    .end local v2    # "ir":Lcom/sun/mail/imap/protocol/IMAPResponse;
    :cond_14
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    if-nez v0, :cond_17

    .line 157
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    if-eqz v0, :cond_16

    .line 158
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1, v0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_5

    .line 160
    :cond_16
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    .line 162
    :cond_17
    :goto_5
    return-void
.end method
