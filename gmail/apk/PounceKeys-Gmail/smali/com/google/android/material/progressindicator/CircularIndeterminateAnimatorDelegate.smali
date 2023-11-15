.class final Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPLETE_END_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTANT_ROTATION_DEGREES:I = 0x5f0

.field private static final DELAY_TO_COLLAPSE_IN_MS:[I

.field private static final DELAY_TO_EXPAND_IN_MS:[I

.field private static final DELAY_TO_FADE_IN_MS:[I

.field private static final DURATION_TO_COLLAPSE_IN_MS:I = 0x29b

.field private static final DURATION_TO_COMPLETE_END_IN_MS:I = 0x14d

.field private static final DURATION_TO_EXPAND_IN_MS:I = 0x29b

.field private static final DURATION_TO_FADE_IN_MS:I = 0x14d

.field private static final EXTRA_DEGREES_PER_CYCLE:I = 0xfa

.field private static final TAIL_DEGREES_OFFSET:I = -0x14

.field private static final TOTAL_CYCLES:I = 0x4

.field private static final TOTAL_DURATION_IN_MS:I = 0x1518


# instance fields
.field private animationFraction:F

.field private animator:Landroid/animation/ObjectAnimator;

.field animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field private completeEndAnimator:Landroid/animation/ObjectAnimator;

.field private completeEndFraction:F

.field private indicatorColorIndexOffset:I

.field private final interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    const/16 v0, 0xa8c

    const/16 v1, 0xfd2

    const/4 v2, 0x0

    const/16 v3, 0x546

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    .line 45
    const/16 v0, 0xd27

    const/16 v1, 0x126d

    const/16 v2, 0x29b

    const/16 v3, 0x7e1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    .line 46
    const/16 v0, 0xe74

    const/16 v1, 0x13ba

    const/16 v2, 0x3e8

    const/16 v3, 0x92e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    .line 238
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    .line 252
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "completeEndFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1
    .param p1, "spec"    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 69
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 71
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 34
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
    .param p1, "x1"    # I

    .line 34
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 34
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getAnimationFraction()F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getCompleteEndFraction()F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
    .param p1, "x1"    # F

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setCompleteEndFraction(F)V

    return-void
.end method

.method private getAnimationFraction()F
    .locals 1

    .line 216
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    return v0
.end method

.method private getCompleteEndFraction()F
    .locals 1

    .line 229
    iget v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    return v0
.end method

.method private maybeInitializeAnimators()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    .line 88
    const-wide/16 v2, 0x1518

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 89
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 91
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    .line 104
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 118
    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private maybeUpdateSegmentColors(I)V
    .locals 11
    .param p1, "playtime"    # I

    .line 184
    const/4 v0, 0x0

    .local v0, "cycleIndex":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 185
    sget-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    aget v1, v1, v0

    .line 186
    const/16 v2, 0x14d

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getFractionInRange(III)F

    move-result v1

    .line 187
    .local v1, "timeFraction":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 188
    iget v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 190
    .local v2, "startColorIndex":I
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v4, v4, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v4, v4

    rem-int/2addr v3, v4

    .line 191
    .local v3, "endColorIndex":I
    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v4, v4, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 193
    invoke-virtual {v5}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v5

    .line 192
    invoke-static {v4, v5}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v4

    .line 194
    .local v4, "startColor":I
    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v5, v5, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 196
    invoke-virtual {v6}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v6

    .line 195
    invoke-static {v5, v6}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v5

    .line 197
    .local v5, "endColor":I
    iget-object v6, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v6, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v6

    .line 198
    .local v6, "colorFraction":F
    iget-object v7, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentColors:[I

    .line 199
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v6, v9, v10}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 200
    goto :goto_1

    .line 184
    .end local v1    # "timeFraction":F
    .end local v2    # "startColorIndex":I
    .end local v3    # "endColorIndex":I
    .end local v4    # "startColor":I
    .end local v5    # "endColor":I
    .end local v6    # "colorFraction":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "cycleIndex":I
    :cond_1
    :goto_1
    return-void
.end method

.method private setCompleteEndFraction(F)V
    .locals 0
    .param p1, "fraction"    # F

    .line 233
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 234
    return-void
.end method

.method private updateSegmentPositions(I)V
    .locals 9
    .param p1, "playtime"    # I

    .line 161
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float/2addr v1, v2

    const/high16 v3, -0x3e600000    # -20.0f

    add-float/2addr v1, v3

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 162
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 164
    const/4 v0, 0x0

    .local v0, "cycleIndex":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 166
    sget-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    aget v1, v1, v0

    .line 167
    const/16 v4, 0x29b

    invoke-virtual {p0, p1, v1, v4}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getFractionInRange(III)F

    move-result v1

    .line 168
    .local v1, "fraction":F
    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v6, v5, v2

    iget-object v7, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v7, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v7

    const/high16 v8, 0x437a0000    # 250.0f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v2

    .line 170
    sget-object v5, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    aget v5, v5, v0

    .line 171
    invoke-virtual {p0, p1, v5, v4}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getFractionInRange(III)F

    move-result v1

    .line 173
    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v5, v4, v3

    iget-object v6, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v6, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    aput v5, v4, v3

    .line 164
    .end local v1    # "fraction":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "cycleIndex":I
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v1, v0, v3

    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v4, v4, v2

    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v5, v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    aput v1, v0, v3

    .line 178
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v1, v0, v3

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v1, v4

    aput v1, v0, v3

    .line 179
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v1, v0, v2

    div-float/2addr v1, v4

    aput v1, v0, v2

    .line 180
    return-void
.end method


# virtual methods
.method cancelAnimatorImmediately()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 125
    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->resetPropertiesForNewStart()V

    .line 144
    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0
    .param p1, "callback"    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 148
    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 149
    return-void
.end method

.method requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    .line 139
    :goto_0
    return-void

    .line 131
    :cond_2
    :goto_1
    return-void
.end method

.method resetPropertiesForNewStart()V
    .locals 4

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    .line 208
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentColors:[I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 209
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v2

    aput v2, v1, v0

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    .line 211
    return-void
.end method

.method setAnimationFraction(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 221
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    .line 222
    const v0, 0x45a8c000    # 5400.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 223
    .local v0, "playtime":I
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->updateSegmentPositions(I)V

    .line 224
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->maybeUpdateSegmentColors(I)V

    .line 225
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    .line 226
    return-void
.end method

.method startAnimator()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->maybeInitializeAnimators()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->resetPropertiesForNewStart()V

    .line 81
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 82
    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    .line 154
    return-void
.end method
