.class public final Lcom/google/android/material/color/utilities/TonalPalette;
.super Ljava/lang/Object;
.source "TonalPalette.java"


# instance fields
.field cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field chroma:D

.field hue:D


# direct methods
.method private constructor <init>(DD)V
    .locals 1
    .param p1, "hue"    # D
    .param p3, "chroma"    # D

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    .line 61
    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    .line 62
    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    .line 63
    return-void
.end method

.method public static final fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "hue"    # D
    .param p2, "chroma"    # D

    .line 56
    new-instance v0, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/TonalPalette;-><init>(DD)V

    return-object v0
.end method

.method public static final fromInt(I)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 5
    .param p0, "argb"    # I

    .line 44
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 45
    .local v0, "hct":Lcom/google/android/material/color/utilities/Hct;
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public tone(I)I
    .locals 7
    .param p1, "tone"    # I

    .line 74
    iget-object v0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 75
    .local v0, "color":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 76
    iget-wide v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iget-wide v3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    int-to-double v5, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->cache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
