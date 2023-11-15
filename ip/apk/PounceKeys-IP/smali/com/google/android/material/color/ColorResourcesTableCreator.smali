.class final Lcom/google/android/material/color/ColorResourcesTableCreator;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResEntry;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringStyledSpan;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;,
        Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;
    }
.end annotation


# static fields
.field private static final ANDROID_PACKAGE_ID:B = 0x1t

.field private static final ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private static final APPLICATION_PACKAGE_ID:B = 0x7ft

.field private static final COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_TYPE_PACKAGE:S = 0x200s

.field private static final HEADER_TYPE_RES_TABLE:S = 0x2s

.field private static final HEADER_TYPE_STRING_POOL:S = 0x1s

.field private static final HEADER_TYPE_TYPE:S = 0x201s

.field private static final HEADER_TYPE_TYPE_SPEC:S = 0x202s

.field private static final RESOURCE_TYPE_NAME_COLOR:Ljava/lang/String; = "color"

.field private static typeIdColor:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    const/4 v1, 0x1

    const-string v2, "android"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 59
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$1;

    invoke-direct {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1200(C)[B
    .locals 1
    .param p0, "x0"    # C

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()B
    .locals 1

    .line 40
    sget-byte v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    return v0
.end method

.method static synthetic access$400()Ljava/util/Comparator;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/material/color/ColorResourcesTableCreator;->COLOR_RESOURCE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$500(I)[B
    .locals 1
    .param p0, "x0"    # I

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->intToByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(S)[B
    .locals 1
    .param p0, "x0"    # S

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArrayUtf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 40
    invoke-static {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static charToByteArray(C)[B
    .locals 3
    .param p0, "value"    # C

    .line 582
    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method static create(Landroid/content/Context;Ljava/util/Map;)[B
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    .local p1, "colorMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 71
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-direct {v0, v2, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;-><init>(ILjava/lang/String;)V

    .line 74
    .local v0, "applicationPackageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v1, "colorResourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    const/4 v3, 0x0

    .line 76
    .local v3, "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 77
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v6, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 79
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;-><init>(ILjava/lang/String;I)V

    move-object v3, v6

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 84
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v6

    .line 85
    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 93
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 94
    sget-object v6, Lcom/google/android/material/color/ColorResourcesTableCreator;->ANDROID_PACKAGE_INFO:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .local v6, "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    goto :goto_1

    .line 95
    .end local v6    # "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    :cond_0
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    if-ne v6, v2, :cond_2

    .line 96
    move-object v6, v0

    .line 101
    .restart local v6    # "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "packageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    goto :goto_0

    .line 98
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not supported with unknown package id: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$300(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non color resource found: name="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 88
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", typeId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 90
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$200(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)B

    move-result v2

    sput-byte v2, Lcom/google/android/material/color/ColorResourcesTableCreator;->typeIdColor:B

    .line 110
    if-eqz v2, :cond_5

    .line 113
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;

    invoke-direct {v4, v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResTable;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    .line 115
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 111
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "No color resources found for harmonization."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    .end local v0    # "applicationPackageInfo":Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
    .end local v1    # "colorResourceMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List<Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;>;>;"
    .end local v3    # "colorResource":Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No color resources provided for harmonization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 588
    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private static shortToByteArray(S)[B
    .locals 3
    .param p0, "value"    # S

    .line 576
    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 598
    .local v0, "chars":[C
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 599
    .local v1, "bytes":[B
    array-length v2, v0

    int-to-short v2, v2

    invoke-static {v2}, Lcom/google/android/material/color/ColorResourcesTableCreator;->shortToByteArray(S)[B

    move-result-object v2

    .line 600
    .local v2, "lengthBytes":[B
    const/4 v3, 0x0

    aget-byte v4, v2, v3

    aput-byte v4, v1, v3

    .line 601
    const/4 v4, 0x1

    aget-byte v5, v2, v4

    aput-byte v5, v1, v4

    .line 602
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 603
    aget-char v6, v0, v5

    invoke-static {v6}, Lcom/google/android/material/color/ColorResourcesTableCreator;->charToByteArray(C)[B

    move-result-object v6

    .line 604
    .local v6, "charBytes":[B
    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v8, v6, v3

    aput-byte v8, v1, v7

    .line 605
    mul-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x3

    aget-byte v8, v6, v4

    aput-byte v8, v1, v7

    .line 602
    .end local v6    # "charBytes":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 607
    .end local v5    # "i":I
    :cond_0
    array-length v5, v1

    add-int/lit8 v5, v5, -0x2

    aput-byte v3, v1, v5

    .line 608
    array-length v5, v1

    sub-int/2addr v5, v4

    aput-byte v3, v1, v5

    .line 609
    return-object v1
.end method

.method private static stringToByteArrayUtf8(Ljava/lang/String;)[B
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 613
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 614
    .local v0, "rawBytes":[B
    array-length v1, v0

    int-to-byte v1, v1

    .line 615
    .local v1, "stringLength":B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    .line 616
    .local v2, "bytes":[B
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 617
    const/4 v3, 0x1

    aput-byte v1, v2, v3

    aput-byte v1, v2, v4

    .line 618
    array-length v5, v2

    sub-int/2addr v5, v3

    aput-byte v4, v2, v5

    .line 619
    return-object v2
.end method
