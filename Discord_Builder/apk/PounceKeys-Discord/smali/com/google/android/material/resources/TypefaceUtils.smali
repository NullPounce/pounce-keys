.class public Lcom/google/android/material/resources/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maybeCopyWithFontWeightAdjustment(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static maybeCopyWithFontWeightAdjustment(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 56
    nop

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result v0

    iget v1, p0, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    add-int/2addr v0, v1

    .line 57
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    .line 61
    .local v0, "adjustedWeight":I
    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 63
    .end local v0    # "adjustedWeight":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
