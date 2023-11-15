.class Lcom/sun/activation/registries/LineTokenizer;
.super Ljava/lang/Object;
.source "MimeTypeFile.java"


# static fields
.field private static final singles:Ljava/lang/String; = "="


# instance fields
.field private currentPosition:I

.field private maxPosition:I

.field private stack:Ljava/util/Vector;

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 214
    iput-object p1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    .line 216
    return-void
.end method

.method private skipWhiteSpace()V
    .locals 2

    .line 222
    nop

    :goto_0
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    .line 223
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 236
    return v1

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    .line 238
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextToken()Ljava/lang/String;
    .locals 8

    .line 249
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 250
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 253
    return-object v1

    .line 255
    .end local v1    # "t":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    .line 257
    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v1, v2, :cond_a

    .line 261
    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 262
    .local v1, "start":I
    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 263
    .local v2, "c":C
    const/16 v3, 0x22

    if-ne v2, v3, :cond_7

    .line 264
    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 265
    const/4 v4, 0x0

    .line 266
    .local v4, "filter":Z
    :cond_1
    :goto_0
    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v6, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v5, v6, :cond_6

    .line 267
    iget-object v6, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 268
    const/16 v5, 0x5c

    if-ne v2, v5, :cond_2

    .line 269
    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 270
    const/4 v4, 0x1

    goto :goto_0

    .line 271
    :cond_2
    if-ne v2, v3, :cond_1

    .line 274
    if-eqz v4, :cond_5

    .line 275
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 276
    .local v3, "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v6, v1, 0x1

    .local v6, "i":I
    :goto_1
    iget v7, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_4

    .line 277
    iget-object v7, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 278
    if-eq v2, v5, :cond_3

    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 281
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "s":Ljava/lang/String;
    goto :goto_2

    .line 283
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 284
    .restart local v3    # "s":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 287
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "filter":Z
    :cond_6
    goto :goto_4

    :cond_7
    const-string v3, "="

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_8

    .line 288
    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_4

    .line 290
    :cond_8
    :goto_3
    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v4, v5, :cond_9

    iget-object v5, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    .line 291
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_9

    iget-object v4, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    .line 292
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_9

    .line 293
    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_3

    .line 296
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 258
    .end local v1    # "start":I
    .end local v2    # "c":C
    :cond_a
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public pushToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 301
    return-void
.end method
