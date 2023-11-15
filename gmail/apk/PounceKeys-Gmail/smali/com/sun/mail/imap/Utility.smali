.class public final Lcom/sun/mail/imap/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Utility$Condition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResyncUIDSet(Lcom/sun/mail/imap/ResyncData;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 1
    .param p0, "rd"    # Lcom/sun/mail/imap/ResyncData;

    .line 204
    invoke-virtual {p0}, Lcom/sun/mail/imap/ResyncData;->getUIDSet()[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v0

    return-object v0
.end method

.method public static toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 8
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/MessageSet;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 61
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 62
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    goto :goto_2

    .line 65
    :cond_0
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    .line 67
    .local v4, "current":I
    if-eqz p1, :cond_1

    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    goto :goto_2

    .line 70
    :cond_1
    new-instance v5, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v5}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    .line 71
    .local v5, "set":Lcom/sun/mail/imap/protocol/MessageSet;
    iput v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    .line 74
    :goto_1
    add-int/lit8 v2, v2, 0x1

    array-length v6, p0

    if-ge v2, v6, :cond_5

    .line 76
    aget-object v6, p0, v2

    move-object v3, v6

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 78
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v6

    .line 83
    .local v6, "next":I
    if-eqz p1, :cond_3

    invoke-interface {p1, v3}, Lcom/sun/mail/imap/Utility$Condition;->test(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 84
    goto :goto_1

    .line 86
    :cond_3
    add-int/lit8 v7, v4, 0x1

    if-ne v6, v7, :cond_4

    .line 87
    move v4, v6

    goto :goto_1

    .line 92
    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 93
    nop

    .line 96
    .end local v6    # "next":I
    :cond_5
    iput v4, v5, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    .line 97
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v4    # "current":I
    .end local v5    # "set":Lcom/sun/mail/imap/protocol/MessageSet;
    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    const/4 v1, 0x0

    return-object v1

    .line 103
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/MessageSet;

    return-object v1
.end method

.method public static toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;
    .locals 1
    .param p0, "msgs"    # [Ljavax/mail/Message;
    .param p1, "cond"    # Lcom/sun/mail/imap/Utility$Condition;

    .line 130
    invoke-virtual {p0}, [Ljavax/mail/Message;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [Ljavax/mail/Message;

    .line 131
    new-instance v0, Lcom/sun/mail/imap/Utility$1;

    invoke-direct {v0}, Lcom/sun/mail/imap/Utility$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 138
    invoke-static {p0, p1}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public static toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 11
    .param p0, "msgs"    # [Ljavax/mail/Message;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UIDSet;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 154
    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 155
    .local v3, "msg":Lcom/sun/mail/imap/IMAPMessage;
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    goto :goto_2

    .line 158
    :cond_0
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    .line 160
    .local v4, "current":J
    new-instance v6, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v6}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 161
    .local v6, "set":Lcom/sun/mail/imap/protocol/UIDSet;
    iput-wide v4, v6, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 164
    :goto_1
    add-int/lit8 v2, v2, 0x1

    array-length v7, p0

    if-ge v2, v7, :cond_3

    .line 166
    aget-object v7, p0, v2

    move-object v3, v7

    check-cast v3, Lcom/sun/mail/imap/IMAPMessage;

    .line 168
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v7

    .line 172
    .local v7, "next":J
    const-wide/16 v9, 0x1

    add-long/2addr v9, v4

    cmp-long v9, v7, v9

    if-nez v9, :cond_2

    .line 173
    move-wide v4, v7

    goto :goto_1

    .line 178
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 179
    nop

    .line 182
    .end local v7    # "next":J
    :cond_3
    iput-wide v4, v6, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 183
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v4    # "current":J
    .end local v6    # "set":Lcom/sun/mail/imap/protocol/UIDSet;
    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    .end local v3    # "msg":Lcom/sun/mail/imap/IMAPMessage;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 189
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object v1
.end method
