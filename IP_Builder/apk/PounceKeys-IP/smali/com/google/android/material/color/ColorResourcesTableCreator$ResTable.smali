.class Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResTable"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0xcs


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final packageChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final packageCount:I

.field private final stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;>;)V"
        }
    .end annotation

    .line 134
    .local p1, "colorResourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    .line 135
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageCount:I

    .line 136
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    .line 137
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 139
    .local v2, "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$400()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    iget-object v3, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-direct {v4, v5, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;-><init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    .end local v2    # "colorResources":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;"
    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->getOverallSize()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    .line 143
    return-void
.end method

.method private getOverallSize()I
    .locals 4

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "packageChunkSize":I
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    .line 157
    .local v2, "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    invoke-virtual {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 158
    .end local v2    # "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    goto :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 147
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageCount:I

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->stringPool:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->packageChunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;

    .line 150
    .local v1, "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    invoke-virtual {v1, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 151
    .end local v1    # "packageChunk":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method
