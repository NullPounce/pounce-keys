.class public final Lcom/google/android/material/color/utilities/Score;
.super Ljava/lang/Object;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/Score$ScoredComparator;
    }
.end annotation


# static fields
.field private static final CUTOFF_CHROMA:D = 15.0

.field private static final CUTOFF_EXCITED_PROPORTION:D = 0.01

.field private static final CUTOFF_TONE:D = 10.0

.field private static final TARGET_CHROMA:D = 48.0

.field private static final WEIGHT_CHROMA_ABOVE:D = 0.3

.field private static final WEIGHT_CHROMA_BELOW:D = 0.1

.field private static final WEIGHT_PROPORTION:D = 0.7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static filter(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/color/utilities/Cam16;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 161
    .local p0, "colorsToExcitedProportion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .local p1, "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 164
    .local v3, "color":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Cam16;

    .line 165
    .local v4, "cam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 167
    .local v5, "proportion":D
    invoke-virtual {v4}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v7

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    .line 168
    invoke-static {v3}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_0

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v7, v5, v7

    if-ltz v7, :cond_0

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v3    # "color":I
    .end local v4    # "cam":Lcom/google/android/material/color/utilities/Cam16;
    .end local v5    # "proportion":D
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    return-object v0
.end method

.method public static score(Ljava/util/Map;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 64
    .local p0, "colorsToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    .line 65
    .local v0, "populationSum":D
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v0, v4

    .line 67
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_0

    .line 72
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v2, "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    const/16 v3, 0x169

    new-array v3, v3, [D

    .line 74
    .local v3, "hueProportions":[D
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 75
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 76
    .local v6, "color":I
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    .line 77
    .local v7, "population":D
    div-double v9, v7, v0

    .line 79
    .local v9, "proportion":D
    invoke-static {v6}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v11

    .line 80
    .local v11, "cam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v11}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    .line 83
    .local v12, "hue":I
    aget-wide v13, v3, v12

    add-double/2addr v13, v9

    aput-wide v13, v3, v12

    .line 84
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "color":I
    .end local v7    # "population":D
    .end local v9    # "proportion":D
    .end local v11    # "cam":Lcom/google/android/material/color/utilities/Cam16;
    .end local v12    # "hue":I
    goto :goto_1

    .line 88
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v4, "colorsToExcitedProportion":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 90
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 91
    .local v7, "color":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/color/utilities/Cam16;

    .line 92
    .local v8, "cam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-virtual {v8}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    .line 94
    .local v9, "hue":I
    const-wide/16 v10, 0x0

    .line 95
    .local v10, "excitedProportion":D
    add-int/lit8 v12, v9, -0xf

    .local v12, "j":I
    :goto_3
    add-int/lit8 v13, v9, 0xf

    if-ge v12, v13, :cond_2

    .line 96
    invoke-static {v12}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v13

    .line 97
    .local v13, "neighborHue":I
    aget-wide v14, v3, v13

    add-double/2addr v10, v14

    .line 95
    .end local v13    # "neighborHue":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 100
    .end local v12    # "j":I
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v7    # "color":I
    .end local v8    # "cam":Lcom/google/android/material/color/utilities/Cam16;
    .end local v9    # "hue":I
    .end local v10    # "excitedProportion":D
    goto :goto_2

    .line 104
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v5, "colorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 106
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 107
    .local v8, "color":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/color/utilities/Cam16;

    .line 109
    .local v9, "cam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 110
    .local v10, "proportion":D
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v10

    const-wide v14, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v14

    .line 113
    .local v12, "proportionScore":D
    invoke-virtual {v9}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v14

    const-wide/high16 v16, 0x4048000000000000L    # 48.0

    cmpg-double v14, v14, v16

    if-gez v14, :cond_4

    const-wide v14, 0x3fb999999999999aL    # 0.1

    goto :goto_5

    :cond_4
    const-wide v14, 0x3fd3333333333333L    # 0.3

    .line 114
    .local v14, "chromaWeight":D
    :goto_5
    invoke-virtual {v9}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v18

    sub-double v18, v18, v16

    mul-double v18, v18, v14

    .line 116
    .local v18, "chromaScore":D
    add-double v16, v12, v18

    .line 117
    .local v16, "score":D
    move-wide/from16 v20, v0

    .end local v0    # "populationSum":D
    .local v20, "populationSum":D
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v8    # "color":I
    .end local v9    # "cam":Lcom/google/android/material/color/utilities/Cam16;
    .end local v10    # "proportion":D
    .end local v12    # "proportionScore":D
    .end local v14    # "chromaWeight":D
    .end local v16    # "score":D
    .end local v18    # "chromaScore":D
    move-wide/from16 v0, v20

    goto :goto_4

    .line 122
    .end local v20    # "populationSum":D
    .restart local v0    # "populationSum":D
    :cond_5
    move-wide/from16 v20, v0

    .end local v0    # "populationSum":D
    .restart local v20    # "populationSum":D
    invoke-static {v4, v2}, Lcom/google/android/material/color/utilities/Score;->filter(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 123
    .local v0, "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v1, "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 125
    .local v7, "color":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v7    # "color":I
    goto :goto_6

    .line 130
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 131
    .local v6, "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;>;"
    new-instance v7, Lcom/google/android/material/color/utilities/Score$ScoredComparator;

    invoke-direct {v7}, Lcom/google/android/material/color/utilities/Score$ScoredComparator;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v7, "colorsByScoreDescending":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 134
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 135
    .local v10, "color":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/color/utilities/Cam16;

    .line 136
    .restart local v11    # "cam":Lcom/google/android/material/color/utilities/Cam16;
    const/4 v12, 0x0

    .line 138
    .local v12, "duplicateHue":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 139
    .local v14, "alreadyChosenColor":Ljava/lang/Integer;
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/material/color/utilities/Cam16;

    .line 140
    .local v15, "alreadyChosenCam":Lcom/google/android/material/color/utilities/Cam16;
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .local v16, "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v17, "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    invoke-virtual {v11}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v3    # "hueProportions":[D
    .local v18, "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .local v19, "hueProportions":[D
    invoke-virtual {v15}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    .line 141
    const/4 v12, 0x1

    .line 142
    goto :goto_9

    .line 144
    .end local v14    # "alreadyChosenColor":Ljava/lang/Integer;
    .end local v15    # "alreadyChosenCam":Lcom/google/android/material/color/utilities/Cam16;
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_8

    .line 138
    .end local v16    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v18    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v19    # "hueProportions":[D
    .restart local v0    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v2    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .restart local v3    # "hueProportions":[D
    :cond_8
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 146
    .end local v0    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v3    # "hueProportions":[D
    .restart local v16    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v18    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .restart local v19    # "hueProportions":[D
    :goto_9
    if-eqz v12, :cond_9

    .line 147
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto :goto_7

    .line 149
    :cond_9
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v10    # "color":I
    .end local v11    # "cam":Lcom/google/android/material/color/utilities/Cam16;
    .end local v12    # "duplicateHue":Z
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_7

    .line 153
    .end local v16    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v18    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v19    # "hueProportions":[D
    .restart local v0    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v2    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .restart local v3    # "hueProportions":[D
    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v0    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .end local v2    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .end local v3    # "hueProportions":[D
    .restart local v16    # "filteredColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "filteredColorsToScore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Double;>;"
    .restart local v18    # "colorsToCam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/color/utilities/Cam16;>;"
    .restart local v19    # "hueProportions":[D
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    const v0, -0xbd7a0c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_b
    return-object v7
.end method
