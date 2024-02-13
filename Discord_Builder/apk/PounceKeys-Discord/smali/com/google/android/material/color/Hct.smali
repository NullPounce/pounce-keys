.class final Lcom/google/android/material/color/Hct;
.super Ljava/lang/Object;
.source "Hct.java"


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DE_MAX_ERROR:F = 1.0E-9f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private chroma:F

.field private hue:F

.field private tone:F


# direct methods
.method private constructor <init>(FFF)V
    .locals 1
    .param p1, "hue"    # F
    .param p2, "chroma"    # F
    .param p3, "tone"    # F

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1, p2, p3}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    .line 69
    return-void
.end method

.method private static findCamByJ(FFF)Lcom/google/android/material/color/Cam16;
    .locals 13
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "tone"    # F

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "low":F
    const/high16 v1, 0x42c80000    # 100.0f

    .line 223
    .local v1, "high":F
    const/4 v2, 0x0

    .line 224
    .local v2, "mid":F
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 225
    .local v3, "bestdL":F
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 227
    .local v4, "bestdE":F
    const/4 v5, 0x0

    .line 228
    .local v5, "bestCam":Lcom/google/android/material/color/Cam16;
    :goto_0
    sub-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 229
    sub-float v6, v1, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v2, v0, v6

    .line 230
    invoke-static {v2, p1, p0}, Lcom/google/android/material/color/Cam16;->fromJch(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v6

    .line 231
    .local v6, "camBeforeClip":Lcom/google/android/material/color/Cam16;
    invoke-virtual {v6}, Lcom/google/android/material/color/Cam16;->getInt()I

    move-result v7

    .line 232
    .local v7, "clipped":I
    invoke-static {v7}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v8

    .line 233
    .local v8, "clippedLstar":F
    sub-float v9, p2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 235
    .local v9, "dL":F
    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    .line 236
    invoke-static {v7}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v10

    .line 237
    .local v10, "camClipped":Lcom/google/android/material/color/Cam16;
    nop

    .line 238
    invoke-virtual {v10}, Lcom/google/android/material/color/Cam16;->getJ()F

    move-result v11

    invoke-virtual {v10}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v12

    invoke-static {v11, v12, p0}, Lcom/google/android/material/color/Cam16;->fromJch(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/material/color/Cam16;->distance(Lcom/google/android/material/color/Cam16;)F

    move-result v11

    .line 239
    .local v11, "dE":F
    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_0

    cmpg-float v12, v11, v4

    if-gtz v12, :cond_0

    .line 240
    move v3, v9

    .line 241
    move v4, v11

    .line 242
    move-object v5, v10

    .line 246
    .end local v10    # "camClipped":Lcom/google/android/material/color/Cam16;
    .end local v11    # "dE":F
    :cond_0
    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-nez v10, :cond_1

    const v10, 0x3089705f    # 1.0E-9f

    cmpg-float v10, v4, v10

    if-gez v10, :cond_1

    .line 247
    goto :goto_2

    .line 250
    :cond_1
    cmpg-float v10, v8, p2

    if-gez v10, :cond_2

    .line 251
    move v0, v2

    goto :goto_1

    .line 253
    :cond_2
    move v1, v2

    .line 255
    .end local v6    # "camBeforeClip":Lcom/google/android/material/color/Cam16;
    .end local v7    # "clipped":I
    .end local v8    # "clippedLstar":F
    .end local v9    # "dL":F
    :goto_1
    goto :goto_0

    .line 257
    :cond_3
    :goto_2
    return-object v5
.end method

.method public static from(FFF)Lcom/google/android/material/color/Hct;
    .locals 1
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "tone"    # F

    .line 53
    new-instance v0, Lcom/google/android/material/color/Hct;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/color/Hct;-><init>(FFF)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/android/material/color/Hct;
    .locals 5
    .param p0, "argb"    # I

    .line 63
    invoke-static {p0}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    .line 64
    .local v0, "cam":Lcom/google/android/material/color/Cam16;
    new-instance v1, Lcom/google/android/material/color/Hct;

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getHue()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v3

    invoke-static {p0}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/color/Hct;-><init>(FFF)V

    return-object v1
.end method

.method private static gamutMap(FFF)I
    .locals 1
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "tone"    # F

    .line 160
    sget-object v0, Lcom/google/android/material/color/ViewingConditions;->DEFAULT:Lcom/google/android/material/color/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/Hct;->gamutMapInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)I

    move-result v0

    return v0
.end method

.method static gamutMapInViewingConditions(FFFLcom/google/android/material/color/ViewingConditions;)I
    .locals 8
    .param p0, "hue"    # F
    .param p1, "chroma"    # F
    .param p2, "tone"    # F
    .param p3, "viewingConditions"    # Lcom/google/android/material/color/ViewingConditions;

    .line 172
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_2

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/color/MathUtils;->sanitizeDegrees(F)F

    move-result p0

    .line 178
    move v0, p1

    .line 179
    .local v0, "high":F
    move v1, p1

    .line 180
    .local v1, "mid":F
    const/4 v2, 0x0

    .line 181
    .local v2, "low":F
    const/4 v3, 0x1

    .line 183
    .local v3, "isFirstLoop":Z
    const/4 v4, 0x0

    .line 184
    .local v4, "answer":Lcom/google/android/material/color/Cam16;
    :goto_0
    sub-float v5, v2, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    .line 185
    invoke-static {p0, v1, p2}, Lcom/google/android/material/color/Hct;->findCamByJ(FFF)Lcom/google/android/material/color/Cam16;

    move-result-object v5

    .line 187
    .local v5, "possibleAnswer":Lcom/google/android/material/color/Cam16;
    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_2

    .line 188
    if-eqz v5, :cond_1

    .line 189
    invoke-virtual {v5, p3}, Lcom/google/android/material/color/Cam16;->viewed(Lcom/google/android/material/color/ViewingConditions;)I

    move-result v6

    return v6

    .line 191
    :cond_1
    const/4 v3, 0x0

    .line 192
    sub-float v7, v0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    .line 193
    goto :goto_0

    .line 197
    :cond_2
    if-nez v5, :cond_3

    .line 198
    move v0, v1

    goto :goto_1

    .line 200
    :cond_3
    move-object v4, v5

    .line 201
    move v2, v1

    .line 204
    :goto_1
    sub-float v7, v0, v2

    div-float/2addr v7, v6

    add-float v1, v2, v7

    .line 205
    .end local v5    # "possibleAnswer":Lcom/google/android/material/color/Cam16;
    goto :goto_0

    .line 207
    :cond_4
    if-nez v4, :cond_5

    .line 208
    invoke-static {p2}, Lcom/google/android/material/color/ColorUtils;->intFromLstar(F)I

    move-result v5

    return v5

    .line 211
    :cond_5
    invoke-virtual {v4, p3}, Lcom/google/android/material/color/Cam16;->viewed(Lcom/google/android/material/color/ViewingConditions;)I

    move-result v5

    return v5

    .line 173
    .end local v0    # "high":F
    .end local v1    # "mid":F
    .end local v2    # "low":F
    .end local v3    # "isFirstLoop":Z
    .end local v4    # "answer":Lcom/google/android/material/color/Cam16;
    :cond_6
    :goto_2
    invoke-static {p2}, Lcom/google/android/material/color/ColorUtils;->intFromLstar(F)I

    move-result v0

    return v0
.end method

.method private setInternalState(I)V
    .locals 3
    .param p1, "argb"    # I

    .line 118
    invoke-static {p1}, Lcom/google/android/material/color/Cam16;->fromInt(I)Lcom/google/android/material/color/Cam16;

    move-result-object v0

    .line 119
    .local v0, "cam":Lcom/google/android/material/color/Cam16;
    invoke-static {p1}, Lcom/google/android/material/color/ColorUtils;->lstarFromInt(I)F

    move-result v1

    .line 120
    .local v1, "tone":F
    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getHue()F

    move-result v2

    iput v2, p0, Lcom/google/android/material/color/Hct;->hue:F

    .line 121
    invoke-virtual {v0}, Lcom/google/android/material/color/Cam16;->getChroma()F

    move-result v2

    iput v2, p0, Lcom/google/android/material/color/Hct;->chroma:F

    .line 122
    iput v1, p0, Lcom/google/android/material/color/Hct;->tone:F

    .line 123
    return-void
.end method


# virtual methods
.method public getChroma()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/android/material/color/Hct;->chroma:F

    return v0
.end method

.method public getHue()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    return v0
.end method

.method public getTone()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/material/color/Hct;->tone:F

    return v0
.end method

.method public setChroma(F)V
    .locals 2
    .param p1, "newChroma"    # F

    .line 104
    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->tone:F

    invoke-static {v0, p1, v1}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    .line 105
    return-void
.end method

.method public setHue(F)V
    .locals 3
    .param p1, "newHue"    # F

    .line 94
    invoke-static {p1}, Lcom/google/android/material/color/MathUtils;->sanitizeDegrees(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/color/Hct;->chroma:F

    iget v2, p0, Lcom/google/android/material/color/Hct;->tone:F

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    .line 95
    return-void
.end method

.method public setTone(F)V
    .locals 2
    .param p1, "newTone"    # F

    .line 114
    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->chroma:F

    invoke-static {v0, v1, p1}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/Hct;->setInternalState(I)V

    .line 115
    return-void
.end method

.method public toInt()I
    .locals 3

    .line 84
    iget v0, p0, Lcom/google/android/material/color/Hct;->hue:F

    iget v1, p0, Lcom/google/android/material/color/Hct;->chroma:F

    iget v2, p0, Lcom/google/android/material/color/Hct;->tone:F

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/Hct;->gamutMap(FFF)I

    move-result v0

    return v0
.end method
