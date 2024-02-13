.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;
.source "UIDSet.java"


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 36
    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 37
    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 10
    .param p0, "uids"    # [J

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UIDSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 61
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    .line 62
    .local v2, "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 65
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 66
    aget-wide v4, p0, v3

    add-int/lit8 v6, v3, -0x1

    aget-wide v6, p0, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 67
    goto :goto_2

    .line 65
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69
    :cond_2
    :goto_2
    add-int/lit8 v4, v3, -0x1

    aget-wide v4, p0, v4

    iput-wide v4, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v3, -0x1

    .line 60
    .end local v2    # "ms":Lcom/sun/mail/imap/protocol/UIDSet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v3    # "j":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 74
    .local v2, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object v3
.end method

.method public static parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;
    .locals 9
    .param p0, "uids"    # Ljava/lang/String;

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/UIDSet;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ",:"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 89
    .local v1, "st":Ljava/util/StringTokenizer;
    const-wide/16 v2, -0x1

    .line 90
    .local v2, "start":J
    const/4 v4, 0x0

    .line 92
    .local v4, "cur":Lcom/sun/mail/imap/protocol/UIDSet;
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 93
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, "s":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    if-eqz v4, :cond_1

    .line 96
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 98
    :cond_2
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 102
    .local v6, "n":J
    if-eqz v4, :cond_4

    .line 103
    iput-wide v6, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    goto :goto_1

    .line 105
    :cond_4
    new-instance v8, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v8, v6, v7, v6, v7}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>(JJ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 107
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "n":J
    :goto_1
    goto :goto_0

    .line 110
    :cond_5
    goto :goto_2

    .line 108
    :catch_0
    move-exception v5

    .line 111
    :goto_2
    if-eqz v4, :cond_6

    .line 112
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 114
    .local v5, "uidset":[Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sun/mail/imap/protocol/UIDSet;

    return-object v6
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .locals 7
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 203
    const-wide/16 v0, 0x0

    .line 205
    .local v0, "count":J
    if-eqz p0, :cond_0

    .line 206
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 207
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 206
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return-wide v0
.end method

.method private static size([Lcom/sun/mail/imap/protocol/UIDSet;J)J
    .locals 12
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .param p1, "uidmax"    # J

    .line 219
    const-wide/16 v0, 0x0

    .line 221
    .local v0, "count":J
    if-eqz p0, :cond_3

    .line 222
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 223
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-gez v7, :cond_0

    .line 224
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v5

    add-long/2addr v0, v5

    goto :goto_1

    .line 225
    :cond_0
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    cmp-long v7, v5, p1

    if-gtz v7, :cond_2

    .line 226
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    const-wide/16 v9, 0x1

    cmp-long v11, v7, p1

    if-gez v11, :cond_1

    .line 227
    sub-long/2addr v7, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    goto :goto_1

    .line 229
    :cond_1
    sub-long v5, p1, v5

    add-long/2addr v5, v9

    add-long/2addr v0, v5

    .line 222
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    :cond_3
    return-wide v0
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J
    .locals 10
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [J

    .line 164
    .local v0, "uids":[J
    const/4 v1, 0x0

    .line 165
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 166
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .local v5, "n":J
    :goto_1
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_1

    .line 167
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    aput-wide v5, v0, v1

    .line 166
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    move v1, v7

    goto :goto_1

    .line 165
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v5    # "n":J
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_2
    return-object v0
.end method

.method public static toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J
    .locals 10
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;
    .param p1, "uidmax"    # J

    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;J)J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [J

    .line 185
    .local v0, "uids":[J
    const/4 v1, 0x0

    .line 186
    .local v1, "i":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 187
    .local v4, "u":Lcom/sun/mail/imap/protocol/UIDSet;
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .local v5, "n":J
    :goto_1
    iget-wide v7, v4, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_2

    .line 188
    const-wide/16 v7, 0x0

    cmp-long v9, p1, v7

    if-ltz v9, :cond_1

    cmp-long v7, v5, p1

    if-lez v7, :cond_1

    .line 189
    goto :goto_2

    .line 190
    :cond_1
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "i":I
    .local v7, "i":I
    aput-wide v5, v0, v1

    .line 187
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    move v1, v7

    goto :goto_1

    .line 186
    .end local v4    # "u":Lcom/sun/mail/imap/protocol/UIDSet;
    .end local v5    # "n":J
    .end local v7    # "i":I
    .restart local v1    # "i":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_3
    return-object v0
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .locals 9
    .param p0, "uidset"    # [Lcom/sun/mail/imap/protocol/UIDSet;

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 127
    const-string v0, ""

    return-object v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v1, "s":Ljava/lang/StringBuilder;
    array-length v2, p0

    .line 135
    .local v2, "size":I
    :goto_0
    aget-object v3, p0, v0

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    .line 136
    .local v3, "start":J
    aget-object v5, p0, v0

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    .line 138
    .local v5, "end":J
    cmp-long v7, v5, v3

    if-lez v7, :cond_2

    .line 139
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 144
    if-lt v0, v2, :cond_3

    .line 145
    nop

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 147
    :cond_3
    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public size()J
    .locals 4

    .line 45
    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
