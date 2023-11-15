.class final Landroidx/core/graphics/WeightTypefaceApi14;
.super Ljava/lang/Object;
.source "WeightTypefaceApi14.java"


# static fields
.field private static final NATIVE_INSTANCE_FIELD:Ljava/lang/String; = "native_instance"

.field private static final TAG:Ljava/lang/String; = "WeightTypeface"

.field private static final sNativeInstance:Ljava/lang/reflect/Field;

.field private static final sWeightCacheLock:Ljava/lang/Object;

.field private static final sWeightTypefaceCache:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "native_instance"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 52
    .local v0, "nativeInstance":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 53
    .end local v0    # "nativeInstance":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WeightTypeface"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v1, 0x0

    move-object v0, v1

    .line 57
    .local v0, "nativeInstance":Ljava/lang/reflect/Field;
    :goto_0
    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sNativeInstance:Ljava/lang/reflect/Field;

    .line 71
    .end local v0    # "nativeInstance":Ljava/lang/reflect/Field;
    new-instance v0, Landroidx/collection/LongSparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static createWeightStyle(Landroidx/core/graphics/TypefaceCompatBaseImpl;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 8
    .param p0, "compat"    # Landroidx/core/graphics/TypefaceCompatBaseImpl;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Landroid/graphics/Typeface;
    .param p3, "weight"    # I
    .param p4, "italic"    # Z

    .line 81
    invoke-static {}, Landroidx/core/graphics/WeightTypefaceApi14;->isPrivateApiAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    shl-int/lit8 v0, p3, 0x1

    or-int/2addr v0, p4

    .line 88
    .local v0, "key":I
    sget-object v1, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    invoke-static {p2}, Landroidx/core/graphics/WeightTypefaceApi14;->getNativeInstance(Landroid/graphics/Typeface;)J

    move-result-wide v2

    .line 90
    .local v2, "baseNativeInstance":J
    sget-object v4, Landroidx/core/graphics/WeightTypefaceApi14;->sWeightTypefaceCache:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 91
    .local v5, "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v5, :cond_1

    .line 92
    new-instance v6, Landroid/util/SparseArray;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    move-object v5, v6

    .line 93
    invoke-virtual {v4, v2, v3, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 96
    .local v4, "typeface":Landroid/graphics/Typeface;
    if-eqz v4, :cond_2

    .line 97
    monitor-exit v1

    return-object v4

    .line 101
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi14;->getBestFontFromFamily(Landroidx/core/graphics/TypefaceCompatBaseImpl;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    .line 102
    .restart local v4    # "typeface":Landroid/graphics/Typeface;
    if-nez v4, :cond_3

    .line 103
    invoke-static {p2, p3, p4}, Landroidx/core/graphics/WeightTypefaceApi14;->platformTypefaceCreate(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v6

    move-object v4, v6

    .line 105
    :cond_3
    invoke-virtual {v5, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    .end local v2    # "baseNativeInstance":J
    .end local v5    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v1

    .line 107
    return-object v4

    .line 106
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getBestFontFromFamily(Landroidx/core/graphics/TypefaceCompatBaseImpl;Landroid/content/Context;Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "compat"    # Landroidx/core/graphics/TypefaceCompatBaseImpl;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # Landroid/graphics/Typeface;
    .param p3, "weight"    # I
    .param p4, "italic"    # Z

    .line 135
    nop

    .line 136
    invoke-virtual {p0, p2}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->getFontFamily(Landroid/graphics/Typeface;)Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-result-object v6

    .line 137
    .local v6, "family":Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    if-nez v6, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_0
    nop

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static getNativeInstance(Landroid/graphics/Typeface;)J
    .locals 3
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 147
    :try_start_0
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sNativeInstance:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 148
    .local v0, "num":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 149
    .end local v0    # "num":Ljava/lang/Number;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static isPrivateApiAvailable()Z
    .locals 1

    .line 64
    sget-object v0, Landroidx/core/graphics/WeightTypefaceApi14;->sNativeInstance:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static platformTypefaceCreate(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "base"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 111
    const/16 v0, 0x258

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 112
    .local v0, "isBold":Z
    :goto_0
    const/4 v1, 0x0

    .line 113
    .local v1, "style":I
    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 115
    const/4 v1, 0x0

    goto :goto_1

    .line 116
    :cond_1
    if-nez v0, :cond_2

    .line 118
    const/4 v1, 0x2

    goto :goto_1

    .line 119
    :cond_2
    if-nez p2, :cond_3

    .line 121
    const/4 v1, 0x1

    goto :goto_1

    .line 124
    :cond_3
    const/4 v1, 0x3

    .line 126
    :goto_1
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2
.end method
