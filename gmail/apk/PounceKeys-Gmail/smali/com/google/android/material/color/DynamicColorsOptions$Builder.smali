.class public Lcom/google/android/material/color/DynamicColorsOptions$Builder;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColorsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentBasedSource:Landroid/graphics/Bitmap;

.field private onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

.field private precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private themeOverlay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/google/android/material/color/DynamicColorsOptions;->access$400()Lcom/google/android/material/color/DynamicColors$Precondition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 98
    invoke-static {}, Lcom/google/android/material/color/DynamicColorsOptions;->access$500()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    .line 94
    iget v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->themeOverlay:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$Precondition;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    .line 94
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    .line 94
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    .line 94
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->contentBasedSource:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/material/color/DynamicColorsOptions;
    .locals 2

    .line 141
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/DynamicColorsOptions;-><init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;Lcom/google/android/material/color/DynamicColorsOptions$1;)V

    return-object v0
.end method

.method public setContentBasedSource(Landroid/graphics/Bitmap;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .locals 0
    .param p1, "contentBasedSource"    # Landroid/graphics/Bitmap;

    .line 135
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->contentBasedSource:Landroid/graphics/Bitmap;

    .line 136
    return-object p0
.end method

.method public setOnAppliedCallback(Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .locals 0
    .param p1, "onAppliedCallback"    # Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 121
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    .line 122
    return-object p0
.end method

.method public setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .locals 0
    .param p1, "precondition"    # Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 113
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    .line 114
    return-object p0
.end method

.method public setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    .locals 0
    .param p1, "themeOverlay"    # I

    .line 105
    iput p1, p0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->themeOverlay:I

    .line 106
    return-object p0
.end method
