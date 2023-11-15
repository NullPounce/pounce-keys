.class public Landroidx/constraintlayout/motion/utils/VelocityMatrix;
.super Ljava/lang/Object;
.source "VelocityMatrix.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mDRotate:F

.field mDScaleX:F

.field mDScaleY:F

.field mDTranslateX:F

.field mDTranslateY:F

.field mRotate:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "VelocityMatrix"

    sput-object v0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransform(FFII[F)V
    .locals 16
    .param p1, "locationX"    # F
    .param p2, "locationY"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "mAnchorDpDt"    # [F

    .line 102
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    aget v4, p5, v3

    .line 103
    .local v4, "dx":F
    const/4 v5, 0x1

    aget v6, p5, v5

    .line 104
    .local v6, "dy":F
    const/high16 v7, 0x3f000000    # 0.5f

    sub-float v8, p1, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    .line 105
    .local v8, "offx":F
    sub-float v7, p2, v7

    mul-float/2addr v7, v9

    .line 106
    .local v7, "offy":F
    iget v9, v0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    add-float/2addr v4, v9

    .line 107
    iget v9, v0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    add-float/2addr v6, v9

    .line 108
    iget v9, v0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    mul-float/2addr v9, v8

    add-float/2addr v4, v9

    .line 109
    iget v9, v0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    mul-float/2addr v9, v7

    add-float/2addr v6, v9

    .line 110
    iget v9, v0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mRotate:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 111
    .local v9, "r":F
    iget v10, v0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 112
    .local v10, "dr":F
    neg-int v11, v1

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-double v11, v11

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    int-to-float v13, v2

    mul-float/2addr v13, v7

    float-to-double v13, v13

    move v15, v6

    .end local v6    # "dy":F
    .local v15, "dy":F
    float-to-double v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    sub-double/2addr v11, v13

    double-to-float v5, v11

    mul-float/2addr v5, v10

    add-float/2addr v4, v5

    .line 113
    int-to-float v5, v1

    mul-float/2addr v5, v8

    float-to-double v5, v5

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v5, v11

    int-to-float v11, v2

    mul-float/2addr v11, v7

    float-to-double v11, v11

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v5, v11

    double-to-float v5, v5

    mul-float/2addr v5, v10

    add-float v6, v15, v5

    .line 114
    .end local v15    # "dy":F
    .restart local v6    # "dy":F
    aput v4, p5, v3

    .line 115
    const/4 v3, 0x1

    aput v6, p5, v3

    .line 116
    return-void
.end method

.method public clear()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 32
    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V
    .locals 1
    .param p1, "osc_r"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .param p2, "position"    # F

    .line 62
    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    .line 65
    :cond_0
    return-void
.end method

.method public setRotationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;F)V
    .locals 1
    .param p1, "rot"    # Landroidx/constraintlayout/motion/widget/SplineSet;
    .param p2, "position"    # F

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDRotate:F

    .line 37
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mRotate:F

    .line 39
    :cond_0
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V
    .locals 1
    .param p1, "osc_sx"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .param p2, "osc_sy"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .param p3, "position"    # F

    .line 80
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 86
    :cond_1
    if-nez p2, :cond_2

    .line 87
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 89
    :cond_2
    return-void
.end method

.method public setScaleVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V
    .locals 1
    .param p1, "scale_x"    # Landroidx/constraintlayout/motion/widget/SplineSet;
    .param p2, "scale_y"    # Landroidx/constraintlayout/motion/widget/SplineSet;
    .param p3, "position"    # F

    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/motion/widget/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleX:F

    .line 56
    :cond_0
    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/motion/widget/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDScaleY:F

    .line 59
    :cond_1
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V
    .locals 1
    .param p1, "osc_x"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .param p2, "osc_y"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .param p3, "position"    # F

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 73
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 76
    :cond_1
    return-void
.end method

.method public setTranslationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V
    .locals 1
    .param p1, "trans_x"    # Landroidx/constraintlayout/motion/widget/SplineSet;
    .param p2, "trans_y"    # Landroidx/constraintlayout/motion/widget/SplineSet;
    .param p3, "position"    # F

    .line 43
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/motion/widget/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateX:F

    .line 46
    :cond_0
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/motion/widget/SplineSet;->getSlope(F)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->mDTranslateY:F

    .line 49
    :cond_1
    return-void
.end method
