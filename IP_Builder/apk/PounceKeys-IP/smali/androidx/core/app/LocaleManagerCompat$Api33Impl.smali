.class Landroidx/core/app/LocaleManagerCompat$Api33Impl;
.super Ljava/lang/Object;
.source "LocaleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/LocaleManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static localeManagerGetSystemLocales(Ljava/lang/Object;)Landroid/os/LocaleList;
    .locals 2
    .param p0, "localeManager"    # Ljava/lang/Object;

    .line 126
    move-object v0, p0

    check-cast v0, Landroid/app/LocaleManager;

    .line 127
    .local v0, "mLocaleManager":Landroid/app/LocaleManager;
    invoke-virtual {v0}, Landroid/app/LocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v1

    return-object v1
.end method
