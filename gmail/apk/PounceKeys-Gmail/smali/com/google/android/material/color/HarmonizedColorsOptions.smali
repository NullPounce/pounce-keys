.class public Lcom/google/android/material/color/HarmonizedColorsOptions;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    }
.end annotation


# instance fields
.field private final colorAttributeToHarmonizeWith:I

.field private final colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

.field private final colorResourceIds:[I


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$000(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    .line 52
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$100(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    .line 53
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$200(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;Lcom/google/android/material/color/HarmonizedColorsOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/material/color/HarmonizedColorsOptions$1;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V

    return-void
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .locals 2

    .line 45
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColorAttributes;->createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->setColorAttributes(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->build()Lcom/google/android/material/color/HarmonizedColorsOptions;

    move-result-object v0

    .line 45
    return-object v0
.end method


# virtual methods
.method public getColorAttributeToHarmonizeWith()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    return v0
.end method

.method public getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object v0
.end method

.method public getColorResourceIds()[I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    return-object v0
.end method

.method getThemeOverlayResourceId(I)I
    .locals 1
    .param p1, "defaultThemeOverlay"    # I

    .line 135
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v0

    goto :goto_0

    .line 137
    :cond_0
    move v0, p1

    .line 135
    :goto_0
    return v0
.end method
