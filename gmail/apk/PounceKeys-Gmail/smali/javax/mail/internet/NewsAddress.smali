.class public Ljavax/mail/internet/NewsAddress;
.super Ljavax/mail/Address;
.source "NewsAddress.java"


# static fields
.field private static final serialVersionUID:J = -0x3a56e35f1bcbec6fL


# instance fields
.field protected host:Ljava/lang/String;

.field protected newsgroup:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "newsgroup"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/NewsAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "newsgroup"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 62
    const-string v0, "\\s+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;
    .locals 4
    .param p0, "newsgroups"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v1, "nglist":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/NewsAddress;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "ng":Ljava/lang/String;
    new-instance v3, Ljavax/mail/internet/NewsAddress;

    invoke-direct {v3, v2}, Ljavax/mail/internet/NewsAddress;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v2    # "ng":Ljava/lang/String;
    goto :goto_0

    .line 200
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/mail/internet/NewsAddress;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/mail/internet/NewsAddress;

    return-object v2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 6
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .line 162
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    check-cast v1, Ljavax/mail/internet/NewsAddress;

    .line 166
    invoke-virtual {v1}, Ljavax/mail/internet/NewsAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 168
    .local v1, "used":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 169
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 171
    aget-object v3, p0, v2

    check-cast v3, Ljavax/mail/internet/NewsAddress;

    invoke-virtual {v3}, Ljavax/mail/internet/NewsAddress;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "ng":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    const/16 v5, 0x4c

    if-le v4, v5, :cond_1

    .line 173
    const-string v4, "\r\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const/16 v1, 0x8

    .line 176
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 168
    .end local v3    # "ng":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 163
    .end local v0    # "s":Ljava/lang/StringBuilder;
    .end local v1    # "used":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .line 126
    instance-of v0, p1, Ljavax/mail/internet/NewsAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 129
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/NewsAddress;

    .line 130
    .local v0, "s":Ljavax/mail/internet/NewsAddress;
    iget-object v2, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v3, v0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_5

    iget-object v3, v0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v3, v0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v2, :cond_5

    iget-object v3, v0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 130
    :goto_0
    return v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsgroup()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "news"

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "hash":I
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 145
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_1
    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->host:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setNewsgroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "newsgroup"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Ljavax/mail/internet/NewsAddress;->newsgroup:Ljava/lang/String;

    return-object v0
.end method
