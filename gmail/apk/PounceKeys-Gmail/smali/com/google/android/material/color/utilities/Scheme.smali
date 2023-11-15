.class public Lcom/google/android/material/color/utilities/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private background:I

.field private error:I

.field private errorContainer:I

.field private inverseOnSurface:I

.field private inversePrimary:I

.field private inverseSurface:I

.field private onBackground:I

.field private onError:I

.field private onErrorContainer:I

.field private onPrimary:I

.field private onPrimaryContainer:I

.field private onSecondary:I

.field private onSecondaryContainer:I

.field private onSurface:I

.field private onSurfaceVariant:I

.field private onTertiary:I

.field private onTertiaryContainer:I

.field private outline:I

.field private outlineVariant:I

.field private primary:I

.field private primaryContainer:I

.field private scrim:I

.field private secondary:I

.field private secondaryContainer:I

.field private shadow:I

.field private surface:I

.field private surfaceVariant:I

.field private tertiary:I

.field private tertiaryContainer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 16
    .param p1, "primary"    # I
    .param p2, "onPrimary"    # I
    .param p3, "primaryContainer"    # I
    .param p4, "onPrimaryContainer"    # I
    .param p5, "secondary"    # I
    .param p6, "onSecondary"    # I
    .param p7, "secondaryContainer"    # I
    .param p8, "onSecondaryContainer"    # I
    .param p9, "tertiary"    # I
    .param p10, "onTertiary"    # I
    .param p11, "tertiaryContainer"    # I
    .param p12, "onTertiaryContainer"    # I
    .param p13, "error"    # I
    .param p14, "onError"    # I
    .param p15, "errorContainer"    # I
    .param p16, "onErrorContainer"    # I
    .param p17, "background"    # I
    .param p18, "onBackground"    # I
    .param p19, "surface"    # I
    .param p20, "onSurface"    # I
    .param p21, "surfaceVariant"    # I
    .param p22, "onSurfaceVariant"    # I
    .param p23, "outline"    # I
    .param p24, "outlineVariant"    # I
    .param p25, "shadow"    # I
    .param p26, "scrim"    # I
    .param p27, "inverseSurface"    # I
    .param p28, "inverseOnSurface"    # I
    .param p29, "inversePrimary"    # I

    .line 96
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    move/from16 v1, p1

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 98
    move/from16 v2, p2

    iput v2, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 99
    move/from16 v3, p3

    iput v3, v0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 100
    move/from16 v4, p4

    iput v4, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 101
    move/from16 v5, p5

    iput v5, v0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 102
    move/from16 v6, p6

    iput v6, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 103
    move/from16 v7, p7

    iput v7, v0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 104
    move/from16 v8, p8

    iput v8, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 105
    move/from16 v9, p9

    iput v9, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 106
    move/from16 v10, p10

    iput v10, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 107
    move/from16 v11, p11

    iput v11, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 108
    move/from16 v12, p12

    iput v12, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 109
    move/from16 v13, p13

    iput v13, v0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 110
    move/from16 v14, p14

    iput v14, v0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 111
    move/from16 v15, p15

    iput v15, v0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 112
    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 113
    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 114
    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 115
    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 116
    move/from16 v1, p20

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 117
    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 118
    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 119
    move/from16 v1, p23

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 120
    move/from16 v1, p24

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 121
    move/from16 v1, p25

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 122
    move/from16 v1, p26

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 123
    move/from16 v1, p27

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 124
    move/from16 v1, p28

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 125
    move/from16 v1, p29

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 126
    return-void
.end method

.method public static dark(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 1
    .param p0, "argb"    # I

    .line 133
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    return-object v0
.end method

.method public static darkContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 1
    .param p0, "argb"    # I

    .line 141
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    return-object v0
.end method

.method private static darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 7
    .param p0, "core"    # Lcom/google/android/material/color/utilities/CorePalette;

    .line 178
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 179
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 180
    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 181
    const/16 v4, 0x1e

    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 182
    const/16 v5, 0x5a

    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 184
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 185
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 186
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 187
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 188
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 189
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 190
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 191
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 192
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 193
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 195
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 196
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 197
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 198
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 199
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 200
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 201
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 202
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 203
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 204
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 205
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 206
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 207
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method public static light(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 1
    .param p0, "argb"    # I

    .line 129
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    return-object v0
.end method

.method public static lightContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 1
    .param p0, "argb"    # I

    .line 137
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    return-object v0
.end method

.method private static lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 6
    .param p0, "core"    # Lcom/google/android/material/color/utilities/CorePalette;

    .line 145
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 146
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 147
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 148
    const/16 v4, 0x5a

    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 149
    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 150
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 151
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 152
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 153
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 155
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 156
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 157
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 159
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 160
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 161
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 162
    const/16 v2, 0x63

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 163
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 164
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 165
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 166
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 167
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 168
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 169
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 170
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 171
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 172
    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 173
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 174
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    .line 145
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 682
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 683
    return v0

    .line 685
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/color/utilities/Scheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 686
    return v2

    .line 688
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 689
    return v2

    .line 692
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/color/utilities/Scheme;

    .line 694
    .local v1, "scheme":Lcom/google/android/material/color/utilities/Scheme;
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    if-eq v3, v4, :cond_3

    .line 695
    return v2

    .line 697
    :cond_3
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    if-eq v3, v4, :cond_4

    .line 698
    return v2

    .line 700
    :cond_4
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    if-eq v3, v4, :cond_5

    .line 701
    return v2

    .line 703
    :cond_5
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    if-eq v3, v4, :cond_6

    .line 704
    return v2

    .line 706
    :cond_6
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    if-eq v3, v4, :cond_7

    .line 707
    return v2

    .line 709
    :cond_7
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    if-eq v3, v4, :cond_8

    .line 710
    return v2

    .line 712
    :cond_8
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    if-eq v3, v4, :cond_9

    .line 713
    return v2

    .line 715
    :cond_9
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    if-eq v3, v4, :cond_a

    .line 716
    return v2

    .line 718
    :cond_a
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    if-eq v3, v4, :cond_b

    .line 719
    return v2

    .line 721
    :cond_b
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    if-eq v3, v4, :cond_c

    .line 722
    return v2

    .line 724
    :cond_c
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    if-eq v3, v4, :cond_d

    .line 725
    return v2

    .line 727
    :cond_d
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    if-eq v3, v4, :cond_e

    .line 728
    return v2

    .line 730
    :cond_e
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->error:I

    if-eq v3, v4, :cond_f

    .line 731
    return v2

    .line 733
    :cond_f
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    if-eq v3, v4, :cond_10

    .line 734
    return v2

    .line 736
    :cond_10
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    if-eq v3, v4, :cond_11

    .line 737
    return v2

    .line 739
    :cond_11
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    if-eq v3, v4, :cond_12

    .line 740
    return v2

    .line 742
    :cond_12
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->background:I

    if-eq v3, v4, :cond_13

    .line 743
    return v2

    .line 745
    :cond_13
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    if-eq v3, v4, :cond_14

    .line 746
    return v2

    .line 748
    :cond_14
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    if-eq v3, v4, :cond_15

    .line 749
    return v2

    .line 751
    :cond_15
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    if-eq v3, v4, :cond_16

    .line 752
    return v2

    .line 754
    :cond_16
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    if-eq v3, v4, :cond_17

    .line 755
    return v2

    .line 757
    :cond_17
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    if-eq v3, v4, :cond_18

    .line 758
    return v2

    .line 760
    :cond_18
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    if-eq v3, v4, :cond_19

    .line 761
    return v2

    .line 763
    :cond_19
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    if-eq v3, v4, :cond_1a

    .line 764
    return v2

    .line 766
    :cond_1a
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    if-eq v3, v4, :cond_1b

    .line 767
    return v2

    .line 769
    :cond_1b
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    if-eq v3, v4, :cond_1c

    .line 770
    return v2

    .line 772
    :cond_1c
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    if-eq v3, v4, :cond_1d

    .line 773
    return v2

    .line 775
    :cond_1d
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    if-eq v3, v4, :cond_1e

    .line 776
    return v2

    .line 778
    :cond_1e
    iget v3, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    iget v4, v1, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    if-eq v3, v4, :cond_1f

    .line 779
    return v2

    .line 782
    :cond_1f
    return v0
.end method

.method public getBackground()I
    .locals 1

    .line 435
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    return v0
.end method

.method public getError()I
    .locals 1

    .line 379
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    return v0
.end method

.method public getErrorContainer()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    return v0
.end method

.method public getInverseOnSurface()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    return v0
.end method

.method public getInversePrimary()I
    .locals 1

    .line 603
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return v0
.end method

.method public getInverseSurface()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    return v0
.end method

.method public getOnBackground()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    return v0
.end method

.method public getOnError()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    return v0
.end method

.method public getOnErrorContainer()I
    .locals 1

    .line 421
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    return v0
.end method

.method public getOnPrimary()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    return v0
.end method

.method public getOnPrimaryContainer()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    return v0
.end method

.method public getOnSecondary()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    return v0
.end method

.method public getOnSecondaryContainer()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    return v0
.end method

.method public getOnSurface()I
    .locals 1

    .line 477
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    return v0
.end method

.method public getOnSurfaceVariant()I
    .locals 1

    .line 505
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    return v0
.end method

.method public getOnTertiary()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    return v0
.end method

.method public getOnTertiaryContainer()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    return v0
.end method

.method public getOutline()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    return v0
.end method

.method public getOutlineVariant()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    return v0
.end method

.method public getPrimary()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    return v0
.end method

.method public getPrimaryContainer()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    return v0
.end method

.method public getScrim()I
    .locals 1

    .line 561
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    return v0
.end method

.method public getSecondary()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    return v0
.end method

.method public getSecondaryContainer()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    return v0
.end method

.method public getShadow()I
    .locals 1

    .line 547
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    return v0
.end method

.method public getSurface()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    return v0
.end method

.method public getSurfaceVariant()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    return v0
.end method

.method public getTertiary()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    return v0
.end method

.method public getTertiaryContainer()I
    .locals 1

    .line 351
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 787
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 788
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    add-int/2addr v1, v2

    .line 789
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    add-int/2addr v0, v2

    .line 790
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    add-int/2addr v1, v2

    .line 791
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    add-int/2addr v0, v2

    .line 792
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    add-int/2addr v1, v2

    .line 793
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    add-int/2addr v0, v2

    .line 794
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    add-int/2addr v1, v2

    .line 795
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    add-int/2addr v0, v2

    .line 796
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    add-int/2addr v1, v2

    .line 797
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    add-int/2addr v0, v2

    .line 798
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    add-int/2addr v1, v2

    .line 799
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    add-int/2addr v0, v2

    .line 800
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    add-int/2addr v1, v2

    .line 801
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    add-int/2addr v0, v2

    .line 802
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    add-int/2addr v1, v2

    .line 803
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    add-int/2addr v0, v2

    .line 804
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    add-int/2addr v1, v2

    .line 805
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    add-int/2addr v0, v2

    .line 806
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    add-int/2addr v1, v2

    .line 807
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    add-int/2addr v0, v2

    .line 808
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    add-int/2addr v1, v2

    .line 809
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    add-int/2addr v0, v2

    .line 810
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    add-int/2addr v1, v2

    .line 811
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    add-int/2addr v0, v2

    .line 812
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    add-int/2addr v1, v2

    .line 813
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    add-int/2addr v0, v2

    .line 814
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    add-int/2addr v1, v2

    .line 815
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    add-int/2addr v0, v2

    .line 816
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    add-int/2addr v1, v2

    .line 817
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public setBackground(I)V
    .locals 0
    .param p1, "background"    # I

    .line 439
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 440
    return-void
.end method

.method public setError(I)V
    .locals 0
    .param p1, "error"    # I

    .line 383
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 384
    return-void
.end method

.method public setErrorContainer(I)V
    .locals 0
    .param p1, "errorContainer"    # I

    .line 411
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 412
    return-void
.end method

.method public setInverseOnSurface(I)V
    .locals 0
    .param p1, "inverseOnSurface"    # I

    .line 593
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 594
    return-void
.end method

.method public setInversePrimary(I)V
    .locals 0
    .param p1, "inversePrimary"    # I

    .line 607
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 608
    return-void
.end method

.method public setInverseSurface(I)V
    .locals 0
    .param p1, "inverseSurface"    # I

    .line 579
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 580
    return-void
.end method

.method public setOnBackground(I)V
    .locals 0
    .param p1, "onBackground"    # I

    .line 453
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 454
    return-void
.end method

.method public setOnError(I)V
    .locals 0
    .param p1, "onError"    # I

    .line 397
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 398
    return-void
.end method

.method public setOnErrorContainer(I)V
    .locals 0
    .param p1, "onErrorContainer"    # I

    .line 425
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 426
    return-void
.end method

.method public setOnPrimary(I)V
    .locals 0
    .param p1, "onPrimary"    # I

    .line 229
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 230
    return-void
.end method

.method public setOnPrimaryContainer(I)V
    .locals 0
    .param p1, "onPrimaryContainer"    # I

    .line 257
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 258
    return-void
.end method

.method public setOnSecondary(I)V
    .locals 0
    .param p1, "onSecondary"    # I

    .line 285
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 286
    return-void
.end method

.method public setOnSecondaryContainer(I)V
    .locals 0
    .param p1, "onSecondaryContainer"    # I

    .line 313
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 314
    return-void
.end method

.method public setOnSurface(I)V
    .locals 0
    .param p1, "onSurface"    # I

    .line 481
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 482
    return-void
.end method

.method public setOnSurfaceVariant(I)V
    .locals 0
    .param p1, "onSurfaceVariant"    # I

    .line 509
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 510
    return-void
.end method

.method public setOnTertiary(I)V
    .locals 0
    .param p1, "onTertiary"    # I

    .line 341
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 342
    return-void
.end method

.method public setOnTertiaryContainer(I)V
    .locals 0
    .param p1, "onTertiaryContainer"    # I

    .line 369
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 370
    return-void
.end method

.method public setOutline(I)V
    .locals 0
    .param p1, "outline"    # I

    .line 523
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 524
    return-void
.end method

.method public setOutlineVariant(I)V
    .locals 0
    .param p1, "outlineVariant"    # I

    .line 537
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 538
    return-void
.end method

.method public setPrimary(I)V
    .locals 0
    .param p1, "primary"    # I

    .line 215
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 216
    return-void
.end method

.method public setPrimaryContainer(I)V
    .locals 0
    .param p1, "primaryContainer"    # I

    .line 243
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 244
    return-void
.end method

.method public setScrim(I)V
    .locals 0
    .param p1, "scrim"    # I

    .line 565
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 566
    return-void
.end method

.method public setSecondary(I)V
    .locals 0
    .param p1, "secondary"    # I

    .line 271
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 272
    return-void
.end method

.method public setSecondaryContainer(I)V
    .locals 0
    .param p1, "secondaryContainer"    # I

    .line 299
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 300
    return-void
.end method

.method public setShadow(I)V
    .locals 0
    .param p1, "shadow"    # I

    .line 551
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 552
    return-void
.end method

.method public setSurface(I)V
    .locals 0
    .param p1, "surface"    # I

    .line 467
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 468
    return-void
.end method

.method public setSurfaceVariant(I)V
    .locals 0
    .param p1, "surfaceVariant"    # I

    .line 495
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 496
    return-void
.end method

.method public setTertiary(I)V
    .locals 0
    .param p1, "tertiary"    # I

    .line 327
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 328
    return-void
.end method

.method public setTertiaryContainer(I)V
    .locals 0
    .param p1, "tertiaryContainer"    # I

    .line 355
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 356
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheme{primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrimaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSecondaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tertiary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onTertiary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tertiaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onTertiaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onErrorContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surfaceVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSurfaceVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outlineVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inverseSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inverseOnSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inversePrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "background"    # I

    .line 444
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 445
    return-object p0
.end method

.method public withError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "error"    # I

    .line 388
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 389
    return-object p0
.end method

.method public withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "errorContainer"    # I

    .line 416
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 417
    return-object p0
.end method

.method public withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "inverseOnSurface"    # I

    .line 598
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 599
    return-object p0
.end method

.method public withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "inversePrimary"    # I

    .line 612
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 613
    return-object p0
.end method

.method public withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "inverseSurface"    # I

    .line 584
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 585
    return-object p0
.end method

.method public withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onBackground"    # I

    .line 458
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 459
    return-object p0
.end method

.method public withOnError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onError"    # I

    .line 402
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 403
    return-object p0
.end method

.method public withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onErrorContainer"    # I

    .line 430
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 431
    return-object p0
.end method

.method public withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onPrimary"    # I

    .line 234
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 235
    return-object p0
.end method

.method public withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onPrimaryContainer"    # I

    .line 262
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 263
    return-object p0
.end method

.method public withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onSecondary"    # I

    .line 290
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 291
    return-object p0
.end method

.method public withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onSecondaryContainer"    # I

    .line 318
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 319
    return-object p0
.end method

.method public withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onSurface"    # I

    .line 486
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 487
    return-object p0
.end method

.method public withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onSurfaceVariant"    # I

    .line 514
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 515
    return-object p0
.end method

.method public withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onTertiary"    # I

    .line 346
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 347
    return-object p0
.end method

.method public withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "onTertiaryContainer"    # I

    .line 374
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 375
    return-object p0
.end method

.method public withOutline(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "outline"    # I

    .line 528
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 529
    return-object p0
.end method

.method public withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "outlineVariant"    # I

    .line 542
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 543
    return-object p0
.end method

.method public withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "primary"    # I

    .line 220
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 221
    return-object p0
.end method

.method public withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "primaryContainer"    # I

    .line 248
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 249
    return-object p0
.end method

.method public withScrim(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "scrim"    # I

    .line 570
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 571
    return-object p0
.end method

.method public withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "secondary"    # I

    .line 276
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 277
    return-object p0
.end method

.method public withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "secondaryContainer"    # I

    .line 304
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 305
    return-object p0
.end method

.method public withShadow(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "shadow"    # I

    .line 556
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 557
    return-object p0
.end method

.method public withSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "surface"    # I

    .line 472
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 473
    return-object p0
.end method

.method public withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "surfaceVariant"    # I

    .line 500
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 501
    return-object p0
.end method

.method public withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "tertiary"    # I

    .line 332
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 333
    return-object p0
.end method

.method public withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0
    .param p1, "tertiaryContainer"    # I

    .line 360
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 361
    return-object p0
.end method
