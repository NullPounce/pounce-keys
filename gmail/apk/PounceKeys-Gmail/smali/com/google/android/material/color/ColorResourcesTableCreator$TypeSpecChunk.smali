.class Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeSpecChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x10s

.field private static final SPEC_PUBLIC:I = 0x40000000


# instance fields
.field private final entryCount:I

.field private final entryFlags:[I

.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p1, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    .line 403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 404
    .local v0, "validEntryIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Short;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 405
    .local v2, "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v2    # "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    goto :goto_0

    .line 407
    :cond_0
    iget v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    .line 409
    const/4 v1, 0x0

    .local v1, "entryId":S
    :goto_1
    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    if-ge v1, v2, :cond_2

    .line 410
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v2, v1

    .line 409
    :cond_1
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_1

    .line 415
    .end local v1    # "entryId":S
    :cond_2
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v2, 0x10

    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    move-result v3

    const/16 v4, 0x202

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 417
    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    iget v2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;-><init>(Ljava/util/List;Ljava/util/Set;I)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    .line 418
    return-void
.end method

.method private getChunkSize()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    return v0
.end method


# virtual methods
.method getChunkSizeWithTypeChunk()I
    .locals 2

    .line 431
    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->getChunkSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 422
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1300()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 423
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 424
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->entryFlags:[I

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 425
    .local v3, "entryFlag":I
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 424
    .end local v3    # "entryFlag":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->typeChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 428
    return-void
.end method
