.class public Lcom/google/android/material/checkbox/MaterialCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "MaterialCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$CheckedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_STATES:[[I

.field private static final DEF_STYLE_RES:I

.field private static final ERROR_STATE_SET:[I

.field private static final FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

.field private static final INDETERMINATE_STATE_SET:[I

.field public static final STATE_CHECKED:I = 0x1

.field public static final STATE_INDETERMINATE:I = 0x2

.field public static final STATE_UNCHECKED:I


# instance fields
.field private broadcasting:Z

.field private buttonDrawable:Landroid/graphics/drawable/Drawable;

.field private buttonIconDrawable:Landroid/graphics/drawable/Drawable;

.field buttonIconTintList:Landroid/content/res/ColorStateList;

.field private buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field buttonTintList:Landroid/content/res/ColorStateList;

.field private centerIfNoTextEnabled:Z

.field private checkedState:I

.field private currentStateChecked:[I

.field private customStateDescription:Ljava/lang/CharSequence;

.field private errorAccessibilityLabel:Ljava/lang/CharSequence;

.field private errorShown:Z

.field private materialThemeColorsTintList:Landroid/content/res/ColorStateList;

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onErrorChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field private final transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private useMaterialThemeColors:Z

.field private usingMaterialButtonDrawable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 83
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    .line 121
    sget v0, Lcom/google/android/material/R$attr;->state_indeterminate:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->INDETERMINATE_STATE_SET:[I

    .line 122
    sget v0, Lcom/google/android/material/R$attr;->state_error:I

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    .line 123
    sget v0, Lcom/google/android/material/R$attr;->state_error:I

    const v1, 0x101009e

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const v2, 0x10100a0

    filled-new-array {v1, v2}, [I

    move-result-object v3

    const v4, -0x10100a0

    filled-new-array {v1, v4}, [I

    move-result-object v1

    const v5, -0x101009e

    filled-new-array {v5, v2}, [I

    move-result-object v2

    filled-new-array {v5, v4}, [I

    move-result-object v4

    filled-new-array {v0, v3, v1, v2, v4}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    .line 134
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "android"

    const-string v3, "btn_check_material_anim"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 227
    sget v0, Lcom/google/android/material/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 231
    sget v4, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    .line 138
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 163
    nop

    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button_checked_unchecked:I

    .line 165
    invoke-static {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 167
    new-instance v0, Lcom/google/android/material/checkbox/MaterialCheckBox$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/checkbox/MaterialCheckBox$1;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 235
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 236
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getSuperButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    .line 238
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 240
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox:[I

    const/4 v7, 0x0

    new-array v5, v7, [I

    .line 241
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 244
    .local v0, "attributes":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIcon:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 247
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isMaterial3Theme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isButtonDrawableLegacy(Landroidx/appcompat/widget/TintTypedArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-super {p0, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    sget v1, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button:I

    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    iput-boolean v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    .line 252
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 253
    sget v1, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button_icon:I

    .line 254
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 257
    :cond_0
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIconTint:I

    .line 258
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    .line 260
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIconTintMode:I

    .line 262
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 261
    invoke-static {v1, v3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 263
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_useMaterialThemeColors:I

    .line 264
    invoke-virtual {v0, v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    .line 265
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_centerIfNoTextEnabled:I

    .line 266
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    .line 267
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorShown:I

    invoke-virtual {v0, v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    .line 268
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorAccessibilityLabel:I

    .line 269
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    .line 270
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_checkedState:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_checkedState:I

    .line 272
    invoke-virtual {v0, v1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 271
    invoke-virtual {p0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    .line 275
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 277
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    .line 280
    nop

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/checkbox/MaterialCheckBox;)[I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 81
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->currentStateChecked:[I

    return-object v0
.end method

.method private getButtonStateDescription()Ljava/lang/String;
    .locals 2

    .line 811
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_checked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 813
    :cond_0
    if-nez v0, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_unchecked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_indeterminate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 9

    .line 844
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 845
    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    array-length v1, v0

    new-array v1, v1, [I

    .line 846
    .local v1, "checkBoxColorsList":[I
    sget v2, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    .line 847
    .local v2, "colorControlActivated":I
    sget v3, Lcom/google/android/material/R$attr;->colorError:I

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v3

    .line 848
    .local v3, "colorError":I
    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v4

    .line 849
    .local v4, "colorSurface":I
    sget v5, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v5

    .line 851
    .local v5, "colorOnSurface":I
    nop

    .line 852
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v1, v8

    .line 853
    nop

    .line 854
    invoke-static {v4, v2, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v1, v7

    .line 855
    nop

    .line 856
    const v6, 0x3f0a3d71    # 0.54f

    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v1, v7

    .line 857
    nop

    .line 858
    const v6, 0x3ec28f5c    # 0.38f

    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v7

    const/4 v8, 0x3

    aput v7, v1, v8

    .line 859
    nop

    .line 860
    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    const/4 v7, 0x4

    aput v6, v1, v7

    .line 862
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v6, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 864
    .end local v1    # "checkBoxColorsList":[I
    .end local v2    # "colorControlActivated":I
    .end local v3    # "colorError":I
    .end local v4    # "colorSurface":I
    .end local v5    # "colorOnSurface":I
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private getSuperButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 823
    return-object v0

    .line 825
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 826
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 828
    :cond_1
    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private isButtonDrawableLegacy(Landroidx/appcompat/widget/TintTypedArray;)Z
    .locals 4
    .param p1, "attributes"    # Landroidx/appcompat/widget/TintTypedArray;

    .line 832
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCheckBox_android_button:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 833
    .local v0, "buttonResourceId":I
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonCompat:I

    .line 834
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 835
    .local v2, "buttonCompatResourceId":I
    nop

    .line 839
    sget v3, Lcom/google/android/material/checkbox/MaterialCheckBox;->FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

    if-ne v0, v3, :cond_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private refreshButtonDrawable()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    .line 726
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 725
    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 727
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 728
    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 731
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUpDefaultButtonDrawableAnimationIfNeeded()V

    .line 732
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateButtonTints()V

    .line 734
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 735
    invoke-static {v0, v1}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 734
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    .line 738
    return-void
.end method

.method private setDefaultStateDescription()V
    .locals 2

    .line 804
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->customStateDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getButtonStateDescription()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 807
    :cond_0
    return-void
.end method

.method private setUpDefaultButtonDrawableAnimationIfNeeded()V
    .locals 5

    .line 745
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    if-nez v0, :cond_0

    .line 746
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_1

    .line 750
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    .line 751
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v1, :cond_2

    .line 760
    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    sget v1, Lcom/google/android/material/R$id;->checked:I

    sget v2, Lcom/google/android/material/R$id;->unchecked:I

    iget-object v3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 761
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 763
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    sget v1, Lcom/google/android/material/R$id;->indeterminate:I

    sget v2, Lcom/google/android/material/R$id;->unchecked:I

    iget-object v3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 764
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    .line 767
    :cond_2
    return-void
.end method

.method private updateButtonTints()V
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 771
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 775
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 777
    :cond_1
    return-void
.end method

.method private updateIconTintIfNeeded()V
    .locals 0

    .line 783
    nop

    .line 790
    return-void
.end method


# virtual methods
.method public addOnCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;

    .line 442
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public addOnErrorChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;

    .line 534
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public clearOnCheckedStateChangedListeners()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 458
    return-void
.end method

.method public clearOnErrorChangedListeners()V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 550
    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCheckedState()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    return v0
.end method

.method public getErrorAccessibilityLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isCenterIfNoTextEnabled()Z
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 353
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isErrorShown()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    return v0
.end method

.method public isUseMaterialThemeColors()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-checkbox-MaterialCheckBox()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 314
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    .line 316
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUseMaterialThemeColors(Z)V

    .line 319
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3
    .param p1, "extraSpace"    # I

    .line 323
    add-int/lit8 v0, p1, 0x2

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 325
    .local v0, "drawableStates":[I
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getCheckedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 326
    sget-object v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->INDETERMINATE_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->mergeDrawableStates([I[I)[I

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    sget-object v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->mergeDrawableStates([I[I)[I

    .line 333
    :cond_1
    invoke-static {v0}, Lcom/google/android/material/drawable/DrawableUtils;->getCheckedState([I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->currentStateChecked:[I

    .line 335
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateIconTintIfNeeded()V

    .line 337
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 288
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 290
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 291
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 292
    .local v1, "direction":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v1

    .line 294
    .local v2, "dx":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 295
    .local v3, "saveCount":I
    int-to-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 297
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 301
    .local v4, "bounds":Landroid/graphics/Rect;
    nop

    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v2

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 301
    invoke-static {v5, v6, v7, v8, v9}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 305
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_1
    return-void

    .line 309
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "direction":I
    .end local v2    # "dx":I
    .end local v3    # "saveCount":I
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 310
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 368
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 369
    if-nez p1, :cond_0

    .line 370
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 880
    instance-of v0, p1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    if-nez v0, :cond_0

    .line 881
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 882
    return-void

    .line 884
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    .line 885
    .local v0, "ss":Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;
    invoke-virtual {v0}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 886
    iget v1, v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    .line 887
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 870
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 872
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 874
    .local v1, "ss":Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getCheckedState()I

    move-result v2

    iput v2, v1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    .line 875
    return-object v1
.end method

.method public removeOnCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;

    .line 452
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public removeOnErrorChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;

    .line 544
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 554
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 559
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    .line 561
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    .line 562
    return-void
.end method

.method public setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 616
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 617
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    .line 618
    return-void
.end method

.method public setButtonIconDrawableResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 602
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    return-void
.end method

.method public setButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 643
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    .line 644
    return-void

    .line 646
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    .line 647
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    .line 648
    return-void
.end method

.method public setButtonIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 671
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, p1, :cond_0

    .line 672
    return-void

    .line 674
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 675
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    .line 676
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 572
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    .line 573
    return-void

    .line 575
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    .line 576
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    .line 577
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 587
    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 588
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    .line 589
    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0
    .param p1, "centerIfNoTextEnabled"    # Z

    .line 712
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    .line 713
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    .line 349
    return-void
.end method

.method public setCheckedState(I)V
    .locals 4
    .param p1, "checkedState"    # I

    .line 385
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    if-eq v0, p1, :cond_5

    .line 386
    iput p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    .line 387
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-super {p0, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    .line 389
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setDefaultStateDescription()V

    .line 392
    iget-boolean v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    if-eqz v2, :cond_1

    .line 393
    return-void

    .line 396
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    .line 397
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;

    .line 399
    .local v2, "listener":Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;
    iget v3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    invoke-interface {v2, p0, v3}, Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;->onCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox;I)V

    .line 400
    .end local v2    # "listener":Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;
    goto :goto_1

    .line 402
    :cond_2
    iget v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v1, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, p0, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 405
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    .line 406
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    .line 407
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 408
    .local v1, "autofillManager":Landroid/view/autofill/AutofillManager;
    if-eqz v1, :cond_4

    .line 409
    invoke-virtual {v1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    .line 413
    .end local v1    # "autofillManager":Landroid/view/autofill/AutofillManager;
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    .line 416
    nop

    .line 420
    :cond_5
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 342
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    .line 343
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateIconTintIfNeeded()V

    .line 344
    return-void
.end method

.method public setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorAccessibilityLabel"    # Ljava/lang/CharSequence;

    .line 510
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    .line 511
    return-void
.end method

.method public setErrorAccessibilityLabelResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 498
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V

    .line 499
    return-void
.end method

.method public setErrorShown(Z)V
    .locals 3
    .param p1, "errorShown"    # Z

    .line 469
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    if-ne v0, p1, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    .line 473
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    .line 474
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;

    .line 475
    .local v1, "listener":Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;
    iget-boolean v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    invoke-interface {v1, p0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;->onErrorChanged(Lcom/google/android/material/checkbox/MaterialCheckBox;Z)V

    .line 476
    .end local v1    # "listener":Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;
    goto :goto_0

    .line 477
    :cond_1
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 363
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 364
    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 795
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->customStateDescription:Ljava/lang/CharSequence;

    .line 796
    if-nez p1, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setDefaultStateDescription()V

    goto :goto_0

    .line 799
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 801
    :goto_0
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 1
    .param p1, "useMaterialThemeColors"    # Z

    .line 694
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    .line 695
    if-eqz p1, :cond_0

    .line 696
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 698
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 700
    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 359
    return-void
.end method
