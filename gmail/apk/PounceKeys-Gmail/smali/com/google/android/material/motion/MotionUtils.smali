.class public Lcom/google/android/material/motion/MotionUtils;
.super Ljava/lang/Object;
.source "MotionUtils.java"


# static fields
.field private static final EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field private static final EASING_TYPE_FORMAT_END:Ljava/lang/String; = ")"

.field private static final EASING_TYPE_FORMAT_START:Ljava/lang/String; = "("

.field private static final EASING_TYPE_PATH:Ljava/lang/String; = "path"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLegacyControlPoint([Ljava/lang/String;I)F
    .locals 4
    .param p0, "controlPoints"    # [Ljava/lang/String;
    .param p1, "index"    # I

    .line 129
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 130
    .local v0, "controlPoint":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 135
    return v0

    .line 131
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Motion easing control point value must be between 0 and 1; instead got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "easingString"    # Ljava/lang/String;
    .param p1, "easingType"    # Ljava/lang/String;

    .line 123
    nop

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "("

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ")"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 123
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;
    .locals 7
    .param p0, "easingString"    # Ljava/lang/String;

    .line 89
    const-string v0, "cubic-bezier"

    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "controlPointsString":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "controlPoints":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 99
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result v2

    .line 100
    .local v2, "controlX1":F
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result v3

    .line 101
    .local v3, "controlY1":F
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result v4

    .line 102
    .local v4, "controlX2":F
    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result v5

    .line 103
    .local v5, "controlY2":F
    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v6

    return-object v6

    .line 93
    .end local v2    # "controlX1":F
    .end local v3    # "controlY1":F
    .end local v4    # "controlX2":F
    .end local v5    # "controlY2":F
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v0    # "controlPointsString":Ljava/lang/String;
    .end local v1    # "controlPoints":[Ljava/lang/String;
    :cond_1
    const-string v0, "path"

    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object v1

    return-object v1

    .line 108
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid motion easing type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isLegacyEasingAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p0, "easingString"    # Ljava/lang/String;

    .line 113
    const-string v0, "cubic-bezier"

    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const-string v0, "path"

    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 113
    :goto_1
    return v0
.end method

.method private static isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "easingString"    # Ljava/lang/String;
    .param p1, "easingType"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0
.end method

.method public static resolveThemeDuration(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrResId"    # I
    .param p2, "defaultDuration"    # I

    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveInteger(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrResId"    # I
    .param p2, "defaultInterpolator"    # Landroid/animation/TimeInterpolator;

    .line 68
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 69
    .local v0, "easingValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    return-object p2

    .line 73
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 80
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "easingString":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-static {v1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    move-result-object v2

    return-object v2

    .line 85
    :cond_1
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    return-object v2

    .line 74
    .end local v1    # "easingString":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
