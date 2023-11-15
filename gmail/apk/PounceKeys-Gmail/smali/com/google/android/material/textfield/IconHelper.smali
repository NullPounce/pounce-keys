.class Lcom/google/android/material/textfield/IconHelper;
.super Ljava/lang/Object;
.source "IconHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p0, "textInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p1, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p2, "iconTintList"    # Landroid/content/res/ColorStateList;
    .param p3, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 83
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    nop

    .line 88
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/IconHelper;->mergeIconState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;)[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 87
    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 89
    .local v1, "color":I
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 90
    .end local v1    # "color":I
    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 93
    :goto_0
    if-eqz p3, :cond_1

    .line 94
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 99
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_2
    return-void
.end method

.method static convertScaleType(I)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "scaleType"    # I

    .line 161
    packed-switch p0, :pswitch_data_0

    .line 175
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    return-object v0

    .line 173
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    return-object v0

    .line 171
    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    return-object v0

    .line 169
    :pswitch_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    return-object v0

    .line 167
    :pswitch_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    return-object v0

    .line 165
    :pswitch_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    return-object v0

    .line 163
    :pswitch_6
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static mergeIconState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;)[I
    .locals 6
    .param p0, "textInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p1, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;

    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    move-result-object v0

    .line 128
    .local v0, "textInputStates":[I
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawableState()[I

    move-result-object v1

    .line 130
    .local v1, "iconStates":[I
    array-length v2, v0

    .line 131
    .local v2, "index":I
    array-length v3, v0

    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 133
    .local v3, "states":[I
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-object v3
.end method

.method static refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p0, "textInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p1, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p2, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 110
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    nop

    .line 117
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/IconHelper;->mergeIconState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;)[I

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 116
    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 119
    .local v1, "color":I
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 121
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    return-void

    .line 112
    .end local v1    # "color":I
    :cond_1
    :goto_0
    return-void
.end method

.method static setCompatRippleBackgroundIfNeeded(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;

    .line 139
    nop

    .line 147
    return-void
.end method

.method private static setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 4
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 58
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    .line 59
    .local v0, "iconClickable":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 60
    .local v3, "iconLongClickable":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 61
    .local v1, "iconFocusable":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/google/android/material/internal/CheckableImageButton;->setLongClickable(Z)V

    .line 65
    nop

    .line 67
    if-eqz v1, :cond_3

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v2, 0x2

    .line 65
    :goto_1
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 70
    return-void
.end method

.method static setIconMinSize(Lcom/google/android/material/internal/CheckableImageButton;I)V
    .locals 0
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "iconSize"    # I

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setMinimumWidth(I)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setMinimumHeight(I)V

    .line 153
    return-void
.end method

.method static setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-static {p0, p2}, Lcom/google/android/material/textfield/IconHelper;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 48
    return-void
.end method

.method static setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 54
    return-void
.end method

.method static setIconScaleType(Lcom/google/android/material/internal/CheckableImageButton;Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p0, "iconView"    # Lcom/google/android/material/internal/CheckableImageButton;
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    return-void
.end method
