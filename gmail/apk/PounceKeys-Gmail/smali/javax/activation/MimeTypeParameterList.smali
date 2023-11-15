.class public Ljavax/activation/MimeTypeParameterList;
.super Ljava/lang/Object;
.source "MimeTypeParameterList.java"


# static fields
.field private static final TSPECIALS:Ljava/lang/String; = "()<>@,;:/[]?=\\\""


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    .line 51
    invoke-virtual {p0, p1}, Ljavax/activation/MimeTypeParameterList;->parse(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static isTokenChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 250
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

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    .line 271
    .local v0, "needsQuotes":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 272
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "i":I
    :cond_0
    if-eqz v0, :cond_4

    .line 277
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 278
    .local v2, "buffer":Ljava/lang/StringBuffer;
    int-to-double v3, v1

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 281
    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 285
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 286
    .local v5, "c":C
    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1

    if-ne v5, v3, :cond_2

    .line 287
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 292
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 296
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    :cond_4
    return-object p0
.end method

.method private static skipWhiteSpace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "rawdata"    # Ljava/lang/String;
    .param p1, "i"    # I

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 259
    .local v0, "length":I
    :goto_0
    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return p1
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 306
    .local v0, "valueLength":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "escaped":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 311
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 312
    .local v4, "currentChar":C
    if-nez v2, :cond_0

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_0

    .line 313
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 314
    :cond_0
    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 316
    const/4 v2, 0x0

    goto :goto_1

    .line 318
    :cond_1
    const/4 v2, 0x1

    .line 310
    .end local v4    # "currentChar":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNames()Ljava/util/Enumeration;
    .locals 1

    .line 221
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 181
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected parse(Ljava/lang/String;)V
    .locals 8
    .param p1, "parameterList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/activation/MimeTypeParseException;
        }
    .end annotation

    .line 61
    if-nez p1, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 65
    .local v0, "length":I
    if-gtz v0, :cond_1

    .line 66
    return-void

    .line 70
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "c":C
    const/16 v4, 0x3b

    if-ne v2, v4, :cond_e

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 83
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 86
    if-lt v1, v0, :cond_2

    .line 87
    return-void

    .line 90
    :cond_2
    move v2, v1

    .line 91
    .local v2, "lastIndex":I
    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "name":Ljava/lang/String;
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 100
    if-ge v1, v0, :cond_d

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_d

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 107
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    .line 109
    if-ge v1, v0, :cond_c

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 115
    const/16 v5, 0x22

    if-ne v3, v5, :cond_9

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    const-string v6, "Encountered unterminated quoted parameter value."

    if-ge v1, v0, :cond_8

    .line 122
    move v2, v1

    .line 125
    :goto_2
    if-ge v1, v0, :cond_6

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 127
    if-ne v3, v5, :cond_4

    .line 128
    goto :goto_3

    .line 129
    :cond_4
    const/16 v7, 0x5c

    if-ne v3, v7, :cond_5

    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 135
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 137
    :cond_6
    :goto_3
    if-ne v3, v5, :cond_7

    .line 141
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/activation/MimeTypeParameterList;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 138
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 119
    :cond_8
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    :cond_9
    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 147
    move v2, v1

    .line 148
    :goto_4
    if-ge v1, v0, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljavax/activation/MimeTypeParameterList;->isTokenChar(C)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 150
    :cond_a
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5    # "value":Ljava/lang/String;
    :goto_5
    iget-object v6, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v6, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v2    # "lastIndex":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    invoke-static {p1, v1}, Ljavax/activation/MimeTypeParameterList;->skipWhiteSpace(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 153
    .restart local v2    # "lastIndex":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_b
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected character encountered at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_c
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find a value for parameter named "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_d
    new-instance v5, Ljavax/activation/MimeTypeParseException;

    const-string v6, "Couldn\'t find the \'=\' that separates a parameter name from its value."

    invoke-direct {v5, v6}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    .end local v2    # "lastIndex":I
    .end local v3    # "c":C
    .end local v4    # "name":Ljava/lang/String;
    :cond_e
    if-lt v1, v0, :cond_f

    .line 164
    return-void

    .line 161
    :cond_f
    new-instance v2, Ljavax/activation/MimeTypeParseException;

    const-string v3, "More characters encountered in input than expected."

    invoke-direct {v2, v3}, Ljavax/activation/MimeTypeParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public size()I
    .locals 1

    .line 172
    iget-object v0, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    .line 232
    iget-object v1, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 233
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, "key":Ljava/lang/String;
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    iget-object v3, p0, Ljavax/activation/MimeTypeParameterList;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljavax/activation/MimeTypeParameterList;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
