.class public final Lcom/google/android/material/color/utilities/Hct;
.super Ljava/lang/Object;
.source "Hct.java"


# instance fields
.field private argb:I

.field private chroma:D

.field private hue:D

.field private tone:D


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "argb"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    .line 77
    return-void
.end method

.method public static from(DDD)Lcom/google/android/material/color/utilities/Hct;
    .locals 2
    .param p0, "hue"    # D
    .param p2, "chroma"    # D
    .param p4, "tone"    # D

    .line 61
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result v0

    .line 62
    .local v0, "argb":I
    new-instance v1, Lcom/google/android/material/color/utilities/Hct;

    invoke-direct {v1, v0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    return-object v1
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/Hct;
    .locals 1
    .param p0, "argb"    # I

    .line 72
    new-instance v0, Lcom/google/android/material/color/utilities/Hct;

    invoke-direct {v0, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    return-object v0
.end method

.method private setInternalState(I)V
    .locals 3
    .param p1, "argb"    # I

    .line 126
    iput p1, p0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    .line 127
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    .line 128
    .local v0, "cam":Lcom/google/android/material/color/utilities/Cam16;
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    .line 129
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    .line 130
    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    .line 131
    return-void
.end method


# virtual methods
.method public getChroma()D
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    return-wide v0
.end method

.method public getHue()D
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    return-wide v0
.end method

.method public getTone()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    return-wide v0
.end method

.method public setChroma(D)V
    .locals 6
    .param p1, "newChroma"    # D

    .line 112
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    .line 113
    return-void
.end method

.method public setHue(D)V
    .locals 6
    .param p1, "newHue"    # D

    .line 102
    iget-wide v2, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    .line 103
    return-void
.end method

.method public setTone(D)V
    .locals 6
    .param p1, "newTone"    # D

    .line 122
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    iget-wide v2, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    .line 123
    return-void
.end method

.method public toInt()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    return v0
.end method
