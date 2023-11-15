.class public Landroidx/constraintlayout/utils/widget/MotionTelltales;
.super Landroidx/constraintlayout/utils/widget/MockView;
.source "MotionTelltales.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionTelltales"


# instance fields
.field mInvertMatrix:Landroid/graphics/Matrix;

.field mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPaintTelltales:Landroid/graphics/Paint;

.field mTailColor:I

.field mTailScale:F

.field mVelocityMode:I

.field velocity:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0, p1}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 52
    const v0, -0xff01

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 53
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 52
    const v0, -0xff01

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 53
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 61
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/utils/widget/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    .line 52
    const v0, -0xff01

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    .line 53
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    if-eqz p2, :cond_3

    .line 71
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 73
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 74
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 75
    .local v3, "attr":I
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailColor:I

    if-ne v3, v4, :cond_0

    .line 76
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    goto :goto_1

    .line 77
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_velocityMode:I

    if-ne v3, v4, :cond_1

    .line 78
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    goto :goto_1

    .line 79
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionTelltales_telltales_tailScale:I

    if-ne v3, v4, :cond_2

    .line 80
    iget v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    .line 73
    .end local v3    # "attr":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroidx/constraintlayout/utils/widget/MockView;->onAttachedToWindow()V

    .line 92
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 106
    move-object/from16 v6, p0

    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/utils/widget/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 108
    .local v7, "matrix":Landroid/graphics/Matrix;
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 109
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-nez v0, :cond_1

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 111
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_0

    .line 112
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iput-object v1, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 114
    :cond_0
    return-void

    .line 116
    .end local v0    # "vp":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getWidth()I

    move-result v8

    .line 117
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->getHeight()I

    move-result v9

    .line 118
    .local v9, "height":I
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    move-object v10, v0

    .line 119
    .local v10, "f":[F
    const/4 v0, 0x0

    move v11, v0

    .local v11, "y":I
    :goto_0
    array-length v0, v10

    if-ge v11, v0, :cond_3

    .line 120
    aget v12, v10, v11

    .line 121
    .local v12, "py":F
    const/4 v0, 0x0

    move v13, v0

    .local v13, "x":I
    :goto_1
    array-length v0, v10

    if-ge v13, v0, :cond_2

    .line 122
    aget v14, v10, v13

    .line 123
    .local v14, "px":F
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-object v4, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    iget v5, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mVelocityMode:I

    move-object/from16 v1, p0

    move v2, v14

    move v3, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewVelocity(Landroid/view/View;FF[FI)V

    .line 124
    iget-object v0, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v1, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 126
    int-to-float v0, v8

    mul-float/2addr v0, v14

    .line 127
    .local v0, "sx":F
    int-to-float v1, v9

    mul-float/2addr v1, v12

    .line 128
    .local v1, "sy":F
    iget-object v2, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->velocity:[F

    const/4 v3, 0x0

    aget v3, v2, v3

    iget v4, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mTailScale:F

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    .line 129
    .local v3, "ex":F
    const/4 v5, 0x1

    aget v5, v2, v5

    mul-float/2addr v5, v4

    sub-float v4, v1, v5

    .line 130
    .local v4, "ey":F
    iget-object v5, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 131
    iget-object v2, v6, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v2

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 121
    .end local v0    # "sx":F
    .end local v1    # "sy":F
    .end local v3    # "ex":F
    .end local v4    # "ey":F
    .end local v14    # "px":F
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 119
    .end local v12    # "py":F
    .end local v13    # "x":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 137
    .end local v11    # "y":I
    :cond_3
    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 100
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/utils/widget/MockView;->onLayout(ZIIII)V

    .line 101
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->postInvalidate()V

    .line 102
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/MotionTelltales;->mText:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/MotionTelltales;->requestLayout()V

    .line 96
    return-void
.end method
