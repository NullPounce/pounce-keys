.class Ljavax/mail/internet/InternetHeaders$MatchEnum;
.super Ljava/lang/Object;
.source "InternetHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchEnum"
.end annotation


# instance fields
.field private e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljavax/mail/internet/InternetHeaders$InternetHeader;",
            ">;"
        }
    .end annotation
.end field

.field private match:Z

.field private names:[Ljava/lang/String;

.field private next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private want_line:Z


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
    .locals 1
    .param p2, "n"    # [Ljava/lang/String;
    .param p3, "m"    # Z
    .param p4, "l"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetHeaders$InternetHeader;",
            ">;[",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 160
    .local p1, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetHeaders$InternetHeader;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    .line 162
    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    .line 163
    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    .line 164
    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->want_line:Z

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 166
    return-void
.end method

.method private nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .locals 4

    .line 203
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 204
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 207
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 208
    goto :goto_0

    .line 211
    :cond_1
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 212
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1

    .line 215
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 216
    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-boolean v2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-eqz v2, :cond_0

    .line 218
    return-object v0

    .line 215
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 227
    .end local v1    # "i":I
    :cond_5
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-nez v1, :cond_6

    .line 228
    return-object v0

    .line 229
    .end local v0    # "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    :cond_6
    goto :goto_0

    .line 230
    :cond_7
    return-object v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 174
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 176
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    .line 183
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 186
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 190
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 191
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->want_line:Z

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    return-object v1

    .line 194
    :cond_1
    new-instance v1, Ljavax/mail/Header;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 187
    .end local v0    # "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more headers"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
