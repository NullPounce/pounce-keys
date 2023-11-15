.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "DropdownMenuEndIconDelegate.java"


# static fields
.field private static final ANIMATION_FADE_IN_DURATION:I = 0x43

.field private static final ANIMATION_FADE_OUT_DURATION:I = 0x32

.field private static final IS_LOLLIPOP:Z


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private dropdownPopupActivatedAt:J

.field private dropdownPopupDirty:Z

.field private editTextHasFocus:Z

.field private fadeInAnim:Landroid/animation/ValueAnimator;

.field private fadeOutAnim:Landroid/animation/ValueAnimator;

.field private isEndIconChecked:Z

.field private final onEditTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final onIconClickListener:Landroid/view/View$OnClickListener;

.field private final touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 2
    .param p1, "endLayout"    # Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 64
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    .line 66
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onEditTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 75
    new-instance v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    .line 87
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 53
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private static castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 2
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 280
    instance-of v0, p0, Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 286
    move-object v0, p0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private varargs getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "duration"    # I
    .param p2, "values"    # [F

    .line 316
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 317
    .local v0, "animator":Landroid/animation/ValueAnimator;
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 319
    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 324
    return-object v0
.end method

.method private initAnimators()V
    .locals 3

    .line 303
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const/16 v2, 0x43

    invoke-direct {p0, v2, v1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    .line 304
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    const/16 v1, 0x32

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->getAlphaAnimator(I[F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    .line 305
    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 313
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isDropdownPopupActive()Z
    .locals 4

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    sub-long/2addr v0, v2

    .line 275
    .local v0, "activeFor":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private setEndIconChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 295
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 297
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 298
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 300
    :cond_0
    return-void
.end method

.method private setUpDropdownShowHideBehavior()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 271
    return-void
.end method

.method private showHideDropdown()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 230
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 232
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    if-nez v0, :cond_4

    .line 233
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_2

    .line 234
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    goto :goto_0

    .line 236
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    .line 237
    invoke-virtual {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->refreshIconState()V

    .line 239
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 241
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1

    .line 246
    :cond_4
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 248
    :goto_1
    return-void
.end method

.method private updateDropdownPopupDirty()V
    .locals 2

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 292
    return-void
.end method


# virtual methods
.method public afterEditTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 182
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 183
    invoke-static {v0}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 184
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method getIconContentDescriptionResId()I
    .locals 1

    .line 130
    sget v0, Lcom/google/android/material/R$string;->exposed_dropdown_menu_content_description:I

    return v0
.end method

.method getIconDrawableResId()I
    .locals 1

    .line 125
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$drawable;->mtrl_dropdown_arrow:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_ic_arrow_drop_down:I

    :goto_0
    return v0
.end method

.method getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onEditTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method getOnIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTouchExplorationStateChangeListener()Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    return-object v0
.end method

.method isBoxBackgroundModeSupported(I)Z
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 160
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isIconActivable()Z
    .locals 1

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method isIconActivated()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->editTextHasFocus:Z

    return v0
.end method

.method isIconCheckable()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method isIconChecked()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isEndIconChecked:Z

    return v0
.end method

.method synthetic lambda$afterEditTextChanged$3$com-google-android-material-textfield-DropdownMenuEndIconDelegate()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 189
    .local v0, "isPopupShowing":Z
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 190
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 191
    return-void
.end method

.method synthetic lambda$getAlphaAnimator$6$com-google-android-material-textfield-DropdownMenuEndIconDelegate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 320
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 321
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setAlpha(F)V

    .line 322
    return-void
.end method

.method synthetic lambda$new$0$com-google-android-material-textfield-DropdownMenuEndIconDelegate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    return-void
.end method

.method synthetic lambda$new$1$com-google-android-material-textfield-DropdownMenuEndIconDelegate(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 67
    iput-boolean p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->editTextHasFocus:Z

    .line 68
    invoke-virtual {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->refreshIconState()V

    .line 69
    if-nez p2, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 71
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 73
    :cond_0
    return-void
.end method

.method synthetic lambda$new$2$com-google-android-material-textfield-DropdownMenuEndIconDelegate(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 77
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 80
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 78
    :goto_0
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 82
    :cond_1
    return-void
.end method

.method synthetic lambda$setUpDropdownShowHideBehavior$4$com-google-android-material-textfield-DropdownMenuEndIconDelegate(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 255
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->isDropdownPopupActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iput-boolean v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 260
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->updateDropdownPopupDirty()V

    .line 262
    :cond_1
    return v2
.end method

.method synthetic lambda$setUpDropdownShowHideBehavior$5$com-google-android-material-textfield-DropdownMenuEndIconDelegate()V
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->updateDropdownPopupDirty()V

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setEndIconChecked(Z)V

    .line 268
    return-void
.end method

.method public onEditTextAttached(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 170
    invoke-static {p1}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->castAutoCompleteTextViewOrThrow(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 171
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior()V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    invoke-static {p1}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 177
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 203
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isShowingHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_1
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 217
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 218
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 219
    invoke-static {v0}, Lcom/google/android/material/textfield/EditTextUtils;->isEditable(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 221
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->updateDropdownPopupDirty()V

    .line 223
    :cond_0
    return-void
.end method

.method setUp()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->initAnimators()V

    .line 99
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->context:Landroid/content/Context;

    .line 100
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 101
    return-void
.end method

.method shouldTintIconOnError()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method tearDown()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    sget-boolean v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->autoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 114
    :cond_0
    return-void
.end method
