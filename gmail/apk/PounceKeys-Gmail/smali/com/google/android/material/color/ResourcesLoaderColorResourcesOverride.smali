.class Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride;
.super Ljava/lang/Object;
.source "ResourcesLoaderColorResourcesOverride.java"

# interfaces
.implements Lcom/google/android/material/color/ColorResourcesOverride;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride$ResourcesLoaderColorResourcesOverrideSingleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride$1;

    .line 31
    invoke-direct {p0}, Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/google/android/material/color/ColorResourcesOverride;
    .locals 1

    .line 54
    invoke-static {}, Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride$ResourcesLoaderColorResourcesOverrideSingleton;->access$000()Lcom/google/android/material/color/ResourcesLoaderColorResourcesOverride;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyIfPossible(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 46
    .local p2, "colorResourceIdsToColorValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Lcom/google/android/material/color/ResourcesLoaderUtils;->addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget v0, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_PersonalizedColors:I

    invoke-static {p1, v0}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
