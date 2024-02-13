.class final Lcom/google/android/material/color/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyThemeOverlay(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theme"    # I

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 39
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/material/color/ThemeUtils;->getWindowDecorViewTheme(Landroid/app/Activity;)Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 41
    .local v0, "windowDecorViewTheme":Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 45
    .end local v0    # "windowDecorViewTheme":Landroid/content/res/Resources$Theme;
    :cond_0
    return-void
.end method

.method private static getWindowDecorViewTheme(Landroid/app/Activity;)Landroid/content/res/Resources$Theme;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 50
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    return-object v3

    .line 60
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
