.class Landroidx/appcompat/app/AppCompatDelegateImpl$Api17Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createConfigurationContext(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .line 3921
    invoke-virtual {p0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static generateConfigDelta_densityDpi(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;
    .param p2, "delta"    # Landroid/content/res/Configuration;

    .line 3914
    iget v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_0

    .line 3915
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 3917
    :cond_0
    return-void
.end method

.method static setLayoutDirection(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 0
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "loc"    # Ljava/util/Locale;

    .line 3926
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 3927
    return-void
.end method

.method static setLocale(Landroid/content/res/Configuration;Ljava/util/Locale;)V
    .locals 0
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "loc"    # Ljava/util/Locale;

    .line 3931
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 3932
    return-void
.end method
