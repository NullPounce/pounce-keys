.class final Landroidx/appcompat/app/LocaleOverlayHelper;
.super Ljava/lang/Object;
.source "LocaleOverlayHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;
    .locals 4
    .param p0, "overlayLocales"    # Landroidx/core/os/LocaleListCompat;
    .param p1, "baseLocales"    # Landroidx/core/os/LocaleListCompat;

    .line 69
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 70
    .local v0, "combinedLocales":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    .line 72
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v2

    .local v2, "currLocale":Ljava/util/Locale;
    goto :goto_1

    .line 75
    .end local v2    # "currLocale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->size()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 77
    .restart local v2    # "currLocale":Ljava/util/Locale;
    :goto_1
    if-eqz v2, :cond_1

    .line 78
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v2    # "currLocale":Ljava/util/Locale;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_2
    nop

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    .line 81
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Locale;

    invoke-static {v1}, Landroidx/core/os/LocaleListCompat;->create([Ljava/util/Locale;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    return-object v1
.end method

.method static combineLocalesIfOverlayExists(Landroid/os/LocaleList;Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;
    .locals 2
    .param p0, "overlayLocales"    # Landroid/os/LocaleList;
    .param p1, "baseLocales"    # Landroid/os/LocaleList;

    .line 55
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 59
    invoke-static {p1}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroidx/appcompat/app/LocaleOverlayHelper;->combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method

.method static combineLocalesIfOverlayExists(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;
    .locals 1
    .param p0, "overlayLocales"    # Landroidx/core/os/LocaleListCompat;
    .param p1, "baseLocales"    # Landroidx/core/os/LocaleListCompat;

    .line 47
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/core/os/LocaleListCompat;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p0, p1}, Landroidx/appcompat/app/LocaleOverlayHelper;->combineLocales(Landroidx/core/os/LocaleListCompat;Landroidx/core/os/LocaleListCompat;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    return-object v0
.end method
