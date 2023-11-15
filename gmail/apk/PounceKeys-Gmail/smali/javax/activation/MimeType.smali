.class public Ljavax/activation/MimeType;
.super Ljava/lang/Object;
.source "MimeType.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field private parameters:Ljavax/activation/MimeTypeParameterList;

.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "application"

    iput-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 36
    const-string v0, "*"

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 37
    new-instance v0, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v0}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawdata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p1}, Ljavax/activation/MimeType;->parse(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "sub"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p1}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p2}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 74
    new-instance v0, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v0}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Sub type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Primary type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isTokenChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 291
    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidToken(Ljava/lang/String;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 299
    .local v0, "len":I
    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 300
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 301
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 302
    .local v3, "c":C
    invoke-static {v3}, Ljavax/activation/MimeType;->isTokenChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    return v1

    .line 300
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 308
    :cond_2
    return v1
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4
    .param p1, "rawdata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 81
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 82
    .local v0, "slashIndex":I
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 83
    .local v1, "semIndex":I
    const-string v2, "Unable to find a sub type."

    if-gez v0, :cond_1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v3, Ljavax/activation/MimeTypeParseException;

    invoke-direct {v3, v2}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :cond_1
    :goto_0
    if-gez v0, :cond_3

    if-gez v1, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    new-instance v3, Ljavax/activation/MimeTypeParseException;

    invoke-direct {v3, v2}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_3
    :goto_1
    const/4 v3, 0x0

    if-ltz v0, :cond_4

    if-gez v1, :cond_4

    .line 93
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 95
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 97
    new-instance v2, Ljavax/activation/MimeTypeParameterList;

    invoke-direct {v2}, Ljavax/activation/MimeTypeParameterList;-><init>()V

    iput-object v2, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    goto :goto_2

    .line 98
    :cond_4
    if-ge v0, v1, :cond_7

    .line 100
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 102
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 104
    new-instance v2, Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParameterList;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    .line 114
    :goto_2
    iget-object v2, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 118
    iget-object v2, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    return-void

    .line 119
    :cond_5
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "Sub type is invalid."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_6
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "Primary type is invalid."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_7
    new-instance v3, Ljavax/activation/MimeTypeParseException;

    invoke-direct {v3, v2}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getBaseType()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v0, p1}, Ljavax/activation/MimeTypeParameterList;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljavax/activation/MimeTypeParameterList;
    .locals 1

    .line 174
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    return-object v0
.end method

.method public getPrimaryType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 1
    .param p1, "rawdata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 248
    new-instance v0, Ljavax/activation/MimeType;

    invoke-direct {v0, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result v0

    return v0
.end method

.method public match(Ljavax/activation/MimeType;)Z
    .locals 2
    .param p1, "type"    # Ljavax/activation/MimeType;

    .line 233
    iget-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/activation/MimeType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 234
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p1}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Ljavax/activation/MimeType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 279
    :try_start_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/activation/MimeType;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    nop

    .line 283
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljavax/activation/MimeTypeParseException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/activation/MimeTypeParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v0, p1}, Ljavax/activation/MimeTypeParameterList;->remove(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v0, p1, p2}, Ljavax/activation/MimeTypeParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setPrimaryType(Ljava/lang/String;)V
    .locals 2
    .param p1, "primary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->primaryType:Ljava/lang/String;

    .line 143
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Primary type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "sub"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljavax/activation/MimeType;->isValidToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/MimeType;->subType:Ljava/lang/String;

    .line 166
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljavax/activation/MimeTypeParseException;

    const-string v1, "Sub type is invalid."

    invoke-direct {v0, v1}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/activation/MimeType;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/activation/MimeType;->parameters:Ljavax/activation/MimeTypeParameterList;

    invoke-virtual {v1}, Ljavax/activation/MimeTypeParameterList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    invoke-virtual {p0}, Ljavax/activation/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 262
    invoke-interface {p1}, Ljava/io/ObjectOutput;->flush()V

    .line 263
    return-void
.end method
