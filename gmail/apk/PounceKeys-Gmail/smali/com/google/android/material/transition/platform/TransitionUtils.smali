.class Lcom/google/android/material/transition/platform/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;,
        Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;
    }
.end annotation


# static fields
.field static final NO_ATTR_RES_ID:I = 0x0

.field static final NO_DURATION:I = -0x1

.field private static final PATH_TYPE_ARC:I = 0x1

.field private static final PATH_TYPE_LINEAR:I

.field private static final transformAlphaRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 321
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateArea(Landroid/graphics/RectF;)F
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/RectF;

    .line 318
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method static convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1
    .param p0, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 129
    new-instance v0, Lcom/google/android/material/transition/platform/TransitionUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method static createColorShader(I)Landroid/graphics/Shader;
    .locals 9
    .param p0, "color"    # I

    .line 267
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    move v5, p0

    move v6, p0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v8
.end method

.method static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 314
    .local p0, "value":Ljava/lang/Object;, "TT;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method static findAncestorById(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ancestorId"    # I

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "resourceName":Ljava/lang/String;
    :goto_0
    if-eqz p0, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 282
    return-object p0

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 285
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 286
    move-object p0, v1

    check-cast p0, Landroid/view/View;

    .line 290
    .end local v1    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 291
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid ancestor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewId"    # I

    .line 271
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "descendant":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 273
    return-object v0

    .line 275
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method static getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 10
    .param p0, "view"    # Landroid/view/View;

    .line 303
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 304
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 305
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 306
    .local v1, "left":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 307
    .local v2, "top":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 308
    .local v3, "right":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 309
    .local v4, "bottom":I
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    int-to-float v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5
.end method

.method static getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 295
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method static getRelativeBoundsRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static isShapeAppearanceSignificant(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Z
    .locals 2
    .param p0, "shapeAppearanceModel"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 170
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 170
    :goto_1
    return v0
.end method

.method static synthetic lambda$convertToRelativeCornerSizes$0(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/RectF;
    .param p1, "cornerSize"    # Lcom/google/android/material/shape/CornerSize;

    .line 130
    invoke-static {p0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;->createFromCornerSize(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/RelativeCornerSize;

    move-result-object v0

    return-object v0
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .line 182
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static lerp(FFFFF)F
    .locals 6
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "startFraction"    # F
    .param p3, "endFraction"    # F
    .param p4, "fraction"    # F

    .line 192
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFFZ)F

    move-result v0

    return v0
.end method

.method static lerp(FFFFFZ)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "startFraction"    # F
    .param p3, "endFraction"    # F
    .param p4, "fraction"    # F
    .param p5, "allowOvershoot"    # Z

    .line 203
    if-eqz p5, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    .line 204
    :cond_0
    invoke-static {p0, p1, p4}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result v0

    return v0

    .line 206
    :cond_1
    cmpg-float v0, p4, p2

    if-gez v0, :cond_2

    .line 207
    return p0

    .line 209
    :cond_2
    cmpl-float v0, p4, p3

    if-lez v0, :cond_3

    .line 210
    return p1

    .line 213
    :cond_3
    sub-float v0, p4, p2

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    invoke-static {p0, p1, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method static lerp(IIFFF)I
    .locals 4
    .param p0, "startValue"    # I
    .param p1, "endValue"    # I
    .param p2, "startFraction"    # F
    .param p3, "endFraction"    # F
    .param p4, "fraction"    # F

    .line 222
    cmpg-float v0, p4, p2

    if-gez v0, :cond_0

    .line 223
    return p0

    .line 225
    :cond_0
    cmpl-float v0, p4, p3

    if-lez v0, :cond_1

    .line 226
    return p1

    .line 228
    :cond_1
    int-to-float v0, p0

    int-to-float v1, p1

    sub-float v2, p4, p2

    sub-float v3, p3, p2

    div-float/2addr v2, v3

    .line 229
    invoke-static {v0, v1, v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 228
    return v0
.end method

.method static lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 7
    .param p0, "startValue"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "endValue"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "startBounds"    # Landroid/graphics/RectF;
    .param p3, "endBounds"    # Landroid/graphics/RectF;
    .param p4, "startFraction"    # F
    .param p5, "endFraction"    # F
    .param p6, "fraction"    # F

    .line 240
    cmpg-float v0, p6, p4

    if-gez v0, :cond_0

    .line 241
    return-object p0

    .line 243
    :cond_0
    cmpl-float v0, p6, p5

    if-lez v0, :cond_1

    .line 244
    return-object p1

    .line 247
    :cond_1
    new-instance v0, Lcom/google/android/material/transition/platform/TransitionUtils$1;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/TransitionUtils$1;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method static maybeAddTransition(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Landroid/transition/TransitionSet;
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 364
    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 367
    :cond_0
    return-void
.end method

.method static maybeApplyThemeDuration(Landroid/transition/Transition;Landroid/content/Context;I)Z
    .locals 4
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I

    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 81
    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    .line 82
    .local v1, "duration":I
    if-eq v1, v0, :cond_0

    .line 83
    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 84
    const/4 v0, 0x1

    return v0

    .line 87
    .end local v1    # "duration":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static maybeApplyThemeInterpolator(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I
    .param p3, "defaultInterpolator"    # Landroid/animation/TimeInterpolator;

    .line 69
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    nop

    .line 71
    invoke-static {p1, p2, p3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    .line 72
    .local v0, "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 73
    const/4 v1, 0x1

    return v1

    .line 75
    .end local v0    # "interpolator":Landroid/animation/TimeInterpolator;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static maybeApplyThemePath(Landroid/transition/Transition;Landroid/content/Context;I)Z
    .locals 2
    .param p0, "transition"    # Landroid/transition/Transition;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrResId"    # I

    .line 92
    if-eqz p2, :cond_0

    .line 93
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->resolveThemePath(Landroid/content/Context;I)Landroid/transition/PathMotion;

    move-result-object v0

    .line 94
    .local v0, "pathMotion":Landroid/transition/PathMotion;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    .line 96
    const/4 v1, 0x1

    return v1

    .line 99
    .end local v0    # "pathMotion":Landroid/transition/PathMotion;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static maybeRemoveTransition(Landroid/transition/TransitionSet;Landroid/transition/Transition;)V
    .locals 0
    .param p0, "transitionSet"    # Landroid/transition/TransitionSet;
    .param p1, "transition"    # Landroid/transition/Transition;

    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 373
    :cond_0
    return-void
.end method

.method static resolveThemePath(Landroid/content/Context;I)Landroid/transition/PathMotion;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrResId"    # I

    .line 104
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 105
    .local v0, "pathValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 106
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_2

    .line 107
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 108
    .local v1, "pathInt":I
    if-nez v1, :cond_0

    .line 110
    return-object v3

    .line 111
    :cond_0
    if-ne v1, v2, :cond_1

    .line 112
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    invoke-direct {v2}, Lcom/google/android/material/transition/platform/MaterialArcMotion;-><init>()V

    return-object v2

    .line 114
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid motion path type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    .end local v1    # "pathInt":I
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 117
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "pathString":Ljava/lang/String;
    new-instance v2, Landroid/transition/PatternPathMotion;

    invoke-static {v1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/transition/PatternPathMotion;-><init>(Landroid/graphics/Path;)V

    return-object v2

    .line 120
    .end local v1    # "pathString":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Motion path theme attribute must either be an enum value or path data string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_4
    return-object v3
.end method

.method private static saveLayerAlphaCompat(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)I
    .locals 1
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "alpha"    # I

    .line 324
    sget-object v0, Lcom/google/android/material/transition/platform/TransitionUtils;->transformAlphaRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 325
    nop

    .line 326
    invoke-virtual {p0, v0, p2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result v0

    return v0
.end method

.method static transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;)V
    .locals 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "scale"    # F
    .param p5, "alpha"    # I
    .param p6, "op"    # Lcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;

    .line 345
    if-gtz p5, :cond_0

    .line 346
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 350
    .local v0, "checkpoint":I
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 351
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 352
    const/16 v1, 0xff

    if-ge p5, v1, :cond_1

    .line 353
    invoke-static {p0, p1, p5}, Lcom/google/android/material/transition/platform/TransitionUtils;->saveLayerAlphaCompat(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)I

    .line 355
    :cond_1
    invoke-interface {p6, p0}, Lcom/google/android/material/transition/platform/TransitionUtils$CanvasOperation;->run(Landroid/graphics/Canvas;)V

    .line 356
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 357
    return-void
.end method

.method static transformCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 4
    .param p0, "shapeAppearanceModel1"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p1, "shapeAppearanceModel2"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p2, "shapeAppearanceModel1Bounds"    # Landroid/graphics/RectF;
    .param p3, "op"    # Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;

    .line 144
    invoke-static {p0, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->isShapeAppearanceSignificant(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p0

    goto :goto_0

    .line 146
    :cond_0
    move-object v0, p1

    :goto_0
    nop

    .line 148
    .local v0, "shapeAppearanceModel":Lcom/google/android/material/shape/ShapeAppearanceModel;
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 150
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 156
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 154
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 159
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 158
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 164
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v3

    .line 162
    invoke-interface {p3, v2, v3}, Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    move-result-object v2

    .line 161
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v1

    .line 148
    return-object v1
.end method
