.class public final Ljavax/mail/search/NotTerm;
.super Ljavax/mail/search/SearchTerm;
.source "NotTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x63420cc8aadc1008L


# instance fields
.field private term:Ljavax/mail/search/SearchTerm;


# direct methods
.method public constructor <init>(Ljavax/mail/search/SearchTerm;)V
    .locals 0
    .param p1, "t"    # Ljavax/mail/search/SearchTerm;

    .line 37
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 38
    iput-object p1, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 61
    instance-of v0, p1, Ljavax/mail/search/NotTerm;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/NotTerm;

    .line 64
    .local v0, "nt":Ljavax/mail/search/NotTerm;
    iget-object v1, v0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    iget-object v2, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getTerm()Ljavax/mail/search/SearchTerm;
    .locals 1

    .line 47
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 1
    .param p1, "msg"    # Ljavax/mail/Message;

    .line 53
    iget-object v0, p0, Ljavax/mail/search/NotTerm;->term:Ljavax/mail/search/SearchTerm;

    invoke-virtual {v0, p1}, Ljavax/mail/search/SearchTerm;->match(Ljavax/mail/Message;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
