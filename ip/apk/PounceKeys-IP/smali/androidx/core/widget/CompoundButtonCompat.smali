.class public final Landroidx/core/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/CompoundButtonCompat$Api23Impl;,
        Landroidx/core/widget/CompoundButtonCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompat"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 125
    nop

    .line 126
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api23Impl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 73
    nop

    .line 74
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .line 109
    nop

    .line 110
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 59
    nop

    .line 60
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 64
    return-void
.end method

.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 95
    nop

    .line 96
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat$Api21Impl;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V

    .line 100
    return-void
.end method
