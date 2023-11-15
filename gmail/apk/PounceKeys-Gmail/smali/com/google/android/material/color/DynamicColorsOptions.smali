.class public Lcom/google/android/material/color/DynamicColorsOptions;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    }
.end annotation


# static fields
.field private static final ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private static final NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;


# instance fields
.field private contentBasedSeedColor:Ljava/lang/Integer;

.field private final onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

.field private final precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private final themeOverlay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$1;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$1;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 49
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$2;

    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$2;-><init>()V

    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$000(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    .line 62
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$100(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$Precondition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 63
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$200(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 64
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$300(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$300(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/DynamicColorsOptions;->extractSeedColorFromImage(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    .line 67
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;Lcom/google/android/material/color/DynamicColorsOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/material/color/DynamicColorsOptions$1;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/color/DynamicColorsOptions;-><init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V

    return-void
.end method

.method static synthetic access$400()Lcom/google/android/material/color/DynamicColors$Precondition;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-object v0
.end method

.method private static extractSeedColorFromImage(Landroid/graphics/Bitmap;)I
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 147
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 148
    .local v9, "height":I
    mul-int v0, v8, v9

    new-array v10, v0, [I

    .line 149
    .local v10, "bitmapPixels":[I
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 150
    const/16 v0, 0x80

    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerCelebi;->quantize([II)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getContentBasedSeedColor()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOnAppliedCallback()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-object v0
.end method

.method public getPrecondition()Lcom/google/android/material/color/DynamicColors$Precondition;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-object v0
.end method

.method public getThemeOverlay()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    return v0
.end method
