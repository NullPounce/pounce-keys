.class public Lcom/google/android/material/color/MaterialColors;
.super Ljava/lang/Object;
.source "MaterialColors.java"


# static fields
.field public static final ALPHA_DISABLED:F = 0.38f

.field public static final ALPHA_DISABLED_LOW:F = 0.12f

.field public static final ALPHA_FULL:F = 1.0f

.field public static final ALPHA_LOW:F = 0.32f

.field public static final ALPHA_MEDIUM:F = 0.54f

.field private static final TONE_ACCENT_CONTAINER_DARK:I = 0x1e

.field private static final TONE_ACCENT_CONTAINER_LIGHT:I = 0x5a

.field private static final TONE_ACCENT_DARK:I = 0x50

.field private static final TONE_ACCENT_LIGHT:I = 0x28

.field private static final TONE_ON_ACCENT_CONTAINER_DARK:I = 0x5a

.field private static final TONE_ON_ACCENT_CONTAINER_LIGHT:I = 0xa

.field private static final TONE_ON_ACCENT_DARK:I = 0x14

.field private static final TONE_ON_ACCENT_LIGHT:I = 0x64


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static compositeARGBWithAlpha(II)I
    .locals 1
    .param p0, "originalARGB"    # I
    .param p1, "alpha"    # I

    .line 233
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    .line 234
    .end local p1    # "alpha":I
    .local v0, "alpha":I
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    return p1
.end method

.method public static getColor(Landroid/content/Context;II)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorAttributeResId"    # I
    .param p2, "defaultValue"    # I

    .line 110
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 111
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v1

    return v1

    .line 114
    :cond_0
    return p2
.end method

.method public static getColor(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorAttributeResId"    # I
    .param p2, "errorMessageComponent"    # Ljava/lang/String;

    .line 87
    nop

    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    .line 87
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v0

    return v0
.end method

.method public static getColor(Landroid/view/View;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "colorAttributeResId"    # I

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v0

    return v0
.end method

.method public static getColor(Landroid/view/View;II)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "colorAttributeResId"    # I
    .param p2, "defaultValue"    # I

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method private static getColorRole(II)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "tone"    # I

    .line 303
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 304
    .local v0, "hctColor":Lcom/google/android/material/color/utilities/Hct;
    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/color/utilities/Hct;->setTone(D)V

    .line 305
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v1

    return v1
.end method

.method public static getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;
    .locals 5
    .param p0, "color"    # I
    .param p1, "isLightTheme"    # Z

    .line 288
    const/16 v0, 0x5a

    if-eqz p1, :cond_0

    .line 289
    new-instance v1, Lcom/google/android/material/color/ColorRoles;

    .line 290
    const/16 v2, 0x28

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v2

    .line 291
    const/16 v3, 0x64

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v3

    .line 292
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v0

    .line 293
    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    goto :goto_0

    .line 294
    :cond_0
    new-instance v1, Lcom/google/android/material/color/ColorRoles;

    .line 295
    const/16 v2, 0x50

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v2

    .line 296
    const/16 v3, 0x14

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v3

    .line 297
    const/16 v4, 0x1e

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v4

    .line 298
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    .line 288
    :goto_0
    return-object v1
.end method

.method public static getColorRoles(Landroid/content/Context;I)Lcom/google/android/material/color/ColorRoles;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .line 275
    sget v0, Lcom/google/android/material/R$attr;->isLightTheme:I

    .line 277
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    .line 275
    invoke-static {p1, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;

    move-result-object v0

    return-object v0
.end method

.method public static getColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorAttributeResId"    # I
    .param p2, "defaultValue"    # Landroid/content/res/ColorStateList;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "resolvedColor":Landroid/content/res/ColorStateList;
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v1

    .line 129
    .local v1, "typedValue":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    .line 130
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 132
    :cond_0
    if-nez v0, :cond_1

    move-object v2, p2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public static getColorStateListOrNull(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorAttributeResId"    # I

    .line 142
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 143
    .local v0, "typedValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    return-object v1

    .line 145
    :cond_0
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 146
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 147
    :cond_1
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_2

    .line 148
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 150
    :cond_2
    return-object v1
.end method

.method public static harmonize(II)I
    .locals 1
    .param p0, "colorToHarmonize"    # I
    .param p1, "colorToHarmonizeWith"    # I

    .line 264
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/Blend;->harmonize(II)I

    move-result v0

    return v0
.end method

.method public static harmonizeWithPrimary(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorToHarmonize"    # I

    .line 250
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    .line 252
    const-class v1, Lcom/google/android/material/color/MaterialColors;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 250
    invoke-static {p1, v0}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v0

    return v0
.end method

.method public static isColorLight(I)Z
    .locals 4
    .param p0, "color"    # I

    .line 239
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static layer(II)I
    .locals 1
    .param p0, "backgroundColor"    # I
    .param p1, "overlayColor"    # I

    .line 219
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method public static layer(IIF)I
    .locals 3
    .param p0, "backgroundColor"    # I
    .param p1, "overlayColor"    # I
    .param p2, "overlayAlpha"    # F

    .line 208
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 209
    .local v0, "computedAlpha":I
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 210
    .local v1, "computedOverlayColor":I
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result v2

    return v2
.end method

.method public static layer(Landroid/view/View;II)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "backgroundColorAttributeResId"    # I
    .param p2, "overlayColorAttributeResId"    # I

    .line 181
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/MaterialColors;->layer(Landroid/view/View;IIF)I

    move-result v0

    return v0
.end method

.method public static layer(Landroid/view/View;IIF)I
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "backgroundColorAttributeResId"    # I
    .param p2, "overlayColorAttributeResId"    # I
    .param p3, "overlayAlpha"    # F

    .line 194
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v0

    .line 195
    .local v0, "backgroundColor":I
    invoke-static {p0, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v1

    .line 196
    .local v1, "overlayColor":I
    invoke-static {v0, v1, p3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    return v2
.end method

.method private static resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedValue"    # Landroid/util/TypedValue;

    .line 154
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 156
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 159
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->data:I

    return v0
.end method

.method private static resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typedValue"    # Landroid/util/TypedValue;

    .line 165
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 166
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
