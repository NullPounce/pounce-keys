.class Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringPoolChunk"
.end annotation


# static fields
.field private static final FLAG_UTF8:I = 0x100

.field private static final HEADER_SIZE:S = 0x1cs

.field private static final STYLED_SPAN_LIST_END:I = -0x1


# instance fields
.field private final chunkSize:I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final stringCount:I

.field private final stringIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final stringsPaddingSize:I

.field private final stringsStart:I

.field private final styledSpanCount:I

.field private final styledSpanIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final styledSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private final styledSpansStart:I

.field private final utf8Encode:Z


# direct methods
.method varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 10
    .param p1, "utf8"    # Z
    .param p2, "rawStrings"    # [Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    .line 220
    iput-boolean p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "stringOffset":I
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .line 223
    .local v4, "string":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->processString(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 224
    .local v5, "processedString":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;>;"
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [B

    array-length v6, v6

    add-int/2addr v0, v6

    .line 226
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "processedString":Landroid/util/Pair;, "Landroid/util/Pair<[BLjava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_0
    const/4 v1, 0x0

    .line 230
    .local v1, "styledSpanOffset":I
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 231
    .local v4, "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;

    .line 232
    .local v6, "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    iget-object v7, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {v6}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v0, v7

    .line 234
    iget-object v7, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->access$700(Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;)[B

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .end local v6    # "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    goto :goto_2

    .line 236
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v1, v5

    .line 239
    .end local v4    # "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    goto :goto_1

    .line 242
    :cond_2
    rem-int/lit8 v3, v0, 0x4

    .line 243
    .local v3, "stringOffsetResidue":I
    if-nez v3, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    rsub-int/lit8 v4, v3, 0x4

    :goto_3
    iput v4, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    .line 244
    iget-object v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    .line 245
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, p2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    .line 247
    iget-object v6, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, p2

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    if-lez v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    move v6, v2

    .line 248
    .local v6, "hasStyledSpans":Z
    :goto_4
    if-nez v6, :cond_5

    .line 250
    iget-object v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 251
    iget-object v8, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 255
    :cond_5
    mul-int/lit8 v5, v5, 0x4

    const/16 v8, 0x1c

    add-int/2addr v5, v8

    iget-object v9, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    .line 258
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v5, v9

    iput v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    .line 259
    add-int/2addr v4, v0

    .line 260
    .local v4, "stringsSize":I
    if-eqz v6, :cond_6

    add-int v9, v5, v4

    goto :goto_5

    :cond_6
    move v9, v2

    :goto_5
    iput v9, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    .line 261
    add-int/2addr v5, v4

    if-eqz v6, :cond_7

    move v2, v1

    :cond_7
    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    .line 262
    new-instance v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-direct {v2, v7, v8, v5}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 263
    return-void
.end method

.method varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "rawStrings"    # [Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private processString(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .param p1, "rawString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;",
            ">;>;"
        }
    .end annotation

    .line 298
    new-instance v0, Landroid/util/Pair;

    .line 299
    iget-boolean v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$800(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$900(Ljava/lang/String;)[B

    move-result-object v1

    .line 300
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    return-object v0
.end method


# virtual methods
.method getChunkSize()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->chunkSize:I

    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 267
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 268
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 269
    iget-boolean v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->utf8Encode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 270
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsStart:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 271
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpansStart:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 272
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 273
    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 274
    .end local v1    # "index":Ljava/lang/Integer;
    goto :goto_1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpanIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 276
    .restart local v1    # "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 277
    .end local v1    # "index":Ljava/lang/Integer;
    goto :goto_2

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 279
    .local v1, "string":[B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 280
    .end local v1    # "string":[B
    goto :goto_3

    .line 281
    :cond_3
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->stringsPaddingSize:I

    if-lez v0, :cond_4

    .line 282
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->styledSpans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 285
    .local v1, "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;

    .line 286
    .local v3, "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    invoke-virtual {v3, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 287
    .end local v3    # "styledSpan":Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;
    goto :goto_5

    .line 288
    :cond_5
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 289
    .end local v1    # "styledSpanList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;>;"
    goto :goto_4

    .line 290
    :cond_6
    return-void
.end method
