.class public final Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.super Ljava/lang/Object;
.source "QuantizerWsmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0xa

.field private static final MIN_MOVEMENT_DISTANCE:D = 3.0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quantize([I[II)Ljava/util/Map;
    .locals 34
    .param p0, "inputPixels"    # [I
    .param p1, "startingClusters"    # [I
    .param p2, "maxColors"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v2, "pixelToCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    array-length v3, v0

    new-array v3, v3, [[D

    .line 80
    .local v3, "points":[[D
    array-length v4, v0

    new-array v4, v4, [I

    .line 81
    .local v4, "pixels":[I
    new-instance v5, Lcom/google/android/material/color/utilities/PointProviderLab;

    invoke-direct {v5}, Lcom/google/android/material/color/utilities/PointProviderLab;-><init>()V

    .line 83
    .local v5, "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    const/4 v6, 0x0

    .line 84
    .local v6, "pointCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v7, v8, :cond_1

    .line 85
    aget v8, v0, v7

    .line 86
    .local v8, "inputPixel":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 87
    .local v10, "pixelCount":Ljava/lang/Integer;
    if-nez v10, :cond_0

    .line 88
    invoke-interface {v5, v8}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    move-result-object v11

    aput-object v11, v3, v6

    .line 89
    aput v8, v4, v6

    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 92
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 94
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v8    # "inputPixel":I
    .end local v10    # "pixelCount":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 98
    .end local v7    # "i":I
    :cond_1
    new-array v7, v6, [I

    .line 99
    .local v7, "counts":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v6, :cond_2

    .line 100
    aget v10, v4, v8

    .line 101
    .local v10, "pixel":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 102
    .local v11, "count":I
    aput v11, v7, v8

    .line 99
    .end local v10    # "pixel":I
    .end local v11    # "count":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 105
    .end local v8    # "i":I
    :cond_2
    move/from16 v8, p2

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 106
    .local v10, "clusterCount":I
    array-length v11, v1

    if-eqz v11, :cond_3

    .line 107
    array-length v11, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 110
    :cond_3
    new-array v11, v10, [[D

    .line 111
    .local v11, "clusters":[[D
    const/4 v12, 0x0

    .line 112
    .local v12, "clustersCreated":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    array-length v14, v1

    if-ge v13, v14, :cond_4

    .line 113
    aget v14, v1, v13

    invoke-interface {v5, v14}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    move-result-object v14

    aput-object v14, v11, v13

    .line 114
    add-int/lit8 v12, v12, 0x1

    .line 112
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 117
    .end local v13    # "i":I
    :cond_4
    sub-int v13, v10, v12

    .line 118
    .local v13, "additionalClustersNeeded":I
    if-lez v13, :cond_5

    .line 119
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    if-ge v14, v13, :cond_5

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 122
    .end local v14    # "i":I
    :cond_5
    new-array v14, v6, [I

    .line 123
    .local v14, "clusterIndices":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-ge v15, v6, :cond_6

    .line 124
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    int-to-double v0, v10

    mul-double v16, v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    aput v0, v14, v15

    .line 123
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_5

    .line 127
    .end local v15    # "i":I
    :cond_6
    new-array v0, v10, [[I

    .line 128
    .local v0, "indexMatrix":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v10, :cond_7

    .line 129
    new-array v15, v10, [I

    aput-object v15, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 132
    .end local v1    # "i":I
    :cond_7
    new-array v1, v10, [[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    .line 133
    .local v1, "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_7
    if-ge v15, v10, :cond_9

    .line 134
    new-array v9, v10, [Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    aput-object v9, v1, v15

    .line 135
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_8
    if-ge v9, v10, :cond_8

    .line 136
    aget-object v17, v1, v15

    new-instance v18, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;-><init>()V

    aput-object v18, v17, v9

    .line 135
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 133
    .end local v9    # "j":I
    :cond_8
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x1

    goto :goto_7

    .line 140
    .end local v15    # "i":I
    :cond_9
    new-array v9, v10, [I

    .line 141
    .local v9, "pixelCountSums":[I
    const/4 v15, 0x0

    .local v15, "iteration":I
    :goto_9
    move-object/from16 v17, v2

    .end local v2    # "pixelToCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v17, "pixelToCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v2, 0xa

    if-ge v15, v2, :cond_16

    .line 142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v10, :cond_c

    .line 143
    add-int/lit8 v18, v2, 0x1

    move-object/from16 v19, v4

    move/from16 v4, v18

    .local v4, "j":I
    .local v19, "pixels":[I
    :goto_b
    if-ge v4, v10, :cond_a

    .line 144
    aget-object v8, v11, v2

    move/from16 v18, v12

    .end local v12    # "clustersCreated":I
    .local v18, "clustersCreated":I
    aget-object v12, v11, v4

    move/from16 v20, v13

    .end local v13    # "additionalClustersNeeded":I
    .local v20, "additionalClustersNeeded":I
    invoke-interface {v5, v8, v12}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v12

    .line 145
    .local v12, "distance":D
    aget-object v8, v1, v4

    aget-object v8, v8, v2

    iput-wide v12, v8, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 146
    aget-object v8, v1, v4

    aget-object v8, v8, v2

    iput v2, v8, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    .line 147
    aget-object v8, v1, v2

    aget-object v8, v8, v4

    iput-wide v12, v8, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 148
    aget-object v8, v1, v2

    aget-object v8, v8, v4

    iput v4, v8, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    .line 143
    .end local v12    # "distance":D
    add-int/lit8 v4, v4, 0x1

    move/from16 v8, p2

    move/from16 v12, v18

    move/from16 v13, v20

    goto :goto_b

    .end local v18    # "clustersCreated":I
    .end local v20    # "additionalClustersNeeded":I
    .local v12, "clustersCreated":I
    .restart local v13    # "additionalClustersNeeded":I
    :cond_a
    move/from16 v18, v12

    move/from16 v20, v13

    .line 150
    .end local v4    # "j":I
    .end local v12    # "clustersCreated":I
    .end local v13    # "additionalClustersNeeded":I
    .restart local v18    # "clustersCreated":I
    .restart local v20    # "additionalClustersNeeded":I
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 151
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_c
    if-ge v4, v10, :cond_b

    .line 152
    aget-object v8, v0, v2

    aget-object v12, v1, v2

    aget-object v12, v12, v4

    iget v12, v12, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    aput v12, v8, v4

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 142
    .end local v4    # "j":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p2

    move/from16 v12, v18

    move-object/from16 v4, v19

    move/from16 v13, v20

    goto :goto_a

    .end local v18    # "clustersCreated":I
    .end local v19    # "pixels":[I
    .end local v20    # "additionalClustersNeeded":I
    .local v4, "pixels":[I
    .restart local v12    # "clustersCreated":I
    .restart local v13    # "additionalClustersNeeded":I
    :cond_c
    move-object/from16 v19, v4

    move/from16 v18, v12

    move/from16 v20, v13

    .line 156
    .end local v2    # "i":I
    .end local v4    # "pixels":[I
    .end local v12    # "clustersCreated":I
    .end local v13    # "additionalClustersNeeded":I
    .restart local v18    # "clustersCreated":I
    .restart local v19    # "pixels":[I
    .restart local v20    # "additionalClustersNeeded":I
    const/4 v2, 0x0

    .line 157
    .local v2, "pointsMoved":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v6, :cond_11

    .line 158
    aget-object v8, v3, v4

    .line 159
    .local v8, "point":[D
    aget v12, v14, v4

    .line 160
    .local v12, "previousClusterIndex":I
    aget-object v13, v11, v12

    .line 161
    .local v13, "previousCluster":[D
    invoke-interface {v5, v8, v13}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v21

    .line 163
    .local v21, "previousDistance":D
    move-wide/from16 v23, v21

    .line 164
    .local v23, "minimumDistance":D
    const/16 v25, -0x1

    .line 165
    .local v25, "newClusterIndex":I
    const/16 v26, 0x0

    move/from16 v32, v25

    move-object/from16 v25, v0

    move/from16 v0, v32

    move/from16 v33, v26

    move-object/from16 v26, v13

    move/from16 v13, v33

    .local v0, "newClusterIndex":I
    .local v13, "j":I
    .local v25, "indexMatrix":[[I
    .local v26, "previousCluster":[D
    :goto_e
    if-ge v13, v10, :cond_f

    .line 166
    aget-object v27, v1, v12

    move-object/from16 v28, v1

    .end local v1    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .local v28, "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    aget-object v1, v27, v13

    move/from16 v27, v6

    move-object/from16 v29, v7

    .end local v6    # "pointCount":I
    .end local v7    # "counts":[I
    .local v27, "pointCount":I
    .local v29, "counts":[I
    iget-wide v6, v1, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    mul-double v30, v30, v21

    cmpl-double v1, v6, v30

    if-ltz v1, :cond_d

    .line 167
    goto :goto_f

    .line 169
    :cond_d
    aget-object v1, v11, v13

    invoke-interface {v5, v8, v1}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v6

    .line 170
    .local v6, "distance":D
    cmpg-double v1, v6, v23

    if-gez v1, :cond_e

    .line 171
    move-wide/from16 v23, v6

    .line 172
    move v0, v13

    .line 165
    .end local v6    # "distance":D
    :cond_e
    :goto_f
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v27

    move-object/from16 v1, v28

    move-object/from16 v7, v29

    goto :goto_e

    .end local v27    # "pointCount":I
    .end local v28    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .end local v29    # "counts":[I
    .restart local v1    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .local v6, "pointCount":I
    .restart local v7    # "counts":[I
    :cond_f
    move-object/from16 v28, v1

    move/from16 v27, v6

    move-object/from16 v29, v7

    .line 175
    .end local v1    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .end local v6    # "pointCount":I
    .end local v7    # "counts":[I
    .end local v13    # "j":I
    .restart local v27    # "pointCount":I
    .restart local v28    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .restart local v29    # "counts":[I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 176
    nop

    .line 177
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    sub-double v6, v6, v30

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 178
    .local v6, "distanceChange":D
    const-wide/high16 v30, 0x4008000000000000L    # 3.0

    cmpl-double v1, v6, v30

    if-lez v1, :cond_10

    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 180
    aput v0, v14, v4

    .line 157
    .end local v0    # "newClusterIndex":I
    .end local v6    # "distanceChange":D
    .end local v8    # "point":[D
    .end local v12    # "previousClusterIndex":I
    .end local v21    # "previousDistance":D
    .end local v23    # "minimumDistance":D
    .end local v26    # "previousCluster":[D
    :cond_10
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    move/from16 v6, v27

    move-object/from16 v1, v28

    move-object/from16 v7, v29

    goto :goto_d

    .end local v25    # "indexMatrix":[[I
    .end local v27    # "pointCount":I
    .end local v28    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .end local v29    # "counts":[I
    .local v0, "indexMatrix":[[I
    .restart local v1    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .local v6, "pointCount":I
    .restart local v7    # "counts":[I
    :cond_11
    move-object/from16 v25, v0

    move-object/from16 v28, v1

    move/from16 v27, v6

    move-object/from16 v29, v7

    .line 185
    .end local v0    # "indexMatrix":[[I
    .end local v1    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .end local v4    # "i":I
    .end local v6    # "pointCount":I
    .end local v7    # "counts":[I
    .restart local v25    # "indexMatrix":[[I
    .restart local v27    # "pointCount":I
    .restart local v28    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .restart local v29    # "counts":[I
    if-nez v2, :cond_12

    if-eqz v15, :cond_12

    .line 186
    move-object/from16 v26, v3

    move-object/from16 v21, v5

    move-object/from16 v23, v14

    move/from16 v12, v27

    goto/16 :goto_13

    .line 189
    :cond_12
    new-array v0, v10, [D

    .line 190
    .local v0, "componentASums":[D
    new-array v1, v10, [D

    .line 191
    .local v1, "componentBSums":[D
    new-array v4, v10, [D

    .line 192
    .local v4, "componentCSums":[D
    const/4 v6, 0x0

    invoke-static {v9, v6}, Ljava/util/Arrays;->fill([II)V

    .line 193
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    move/from16 v12, v27

    .end local v27    # "pointCount":I
    .local v12, "pointCount":I
    if-ge v7, v12, :cond_13

    .line 194
    aget v13, v14, v7

    .line 195
    .local v13, "clusterIndex":I
    aget-object v21, v3, v7

    .line 196
    .local v21, "point":[D
    aget v8, v29, v7

    .line 197
    .local v8, "count":I
    aget v23, v9, v13

    add-int v23, v23, v8

    aput v23, v9, v13

    .line 198
    aget-wide v23, v0, v13

    aget-wide v26, v21, v6

    move/from16 v31, v7

    .end local v7    # "i":I
    .local v31, "i":I
    int-to-double v6, v8

    mul-double v26, v26, v6

    add-double v23, v23, v26

    aput-wide v23, v0, v13

    .line 199
    aget-wide v6, v1, v13

    const/16 v16, 0x1

    aget-wide v23, v21, v16

    move/from16 v27, v2

    move-object/from16 v26, v3

    .end local v2    # "pointsMoved":I
    .end local v3    # "points":[[D
    .local v26, "points":[[D
    .local v27, "pointsMoved":I
    int-to-double v2, v8

    mul-double v23, v23, v2

    add-double v6, v6, v23

    aput-wide v6, v1, v13

    .line 200
    aget-wide v2, v4, v13

    const/4 v6, 0x2

    aget-wide v6, v21, v6

    move-object/from16 v23, v14

    move/from16 v24, v15

    .end local v14    # "clusterIndices":[I
    .end local v15    # "iteration":I
    .local v23, "clusterIndices":[I
    .local v24, "iteration":I
    int-to-double v14, v8

    mul-double/2addr v6, v14

    add-double/2addr v2, v6

    aput-wide v2, v4, v13

    .line 193
    .end local v8    # "count":I
    .end local v13    # "clusterIndex":I
    .end local v21    # "point":[D
    add-int/lit8 v7, v31, 0x1

    move-object/from16 v14, v23

    move/from16 v15, v24

    move-object/from16 v3, v26

    move/from16 v2, v27

    const/4 v6, 0x0

    move/from16 v27, v12

    .end local v31    # "i":I
    .restart local v7    # "i":I
    goto :goto_10

    .end local v23    # "clusterIndices":[I
    .end local v24    # "iteration":I
    .end local v26    # "points":[[D
    .end local v27    # "pointsMoved":I
    .restart local v2    # "pointsMoved":I
    .restart local v3    # "points":[[D
    .restart local v14    # "clusterIndices":[I
    .restart local v15    # "iteration":I
    :cond_13
    move/from16 v27, v2

    move-object/from16 v26, v3

    move/from16 v31, v7

    move-object/from16 v23, v14

    move/from16 v24, v15

    .line 203
    .end local v2    # "pointsMoved":I
    .end local v3    # "points":[[D
    .end local v7    # "i":I
    .end local v14    # "clusterIndices":[I
    .end local v15    # "iteration":I
    .restart local v23    # "clusterIndices":[I
    .restart local v24    # "iteration":I
    .restart local v26    # "points":[[D
    .restart local v27    # "pointsMoved":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v10, :cond_15

    .line 204
    aget v3, v9, v2

    .line 205
    .local v3, "count":I
    if-nez v3, :cond_14

    .line 206
    const/4 v6, 0x3

    new-array v6, v6, [D

    fill-array-data v6, :array_0

    aput-object v6, v11, v2

    .line 207
    move-object v8, v0

    move-object v15, v1

    move-object/from16 v31, v4

    move-object/from16 v21, v5

    const/4 v5, 0x0

    const/16 v16, 0x1

    const/16 v22, 0x2

    goto :goto_12

    .line 209
    :cond_14
    aget-wide v6, v0, v2

    int-to-double v13, v3

    div-double/2addr v6, v13

    .line 210
    .local v6, "a":D
    aget-wide v13, v1, v2

    move-object v8, v0

    move-object v15, v1

    .end local v0    # "componentASums":[D
    .end local v1    # "componentBSums":[D
    .local v8, "componentASums":[D
    .local v15, "componentBSums":[D
    int-to-double v0, v3

    div-double/2addr v13, v0

    .line 211
    .local v13, "b":D
    aget-wide v0, v4, v2

    move-object/from16 v31, v4

    move-object/from16 v21, v5

    .end local v4    # "componentCSums":[D
    .end local v5    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .local v21, "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .local v31, "componentCSums":[D
    int-to-double v4, v3

    div-double/2addr v0, v4

    .line 212
    .local v0, "c":D
    aget-object v4, v11, v2

    const/4 v5, 0x0

    aput-wide v6, v4, v5

    .line 213
    aget-object v4, v11, v2

    const/16 v16, 0x1

    aput-wide v13, v4, v16

    .line 214
    aget-object v4, v11, v2

    const/16 v22, 0x2

    aput-wide v0, v4, v22

    .line 203
    .end local v0    # "c":D
    .end local v3    # "count":I
    .end local v6    # "a":D
    .end local v13    # "b":D
    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v5, v21

    move-object/from16 v4, v31

    goto :goto_11

    .end local v8    # "componentASums":[D
    .end local v15    # "componentBSums":[D
    .end local v21    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .end local v31    # "componentCSums":[D
    .local v0, "componentASums":[D
    .restart local v1    # "componentBSums":[D
    .restart local v4    # "componentCSums":[D
    .restart local v5    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    :cond_15
    move-object v8, v0

    move-object v15, v1

    move-object/from16 v31, v4

    move-object/from16 v21, v5

    const/16 v16, 0x1

    .line 141
    .end local v0    # "componentASums":[D
    .end local v1    # "componentBSums":[D
    .end local v2    # "i":I
    .end local v4    # "componentCSums":[D
    .end local v5    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .end local v27    # "pointsMoved":I
    .restart local v21    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    add-int/lit8 v15, v24, 0x1

    move/from16 v8, p2

    move v6, v12

    move-object/from16 v2, v17

    move/from16 v12, v18

    move-object/from16 v4, v19

    move/from16 v13, v20

    move-object/from16 v14, v23

    move-object/from16 v0, v25

    move-object/from16 v3, v26

    move-object/from16 v1, v28

    move-object/from16 v7, v29

    .end local v24    # "iteration":I
    .local v15, "iteration":I
    goto/16 :goto_9

    .end local v18    # "clustersCreated":I
    .end local v19    # "pixels":[I
    .end local v20    # "additionalClustersNeeded":I
    .end local v21    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .end local v23    # "clusterIndices":[I
    .end local v25    # "indexMatrix":[[I
    .end local v26    # "points":[[D
    .end local v28    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .end local v29    # "counts":[I
    .local v0, "indexMatrix":[[I
    .local v1, "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .local v3, "points":[[D
    .local v4, "pixels":[I
    .restart local v5    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .local v6, "pointCount":I
    .local v7, "counts":[I
    .local v12, "clustersCreated":I
    .local v13, "additionalClustersNeeded":I
    .restart local v14    # "clusterIndices":[I
    :cond_16
    move-object/from16 v25, v0

    move-object/from16 v28, v1

    move-object/from16 v26, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v5

    move-object/from16 v29, v7

    move/from16 v18, v12

    move/from16 v20, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    move v12, v6

    .line 218
    .end local v0    # "indexMatrix":[[I
    .end local v1    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .end local v3    # "points":[[D
    .end local v4    # "pixels":[I
    .end local v5    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .end local v6    # "pointCount":I
    .end local v7    # "counts":[I
    .end local v13    # "additionalClustersNeeded":I
    .end local v14    # "clusterIndices":[I
    .end local v15    # "iteration":I
    .local v12, "pointCount":I
    .restart local v18    # "clustersCreated":I
    .restart local v19    # "pixels":[I
    .restart local v20    # "additionalClustersNeeded":I
    .restart local v21    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .restart local v23    # "clusterIndices":[I
    .restart local v25    # "indexMatrix":[[I
    .restart local v26    # "points":[[D
    .restart local v28    # "distanceToIndexMatrix":[[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    .restart local v29    # "counts":[I
    :goto_13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, "argbToPopulation":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v10, :cond_19

    .line 220
    aget v2, v9, v1

    .line 221
    .local v2, "count":I
    if-nez v2, :cond_17

    .line 222
    move-object/from16 v4, v21

    goto :goto_15

    .line 225
    :cond_17
    aget-object v3, v11, v1

    move-object/from16 v4, v21

    .end local v21    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .local v4, "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    invoke-interface {v4, v3}, Lcom/google/android/material/color/utilities/PointProvider;->toInt([D)I

    move-result v3

    .line 226
    .local v3, "possibleNewCluster":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 227
    goto :goto_15

    .line 230
    :cond_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v2    # "count":I
    .end local v3    # "possibleNewCluster":I
    :goto_15
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v4

    goto :goto_14

    .line 233
    .end local v1    # "i":I
    .end local v4    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    .restart local v21    # "pointProvider":Lcom/google/android/material/color/utilities/PointProvider;
    :cond_19
    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
