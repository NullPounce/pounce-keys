.class public Lcom/google/android/material/color/HarmonizedColors;
.super Ljava/lang/Object;
.source "HarmonizedColors.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/google/android/material/color/HarmonizedColors;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/HarmonizedColors;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V
    .locals 6
    .param p1, "themeAttributesTypedArray"    # Landroid/content/res/TypedArray;
    .param p2, "themeOverlayAttributesTypedArray"    # Landroid/content/res/TypedArray;
    .param p3, "colorToHarmonizeWith"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/res/TypedArray;",
            "I)V"
        }
    .end annotation

    .line 180
    .local p0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 181
    move-object v0, p2

    goto :goto_0

    .line 182
    :cond_0
    move-object v0, p1

    :goto_0
    nop

    .line 184
    .local v0, "resourceIdTypedArray":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 186
    .local v3, "resourceId":I
    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/material/color/ResourcesLoaderUtils;->isColorResource(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 190
    .local v2, "colorToHarmonize":I
    nop

    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p3}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 190
    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v2    # "colorToHarmonize":I
    .end local v3    # "resourceId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static applyToContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;

    .line 68
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    nop

    .line 72
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;

    move-result-object v0

    .line 73
    .local v0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId(I)I

    move-result v1

    .line 75
    .local v1, "themeOverlay":I
    invoke-static {p0, v0}, Lcom/google/android/material/color/ResourcesLoaderUtils;->addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 77
    invoke-static {p0, v1}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 79
    :cond_1
    return-void
.end method

.method private static createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;
    .locals 9
    .param p0, "originalContext"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/color/HarmonizedColorsOptions;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 134
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributeToHarmonizeWith()I

    move-result v1

    sget-object v2, Lcom/google/android/material/color/HarmonizedColors;->TAG:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 137
    .local v1, "colorToHarmonizeWith":I
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorResourceIds()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 138
    .local v5, "colorResourceId":I
    nop

    .line 140
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 139
    invoke-static {v6, v1}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result v6

    .line 141
    .local v6, "harmonizedColor":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v5    # "colorResourceId":I
    .end local v6    # "harmonizedColor":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v2

    .line 145
    .local v2, "colorAttributes":Lcom/google/android/material/color/HarmonizedColorAttributes;
    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {v2}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getAttributes()[I

    move-result-object v3

    .line 147
    .local v3, "attributes":[I
    array-length v4, v3

    if-lez v4, :cond_2

    .line 151
    invoke-virtual {v2}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v4

    .line 152
    .local v4, "themeOverlay":I
    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 154
    .local v5, "themeAttributesTypedArray":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_1

    .line 156
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v6, v3}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    goto :goto_1

    .line 157
    :cond_1
    const/4 v6, 0x0

    :goto_1
    nop

    .line 158
    .local v6, "themeOverlayAttributesTypedArray":Landroid/content/res/TypedArray;
    invoke-static {v0, v5, v6, v1}, Lcom/google/android/material/color/HarmonizedColors;->addHarmonizedColorAttributesToReplacementMap(Ljava/util/Map;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;I)V

    .line 164
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    if-eqz v6, :cond_2

    .line 166
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    .end local v3    # "attributes":[I
    .end local v4    # "themeOverlay":I
    .end local v5    # "themeAttributesTypedArray":Landroid/content/res/TypedArray;
    .end local v6    # "themeOverlayAttributesTypedArray":Landroid/content/res/TypedArray;
    :cond_2
    return-object v0
.end method

.method public static isHarmonizedColorAvailable()Z
    .locals 2

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/material/color/HarmonizedColorsOptions;

    .line 96
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColors;->isHarmonizedColorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-object p0

    .line 100
    :cond_0
    nop

    .line 101
    invoke-static {p0, p1}, Lcom/google/android/material/color/HarmonizedColors;->createHarmonizedColorReplacementMap(Landroid/content/Context;Lcom/google/android/material/color/HarmonizedColorsOptions;)Ljava/util/Map;

    move-result-object v0

    .line 104
    .local v0, "colorReplacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors_Empty:I

    .line 105
    invoke-virtual {p1, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions;->getThemeOverlayResourceId(I)I

    move-result v1

    .line 106
    .local v1, "themeOverlay":I
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 109
    .local v2, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 111
    invoke-static {v2, v0}, Lcom/google/android/material/color/ResourcesLoaderUtils;->addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    move-object v3, v2

    goto :goto_0

    .line 113
    :cond_1
    move-object v3, p0

    .line 111
    :goto_0
    return-object v3
.end method
