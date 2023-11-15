.class Lcom/google/android/material/timepicker/ClockHandView;
.super Landroid/view/View;
.source "ClockHandView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;,
        Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private animatingOnTouchUp:Z

.field private final animationDuration:I

.field private final animationInterpolator:Landroid/animation/TimeInterpolator;

.field private final centerDotRadius:F

.field private changedDuringTouch:Z

.field private circleRadius:I

.field private currentLevel:I

.field private degRad:D

.field private downX:F

.field private downY:F

.field private isInTapRegion:Z

.field private isMultiLevel:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;",
            ">;"
        }
    .end annotation
.end field

.field private onActionUpListener:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

.field private originalDeg:F

.field private final paint:Landroid/graphics/Paint;

.field private final rotationAnimator:Landroid/animation/ValueAnimator;

.field private final scaledTouchSlop:I

.field private final selectorBox:Landroid/graphics/RectF;

.field private final selectorRadius:I

.field private final selectorStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    sget v0, Lcom/google/android/material/R$attr;->materialClockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockHandView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    .line 85
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    .line 97
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    .line 109
    sget-object v2, Lcom/google/android/material/R$styleable;->ClockHandView:[I

    sget v3, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker_Clock:I

    .line 110
    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 116
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    .line 117
    const/16 v4, 0xc8

    invoke-static {p1, v3, v4}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationDuration:I

    .line 119
    sget v3, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 120
    invoke-static {p1, v3, v4}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationInterpolator:Landroid/animation/TimeInterpolator;

    .line 124
    sget v3, Lcom/google/android/material/R$styleable;->ClockHandView_materialCircleRadius:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    .line 125
    sget v3, Lcom/google/android/material/R$styleable;->ClockHandView_selectorSize:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 127
    .local v3, "res":Landroid/content/res/Resources;
    sget v5, Lcom/google/android/material/R$dimen;->material_clock_hand_stroke_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    .line 128
    sget v5, Lcom/google/android/material/R$dimen;->material_clock_hand_center_dot_radius:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    .line 129
    sget v5, Lcom/google/android/material/R$styleable;->ClockHandView_clockHandColor:I

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 130
    .local v4, "selectorColor":I
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 134
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->scaledTouchSlop:I

    .line 135
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 136
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    return-void
.end method

.method private adjustLevel(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 344
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 345
    .local v0, "xCenter":I
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    move-result v2

    div-int/2addr v2, v1

    .line 346
    .local v2, "yCenter":I
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-static {v3, v4, p1, p2}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v3

    .line 347
    .local v3, "selectionRadius":F
    invoke-direct {p0, v1}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    move-result v4

    .line 348
    .local v4, "level2CircleRadius":I
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v5

    .line 349
    .local v5, "buffer":F
    int-to-float v6, v4

    add-float/2addr v6, v5

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    .line 350
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    move-result v1

    div-int/lit8 v8, v1, 0x2

    .line 253
    .local v8, "yCenter":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 256
    .local v9, "xCenter":I
    iget v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    move-result v10

    .line 257
    .local v10, "leveledCircleRadius":I
    int-to-float v1, v9

    int-to-float v2, v10

    iget-wide v3, v0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v11, v1, v2

    .line 258
    .local v11, "selCenterX":F
    int-to-float v1, v8

    int-to-float v2, v10

    iget-wide v3, v0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v12, v1, v2

    .line 261
    .local v12, "selCenterY":F
    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    iget v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    int-to-float v1, v1

    iget-object v2, v0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v12, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 266
    iget-wide v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 267
    .local v13, "sin":D
    iget-wide v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    .line 268
    .local v15, "cos":D
    iget v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    sub-int v1, v10, v1

    int-to-float v6, v1

    .line 269
    .local v6, "lineLength":F
    float-to-double v1, v6

    mul-double/2addr v1, v15

    double-to-int v1, v1

    add-int/2addr v1, v9

    int-to-float v5, v1

    .line 270
    .local v5, "linePointX":F
    float-to-double v1, v6

    mul-double/2addr v1, v13

    double-to-int v1, v1

    add-int/2addr v1, v8

    int-to-float v4, v1

    .line 273
    .local v4, "linePointY":F
    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/google/android/material/timepicker/ClockHandView;->selectorStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 274
    int-to-float v2, v9

    int-to-float v3, v8

    iget-object v1, v0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v4

    .end local v4    # "linePointY":F
    .local v18, "linePointY":F
    move v4, v5

    move/from16 v19, v5

    .end local v5    # "linePointX":F
    .local v19, "linePointX":F
    move/from16 v5, v18

    move/from16 v20, v6

    .end local v6    # "lineLength":F
    .local v20, "lineLength":F
    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 275
    int-to-float v1, v9

    int-to-float v2, v8

    iget v3, v0, Lcom/google/android/material/timepicker/ClockHandView;->centerDotRadius:F

    iget-object v4, v0, Lcom/google/android/material/timepicker/ClockHandView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 276
    return-void
.end method

.method private getDegreesFromXY(FF)I
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 369
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 370
    .local v0, "xCenter":I
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 371
    .local v1, "yCenter":I
    int-to-float v2, v0

    sub-float v2, p1, v2

    float-to-double v2, v2

    .line 372
    .local v2, "dX":D
    int-to-float v4, v1

    sub-float v4, p2, v4

    float-to-double v4, v4

    .line 373
    .local v4, "dY":D
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x5a

    .line 374
    .local v6, "degrees":I
    if-gez v6, :cond_0

    .line 375
    add-int/lit16 v6, v6, 0x168

    .line 377
    :cond_0
    return v6
.end method

.method private getLeveledCircleRadius(I)I
    .locals 2
    .param p1, "level"    # I

    .line 400
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    int-to-float v0, v0

    const v1, 0x3f28f5c3    # 0.66f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    :goto_0
    return v0
.end method

.method private getValuesForAnimation(F)Landroid/util/Pair;
    .locals 4
    .param p1, "degrees"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result v0

    .line 188
    .local v0, "currentDegrees":F
    sub-float v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 189
    cmpl-float v1, v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-lez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 190
    add-float/2addr p1, v3

    .line 193
    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    .line 194
    add-float/2addr v0, v3

    .line 198
    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private handleTouchInput(FFZZZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "forceSelection"    # Z
    .param p4, "touchDown"    # Z
    .param p5, "actionUp"    # Z

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->getDegreesFromXY(FF)I

    move-result v0

    .line 355
    .local v0, "degrees":I
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 356
    .local v1, "valueChanged":Z
    :goto_0
    if-eqz p4, :cond_1

    if-eqz v1, :cond_1

    .line 357
    return v3

    .line 360
    :cond_1
    if-nez v1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 365
    :cond_2
    return v2

    .line 361
    :cond_3
    :goto_1
    int-to-float v4, v0

    if-eqz p5, :cond_4

    iget-boolean v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->animatingOnTouchUp:Z

    if-eqz v5, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p0, v4, v2}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    .line 362
    return v3
.end method

.method private setHandRotationInternal(FZ)V
    .locals 11
    .param p1, "degrees"    # F
    .param p2, "animate"    # Z

    .line 203
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 204
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    .line 206
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p1, v0

    .line 208
    .local v0, "angDeg":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 210
    .local v1, "yCenter":I
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 211
    .local v2, "xCenter":I
    iget v3, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    invoke-direct {p0, v3}, Lcom/google/android/material/timepicker/ClockHandView;->getLeveledCircleRadius(I)I

    move-result v3

    .line 212
    .local v3, "leveledCircleRadius":I
    int-to-float v4, v2

    int-to-float v5, v3

    iget-wide v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 213
    .local v4, "selCenterX":F
    int-to-float v5, v1

    int-to-float v6, v3

    iget-wide v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->degRad:D

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 214
    .local v5, "selCenterY":F
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    iget v7, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    int-to-float v8, v7

    sub-float v8, v4, v8

    int-to-float v9, v7

    sub-float v9, v5, v9

    int-to-float v10, v7

    add-float/2addr v10, v4

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 220
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    .line 221
    .local v7, "listener":Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
    invoke-interface {v7, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;->onRotate(FZ)V

    .line 222
    .end local v7    # "listener":Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    .line 225
    return-void
.end method


# virtual methods
.method public addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    .line 232
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method getCurrentLevel()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    return v0
.end method

.method public getCurrentSelectorBox()Landroid/graphics/RectF;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getHandRotation()F
    .locals 1

    .line 241
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->originalDeg:F

    return v0
.end method

.method public getSelectorRadius()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->selectorRadius:I

    return v0
.end method

.method synthetic lambda$setHandRotation$0$com-google-android-material-timepicker-ClockHandView(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 168
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 169
    .local v0, "animatedValue":F
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotationInternal(FZ)V

    .line 170
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 246
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 249
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 142
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->getHandRotation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 146
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 301
    .local v0, "action":I
    const/4 v1, 0x0

    .line 302
    .local v1, "forceSelection":Z
    const/4 v2, 0x0

    .line 303
    .local v2, "actionDown":Z
    const/4 v3, 0x0

    .line 304
    .local v3, "actionUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 305
    .local v10, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 306
    .local v11, "y":F
    const/4 v4, 0x0

    const/4 v12, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 317
    :pswitch_0
    iget v5, p0, Lcom/google/android/material/timepicker/ClockHandView;->downX:F

    sub-float v5, v10, v5

    float-to-int v5, v5

    .line 318
    .local v5, "deltaX":I
    iget v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->downY:F

    sub-float v6, v11, v6

    float-to-int v6, v6

    .line 319
    .local v6, "deltaY":I
    mul-int v7, v5, v5

    mul-int v8, v6, v6

    add-int/2addr v7, v8

    .line 320
    .local v7, "distance":I
    iget v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->scaledTouchSlop:I

    if-le v7, v8, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    iput-boolean v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    .line 323
    iget-boolean v8, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    if-eqz v8, :cond_1

    .line 324
    const/4 v1, 0x1

    .line 326
    :cond_1
    if-ne v0, v12, :cond_2

    move v4, v12

    :cond_2
    move v3, v4

    .line 327
    iget-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    if-eqz v4, :cond_3

    .line 328
    invoke-direct {p0, v10, v11}, Lcom/google/android/material/timepicker/ClockHandView;->adjustLevel(FF)V

    goto :goto_1

    .line 308
    .end local v5    # "deltaX":I
    .end local v6    # "deltaY":I
    .end local v7    # "distance":I
    :pswitch_1
    iput v10, p0, Lcom/google/android/material/timepicker/ClockHandView;->downX:F

    .line 309
    iput v11, p0, Lcom/google/android/material/timepicker/ClockHandView;->downY:F

    .line 310
    iput-boolean v12, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    .line 312
    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    .line 313
    const/4 v2, 0x1

    .line 314
    nop

    .line 335
    :cond_3
    :goto_1
    iget-boolean v13, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    move-object v4, p0

    move v5, v10

    move v6, v11

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/timepicker/ClockHandView;->handleTouchInput(FFZZZ)Z

    move-result v4

    or-int/2addr v4, v13

    iput-boolean v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->changedDuringTouch:Z

    .line 336
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockHandView;->onActionUpListener:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    if-eqz v4, :cond_4

    .line 337
    invoke-direct {p0, v10, v11}, Lcom/google/android/material/timepicker/ClockHandView;->getDegreesFromXY(FF)I

    move-result v5

    int-to-float v5, v5

    iget-boolean v6, p0, Lcom/google/android/material/timepicker/ClockHandView;->isInTapRegion:Z

    invoke-interface {v4, v5, v6}, Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;->onActionUp(FZ)V

    .line 340
    :cond_4
    return v12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAnimateOnTouchUp(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .line 228
    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->animatingOnTouchUp:Z

    .line 229
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0
    .param p1, "circleRadius"    # I

    .line 293
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->circleRadius:I

    .line 294
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    .line 295
    return-void
.end method

.method setCurrentLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 386
    iput p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    .line 387
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    .line 388
    return-void
.end method

.method public setHandRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    .line 150
    return-void
.end method

.method public setHandRotation(FZ)V
    .locals 5
    .param p1, "degrees"    # F
    .param p2, "animate"    # Z

    .line 153
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotationInternal(FZ)V

    .line 159
    return-void

    .line 162
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->getValuesForAnimation(F)Landroid/util/Pair;

    move-result-object v1

    .line 163
    .local v1, "animationValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 164
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockHandView;->animationInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/timepicker/ClockHandView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/ClockHandView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/timepicker/ClockHandView$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/ClockHandView$1;-><init>(Lcom/google/android/material/timepicker/ClockHandView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->rotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 180
    return-void
.end method

.method setMultiLevel(Z)V
    .locals 1
    .param p1, "isMultiLevel"    # Z

    .line 391
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 392
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/material/timepicker/ClockHandView;->currentLevel:I

    .line 394
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->isMultiLevel:Z

    .line 395
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockHandView;->invalidate()V

    .line 396
    return-void
.end method

.method public setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    .line 236
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockHandView;->onActionUpListener:Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    .line 237
    return-void
.end method
