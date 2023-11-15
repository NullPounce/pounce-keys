.class public Ljavax/mail/internet/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"


# instance fields
.field private list:Ljavax/mail/internet/ParameterList;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 70
    .local v1, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    const-string v3, "In Content-Type string <"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 74
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    int-to-char v2, v2

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_2

    .line 83
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 88
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->getRemainder()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "rem":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 93
    new-instance v3, Ljavax/mail/internet/ParameterList;

    invoke-direct {v3, v2}, Ljavax/mail/internet/ParameterList;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 94
    :cond_0
    return-void

    .line 85
    .end local v2    # "rem":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, expected MIME subtype, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_2
    new-instance v2, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, expected \'/\', got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_3
    new-instance v2, Ljavax/mail/internet/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">, expected MIME type, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 73
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;
    .param p3, "list"    # Ljavax/mail/internet/ParameterList;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 54
    return-void
.end method


# virtual methods
.method public getBaseType()Ljava/lang/String;
    .locals 2

    .line 120
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterList()Ljavax/mail/internet/ParameterList;
    .locals 1

    .line 146
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    return-object v0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 269
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ContentType;->match(Ljavax/mail/internet/ContentType;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "pex":Ljavax/mail/internet/ParseException;
    const/4 v1, 0x0

    return v1
.end method

.method public match(Ljavax/mail/internet/ContentType;)Z
    .locals 5
    .param p1, "cType"    # Ljavax/mail/internet/ContentType;

    .line 231
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 233
    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getPrimaryType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p1}, Ljavax/mail/internet/ContentType;->getSubType()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "sType":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "*"

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    .line 240
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    :cond_3
    return v3

    .line 244
    :cond_4
    iget-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    if-eqz v2, :cond_7

    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    nop

    .line 244
    :goto_0
    return v1

    .line 234
    .end local v0    # "sType":Ljava/lang/String;
    :cond_8
    :goto_1
    return v1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 176
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setParameterList(Ljavax/mail/internet/ParameterList;)V
    .locals 0
    .param p1, "list"    # Ljavax/mail/internet/ParameterList;

    .line 184
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    .line 185
    return-void
.end method

.method public setPrimaryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryType"    # Ljava/lang/String;

    .line 154
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "subType"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 196
    iget-object v0, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->primaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljavax/mail/internet/ContentType;->subType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Ljavax/mail/internet/ContentType;->list:Ljavax/mail/internet/ParameterList;

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ParameterList;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_0
    const-string v0, ""

    return-object v0
.end method
