.class public abstract Ljavax/mail/search/StringTerm;
.super Ljavax/mail/search/SearchTerm;
.source "StringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x11ae4e90f062d98dL


# instance fields
.field protected ignoreCase:Z

.field protected pattern:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 51
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .line 61
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 62
    iput-object p1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    .line 63
    iput-boolean p2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 99
    instance-of v0, p1, Ljavax/mail/search/StringTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    return v1

    .line 101
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/StringTerm;

    .line 102
    .local v0, "st":Ljavax/mail/search/StringTerm;
    iget-boolean v2, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 103
    iget-object v2, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v2, v4, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 106
    :cond_2
    iget-object v2, v0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    iget-object v4, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-boolean v4, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-ne v2, v4, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public getIgnoreCase()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 115
    iget-boolean v0, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_0
    return v0
.end method

.method protected match(Ljava/lang/String;)Z
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 86
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 87
    iget-boolean v3, p0, Ljavax/mail/search/StringTerm;->ignoreCase:Z

    iget-object v5, p0, Ljavax/mail/search/StringTerm;->pattern:Ljava/lang/String;

    const/4 v6, 0x0

    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 87
    move-object v2, p1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x1

    return v2

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
