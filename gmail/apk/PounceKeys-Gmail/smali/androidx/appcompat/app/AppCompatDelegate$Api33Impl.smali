.class Landroidx/appcompat/app/AppCompatDelegate$Api33Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    return-void
.end method

.method static localeManagerGetApplicationLocales(Ljava/lang/Object;)Landroid/os/LocaleList;
    .locals 2
    .param p0, "localeManager"    # Ljava/lang/Object;

    .line 1073
    move-object v0, p0

    check-cast v0, Landroid/app/LocaleManager;

    .line 1074
    .local v0, "mLocaleManager":Landroid/app/LocaleManager;
    invoke-virtual {v0}, Landroid/app/LocaleManager;->getApplicationLocales()Landroid/os/LocaleList;

    move-result-object v1

    return-object v1
.end method

.method static localeManagerSetApplicationLocales(Ljava/lang/Object;Landroid/os/LocaleList;)V
    .locals 1
    .param p0, "localeManager"    # Ljava/lang/Object;
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 1067
    move-object v0, p0

    check-cast v0, Landroid/app/LocaleManager;

    .line 1068
    .local v0, "mLocaleManager":Landroid/app/LocaleManager;
    invoke-virtual {v0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Landroid/os/LocaleList;)V

    .line 1069
    return-void
.end method
