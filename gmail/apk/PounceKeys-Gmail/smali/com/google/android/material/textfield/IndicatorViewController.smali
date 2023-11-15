.class final Lcom/google/android/material/textfield/IndicatorViewController;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# static fields
.field private static final CAPTION_STATE_ERROR:I = 0x1

.field private static final CAPTION_STATE_HELPER_TEXT:I = 0x2

.field private static final CAPTION_STATE_NONE:I = 0x0

.field static final COUNTER_INDEX:I = 0x2

.field private static final DEFAULT_CAPTION_FADE_ANIMATION_DURATION:I = 0xa7

.field private static final DEFAULT_CAPTION_TRANSLATION_Y_ANIMATION_DURATION:I = 0xd9

.field static final ERROR_INDEX:I = 0x0

.field static final HELPER_INDEX:I = 0x1


# instance fields
.field private captionAnimator:Landroid/animation/Animator;

.field private captionArea:Landroid/widget/FrameLayout;

.field private captionDisplayed:I

.field private final captionFadeInAnimationDuration:I

.field private final captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private final captionFadeOutAnimationDuration:I

.field private final captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private captionToShow:I

.field private final captionTranslationYAnimationDuration:I

.field private final captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private final captionTranslationYPx:F

.field private final context:Landroid/content/Context;

.field private errorEnabled:Z

.field private errorText:Ljava/lang/CharSequence;

.field private errorTextAppearance:I

.field private errorView:Landroid/widget/TextView;

.field private errorViewAccessibilityLiveRegion:I

.field private errorViewContentDescription:Ljava/lang/CharSequence;

.field private errorViewTextColor:Landroid/content/res/ColorStateList;

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextEnabled:Z

.field private helperTextTextAppearance:I

.field private helperTextView:Landroid/widget/TextView;

.field private helperTextViewTextColor:Landroid/content/res/ColorStateList;

.field private indicatorArea:Landroid/widget/LinearLayout;

.field private indicatorsAdded:I

.field private final textInputView:Lcom/google/android/material/textfield/TextInputLayout;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3
    .param p1, "textInputView"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 136
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 137
    nop

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    .line 139
    sget v1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    .line 140
    const/16 v2, 0xd9

    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationDuration:I

    .line 142
    sget v1, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    .line 143
    const/16 v2, 0xa7

    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationDuration:I

    .line 145
    sget v1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    .line 146
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    .line 148
    sget v1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 149
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 153
    sget v1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 154
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 158
    sget v1, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 159
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 161
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/IndicatorViewController;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/textfield/IndicatorViewController;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 67
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/IndicatorViewController;

    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/IndicatorViewController;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/textfield/IndicatorViewController;

    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method private canAdjustIndicatorPadding()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 6
    .param p2, "captionEnabled"    # Z
    .param p3, "captionView"    # Landroid/widget/TextView;
    .param p4, "captionState"    # I
    .param p5, "captionToHide"    # I
    .param p6, "captionToShow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    .line 339
    .local p1, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p3, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 342
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p4, p6, :cond_2

    if-ne p4, p5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v1

    .line 343
    .local v2, "shouldShowOrHide":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 345
    if-ne p6, p4, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    invoke-direct {p0, p3, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 346
    .local v3, "animator":Landroid/animation/Animator;
    if-ne p4, p6, :cond_4

    if-eqz p5, :cond_4

    move v0, v1

    .line 348
    .local v0, "enableShowAnimation":Z
    :cond_4
    if-eqz v0, :cond_5

    .line 349
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 351
    :cond_5
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    if-ne p6, p4, :cond_6

    if-eqz p5, :cond_6

    .line 353
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 354
    .local v1, "translationYAnimator":Landroid/animation/Animator;
    iget v4, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 355
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v0    # "enableShowAnimation":Z
    .end local v1    # "translationYAnimator":Landroid/animation/Animator;
    .end local v3    # "animator":Landroid/animation/Animator;
    :cond_6
    return-void

    .line 340
    .end local v2    # "shouldShowOrHide":Z
    :cond_7
    :goto_3
    return-void
.end method

.method private createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "captionView"    # Landroid/widget/TextView;
    .param p2, "display"    # Z

    .line 361
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 362
    .local v0, "endValue":F
    :goto_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 363
    .local v1, "opacityAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p2, :cond_1

    iget v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationDuration:I

    int-to-long v2, v2

    goto :goto_1

    .line 364
    :cond_1
    iget v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    int-to-long v2, v2

    .line 363
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 365
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_2

    .line 366
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 365
    :goto_2
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 367
    return-object v1
.end method

.method private createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "captionView"    # Landroid/widget/TextView;

    .line 371
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 372
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 373
    .local v0, "translationYAnimator":Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 374
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 375
    return-object v0
.end method

.method private getCaptionViewFromDisplayState(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "captionDisplayState"    # I

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 398
    const/4 v0, 0x0

    return-object v0

    .line 394
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    return-object v0

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIndicatorPadding(ZII)I
    .locals 1
    .param p1, "isFontScaleLarge"    # Z
    .param p2, "largeFontPaddingRes"    # I
    .param p3, "defaultPadding"    # I

    .line 431
    if-eqz p1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 433
    :cond_0
    move v0, p3

    .line 431
    :goto_0
    return v0
.end method

.method private isCaptionStateError(I)Z
    .locals 2
    .param p1, "captionState"    # I

    .line 588
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 590
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 588
    :goto_0
    return v0
.end method

.method private isCaptionStateHelperText(I)Z
    .locals 1
    .param p1, "captionState"    # I

    .line 602
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 604
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0
.end method

.method private setCaptionViewVisibilities(II)V
    .locals 2
    .param p1, "captionToHide"    # I
    .param p2, "captionToShow"    # I

    .line 306
    if-ne p1, p2, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    if-eqz p2, :cond_1

    .line 311
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    .line 312
    .local v0, "captionViewToShow":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 318
    .end local v0    # "captionViewToShow":Landroid/widget/TextView;
    :cond_1
    if-eqz p1, :cond_2

    .line 319
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    .line 320
    .local v0, "captionViewDisplayed":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    .line 321
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .end local v0    # "captionViewDisplayed":Landroid/widget/TextView;
    :cond_2
    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 329
    return-void
.end method

.method private setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "captionView"    # Landroid/widget/TextView;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .line 626
    if-eqz p1, :cond_0

    .line 627
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 629
    :cond_0
    return-void
.end method

.method private setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "indicatorsAdded"    # I

    .line 479
    if-nez p2, :cond_0

    .line 480
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 482
    :cond_0
    return-void
.end method

.method private shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "captionView"    # Landroid/widget/TextView;
    .param p2, "captionText"    # Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 228
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0
.end method

.method private updateCaptionViewsVisibility(IIZ)V
    .locals 15
    .param p1, "captionToHide"    # I
    .param p2, "captionToShow"    # I
    .param p3, "animate"    # Z

    .line 239
    move-object v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p1

    if-ne v10, v8, :cond_0

    .line 240
    return-void

    .line 243
    :cond_0
    if-eqz v9, :cond_1

    .line 244
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v11, v0

    .line 245
    .local v11, "captionAnimator":Landroid/animation/AnimatorSet;
    iput-object v11, v7, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 248
    .local v12, "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 256
    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 264
    invoke-static {v11, v12}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 265
    invoke-direct/range {p0 .. p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v6

    .line 266
    .local v6, "captionViewToHide":Landroid/widget/TextView;
    invoke-direct {p0, v8}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v13

    .line 268
    .local v13, "captionViewToShow":Landroid/widget/TextView;
    new-instance v14, Lcom/google/android/material/textfield/IndicatorViewController$1;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p2

    move-object v3, v6

    move/from16 v4, p1

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/IndicatorViewController$1;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v11, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    .line 296
    .end local v6    # "captionViewToHide":Landroid/widget/TextView;
    .end local v11    # "captionAnimator":Landroid/animation/AnimatorSet;
    .end local v12    # "captionAnimatorList":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .end local v13    # "captionViewToShow":Landroid/widget/TextView;
    goto :goto_0

    .line 297
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/google/android/material/textfield/IndicatorViewController;->setCaptionViewVisibilities(II)V

    .line 299
    :goto_0
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 300
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v9}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 301
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 302
    return-void
.end method


# virtual methods
.method addIndicator(Landroid/widget/TextView;I)V
    .locals 5
    .param p1, "indicator"    # Landroid/widget/TextView;
    .param p2, "index"    # I

    .line 437
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 439
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 440
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 442
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 443
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 445
    .local v0, "captionAreaLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 452
    .end local v0    # "captionAreaLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 454
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 456
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 458
    .local v0, "indicatorAreaLp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    .end local v0    # "indicatorAreaLp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 462
    return-void
.end method

.method adjustIndicatorPadding()V
    .locals 7

    .line 402
    invoke-direct {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->canAdjustIndicatorPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 404
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v1

    .line 405
    .local v1, "isFontScaleLarge":Z
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    sget v3, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    .line 410
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    .line 407
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v3

    sget v4, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_top:I

    iget-object v5, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 415
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->material_helper_text_default_padding_top:I

    .line 416
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 411
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v4

    sget v5, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    .line 420
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v6

    .line 417
    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v5

    .line 405
    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 423
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "isFontScaleLarge":Z
    :cond_0
    return-void
.end method

.method cancelCaptionAnimator()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 382
    :cond_0
    return-void
.end method

.method errorIsDisplayed()Z
    .locals 1

    .line 580
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v0

    return v0
.end method

.method errorShouldBeShown()Z
    .locals 1

    .line 584
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result v0

    return v0
.end method

.method getErrorAccessibilityLiveRegion()I
    .locals 1

    .line 675
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    return v0
.end method

.method getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getErrorText()Ljava/lang/CharSequence;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getErrorViewCurrentTextColor()I
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getErrorViewTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getHelperText()Ljava/lang/CharSequence;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getHelperTextView()Landroid/view/View;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method getHelperTextViewColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getHelperTextViewCurrentTextColor()I
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method helperTextIsDisplayed()Z
    .locals 1

    .line 594
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result v0

    return v0
.end method

.method helperTextShouldBeShown()Z
    .locals 1

    .line 598
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result v0

    return v0
.end method

.method hideError()V
    .locals 4

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 204
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 206
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    goto :goto_0

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 213
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 214
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 213
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 215
    return-void
.end method

.method hideHelperText()V
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 180
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 181
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 183
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 184
    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 183
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 185
    return-void
.end method

.method isCaptionView(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 385
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method isErrorEnabled()Z
    .locals 1

    .line 519
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    return v0
.end method

.method isHelperTextEnabled()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    return v0
.end method

.method removeIndicator(Landroid/widget/TextView;I)V
    .locals 2
    .param p1, "indicator"    # Landroid/widget/TextView;
    .param p2, "index"    # I

    .line 465
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 466
    return-void

    .line 469
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 470
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 474
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    .line 475
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    .line 476
    return-void
.end method

.method setErrorAccessibilityLiveRegion(I)V
    .locals 1
    .param p1, "accessibilityLiveRegion"    # I

    .line 663
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    .line 664
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 665
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 667
    :cond_0
    return-void
.end method

.method setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "errorContentDescription"    # Ljava/lang/CharSequence;

    .line 656
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    .line 657
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 660
    :cond_0
    return-void
.end method

.method setErrorEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 486
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    if-ne v0, p1, :cond_0

    .line 487
    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 493
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 494
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 495
    sget v2, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 496
    nop

    .line 497
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 499
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 500
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 502
    :cond_1
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    .line 503
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 504
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorAccessibilityLiveRegion(I)V

    .line 506
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    .line 510
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 512
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 513
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 515
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    .line 516
    return-void
.end method

.method setErrorTextAppearance(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 649
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    .line 650
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    .line 653
    :cond_0
    return-void
.end method

.method setErrorViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "errorViewTextColor"    # Landroid/content/res/ColorStateList;

    .line 642
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    .line 643
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 646
    :cond_0
    return-void
.end method

.method setHelperTextAppearance(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 696
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    .line 697
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 698
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 700
    :cond_0
    return-void
.end method

.method setHelperTextEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 528
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-ne v0, p1, :cond_0

    .line 529
    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 535
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 536
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 537
    sget v2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 538
    nop

    .line 539
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 541
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 542
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 547
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    .line 548
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    .line 549
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    .line 550
    nop

    .line 551
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/google/android/material/textfield/IndicatorViewController$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/IndicatorViewController$2;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideHelperText()V

    .line 566
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 568
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    .line 569
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    .line 571
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    .line 572
    return-void
.end method

.method setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "helperTextViewTextColor"    # Landroid/content/res/ColorStateList;

    .line 689
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    .line 690
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 693
    :cond_0
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 618
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 619
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    .line 620
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 621
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 623
    :cond_0
    return-void
.end method

.method showError(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorText"    # Ljava/lang/CharSequence;

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 189
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 190
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 194
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 196
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 197
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 196
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 198
    return-void
.end method

.method showHelper(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "helperText"    # Ljava/lang/CharSequence;

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    .line 165
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 166
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 170
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 172
    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 173
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 172
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    .line 174
    return-void
.end method
