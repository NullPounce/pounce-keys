.class Lcom/google/android/material/timepicker/ClockFaceView;
.super Lcom/google/android/material/timepicker/RadialViewGroup;
.source "ClockFaceView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;


# static fields
.field private static final EPSILON:F = 0.001f

.field private static final INITIAL_CAPACITY:I = 0xc

.field private static final VALUE_PLACEHOLDER:Ljava/lang/String; = ""


# instance fields
.field private final clockHandPadding:I

.field private final clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

.field private final clockSize:I

.field private currentHandRotation:F

.field private final gradientColors:[I

.field private final gradientPositions:[F

.field private final minimumHeight:I

.field private final minimumWidth:I

.field private final scratch:Landroid/graphics/RectF;

.field private final scratchLineBounds:Landroid/graphics/Rect;

.field private final textColor:Landroid/content/res/ColorStateList;

.field private final textViewPool:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final textViewRect:Landroid/graphics/Rect;

.field private final valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    sget v0, Lcom/google/android/material/R$attr;->materialClockStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientPositions:[F

    .line 106
    sget-object v0, Lcom/google/android/material/R$styleable;->ClockFaceView:[I

    sget v1, Lcom/google/android/material/R$style;->Widget_MaterialComponents_TimePicker_Clock:I

    .line 107
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 112
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/google/android/material/R$styleable;->ClockFaceView_clockNumberTextColor:I

    .line 114
    invoke-static {p1, v0, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textColor:Landroid/content/res/ColorStateList;

    .line 116
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$layout;->material_clockface_view:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 117
    sget v3, Lcom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/ClockFaceView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    .line 118
    sget v4, Lcom/google/android/material/R$dimen;->material_clock_hand_padding:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I

    .line 119
    const v4, 0x10100a1

    filled-new-array {v4}, [I

    move-result-object v4

    .line 121
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 120
    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 122
    .local v4, "clockHandTextColor":I
    nop

    .line 123
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    filled-new-array {v4, v4, v2}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientColors:[I

    .line 124
    invoke-virtual {v3, p0}, Lcom/google/android/material/timepicker/ClockHandView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 126
    sget v2, Lcom/google/android/material/R$color;->material_timepicker_clockface:I

    .line 127
    invoke-static {p1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 130
    .local v2, "defaultBackgroundColor":I
    sget v3, Lcom/google/android/material/R$styleable;->ClockFaceView_clockFaceBackgroundColor:I

    .line 131
    invoke-static {p1, v0, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 134
    .local v3, "backgroundColor":Landroid/content/res/ColorStateList;
    nop

    .line 135
    if-nez v3, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 134
    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/android/material/timepicker/ClockFaceView;->setBackgroundColor(I)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/google/android/material/timepicker/ClockFaceView$1;

    invoke-direct {v7, p0}, Lcom/google/android/material/timepicker/ClockFaceView$1;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    .line 138
    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    invoke-virtual {p0, v5}, Lcom/google/android/material/timepicker/ClockFaceView;->setFocusable(Z)V

    .line 154
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    new-instance v5, Lcom/google/android/material/timepicker/ClockFaceView$2;

    invoke-direct {v5, p0}, Lcom/google/android/material/timepicker/ClockFaceView$2;-><init>(Lcom/google/android/material/timepicker/ClockFaceView;)V

    iput-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    .line 195
    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    .line 196
    .local v5, "initialValues":[Ljava/lang/String;
    const-string v6, ""

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/android/material/timepicker/ClockFaceView;->setValues([Ljava/lang/String;I)V

    .line 199
    sget v6, Lcom/google/android/material/R$dimen;->material_time_picker_minimum_screen_height:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumHeight:I

    .line 200
    sget v6, Lcom/google/android/material/R$dimen;->material_time_picker_minimum_screen_width:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumWidth:I

    .line 201
    sget v6, Lcom/google/android/material/R$dimen;->material_clock_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockSize:I

    .line 202
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/ClockFaceView;

    .line 68
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/ClockFaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/ClockFaceView;

    .line 68
    iget v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/ClockFaceView;

    .line 68
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/timepicker/ClockFaceView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/ClockFaceView;

    .line 68
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private findIntersectingTextView()V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockHandView;->getCurrentSelectorBox()Landroid/graphics/RectF;

    move-result-object v0

    .line 294
    .local v0, "selectorBox":Landroid/graphics/RectF;
    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getSelectedTextView(Landroid/graphics/RectF;)Landroid/widget/TextView;

    move-result-object v1

    .line 295
    .local v1, "selected":Landroid/widget/TextView;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 297
    .local v3, "tv":Landroid/widget/TextView;
    if-nez v3, :cond_0

    .line 298
    goto :goto_2

    .line 302
    :cond_0
    if-ne v3, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 305
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/timepicker/ClockFaceView;->getGradientForTextView(Landroid/graphics/RectF;Landroid/widget/TextView;)Landroid/graphics/RadialGradient;

    move-result-object v4

    .line 306
    .local v4, "radialGradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 307
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 295
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "radialGradient":Landroid/graphics/RadialGradient;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private getGradientForTextView(Landroid/graphics/RectF;Landroid/widget/TextView;)Landroid/graphics/RadialGradient;
    .locals 8
    .param p1, "selectorBox"    # Landroid/graphics/RectF;
    .param p2, "tv"    # Landroid/widget/TextView;

    .line 336
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 338
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 339
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratchLineBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 340
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    invoke-static {p1, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 345
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v2

    .line 346
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v3

    .line 347
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientColors:[I

    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->gradientPositions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 344
    return-object v0
.end method

.method private getSelectedTextView(Landroid/graphics/RectF;)Landroid/widget/TextView;
    .locals 6
    .param p1, "selectorBox"    # Landroid/graphics/RectF;

    .line 313
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 314
    .local v0, "minArea":F
    const/4 v1, 0x0

    .line 316
    .local v1, "selected":Landroid/widget/TextView;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 318
    .local v3, "tv":Landroid/widget/TextView;
    if-nez v3, :cond_0

    .line 319
    goto :goto_1

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 322
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 323
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 324
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->scratch:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v4, v5

    .line 325
    .local v4, "area":F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_1

    .line 326
    move v0, v4

    .line 327
    move-object v1, v3

    .line 316
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "area":F
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static max3(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 379
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private updateTextViews(I)V
    .locals 9
    .param p1, "contentDescription"    # I

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "isMultiLevel":Z
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 217
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 218
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 219
    iget-object v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 220
    .local v4, "textView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 221
    invoke-virtual {p0, v4}, Lcom/google/android/material/timepicker/ClockFaceView;->removeView(Landroid/view/View;)V

    .line 222
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 223
    goto :goto_1

    .line 226
    :cond_0
    if-nez v4, :cond_1

    .line 227
    sget v5, Lcom/google/android/material/R$layout;->material_clockface_textview:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    .line 228
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    invoke-virtual {p0, v4}, Lcom/google/android/material/timepicker/ClockFaceView;->addView(Landroid/view/View;)V

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget v5, Lcom/google/android/material/R$id;->material_value_index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 235
    div-int/lit8 v5, v3, 0xc

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 236
    .local v5, "level":I
    sget v7, Lcom/google/android/material/R$id;->material_clock_level:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 237
    if-le v5, v6, :cond_2

    .line 238
    const/4 v0, 0x1

    .line 241
    :cond_2
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->valueAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-static {v4, v6}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 243
    iget-object v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    if-eqz p1, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 246
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    aget-object v7, v7, v3

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 218
    .end local v4    # "textView":Landroid/widget/TextView;
    .end local v5    # "level":I
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v3, v0}, Lcom/google/android/material/timepicker/ClockHandView;->setMultiLevel(Z)V

    .line 251
    return-void
.end method


# virtual methods
.method getCurrentLevel()I
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockHandView;->getCurrentLevel()I

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 263
    invoke-super {p0, p1}, Lcom/google/android/material/timepicker/RadialViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 264
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 265
    .local v0, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    array-length v1, v1

    .line 266
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 283
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/timepicker/RadialViewGroup;->onLayout(ZIIII)V

    .line 284
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    .line 285
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 364
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 366
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    .line 367
    .local v2, "height":F
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    .line 371
    .local v3, "width":F
    iget v4, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockSize:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lcom/google/android/material/timepicker/ClockFaceView;->minimumWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v5, v6, v7}, Lcom/google/android/material/timepicker/ClockFaceView;->max3(FFF)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 373
    .local v4, "size":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 374
    .local v5, "spec":I
    invoke-virtual {p0, v4, v4}, Lcom/google/android/material/timepicker/ClockFaceView;->setMeasuredDimension(II)V

    .line 375
    invoke-super {p0, v5, v5}, Lcom/google/android/material/timepicker/RadialViewGroup;->onMeasure(II)V

    .line 376
    return-void
.end method

.method public onRotate(FZ)V
    .locals 2
    .param p1, "rotation"    # F
    .param p2, "animating"    # Z

    .line 355
    iget v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 356
    iput p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->currentHandRotation:F

    .line 357
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    .line 359
    :cond_0
    return-void
.end method

.method setCurrentLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 388
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setCurrentLevel(I)V

    .line 389
    return-void
.end method

.method public setHandRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 288
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 289
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->findIntersectingTextView()V

    .line 290
    return-void
.end method

.method public setRadius(I)V
    .locals 2
    .param p1, "radius"    # I

    .line 275
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getRadius()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 276
    invoke-super {p0, p1}, Lcom/google/android/material/timepicker/RadialViewGroup;->setRadius(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ClockFaceView;->getRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ClockHandView;->setCircleRadius(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public setValues([Ljava/lang/String;I)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "contentDescription"    # I

    .line 209
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->values:[Ljava/lang/String;

    .line 210
    invoke-direct {p0, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->updateTextViews(I)V

    .line 211
    return-void
.end method

.method protected updateLayoutParams()V
    .locals 3

    .line 255
    invoke-super {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/google/android/material/timepicker/ClockFaceView;->textViewPool:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
