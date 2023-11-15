.class final Lcom/google/android/material/datepicker/CalendarItemStyle;
.super Ljava/lang/Object;
.source "CalendarItemStyle.java"


# instance fields
.field private final backgroundColor:Landroid/content/res/ColorStateList;

.field private final insets:Landroid/graphics/Rect;

.field private final itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final strokeColor:Landroid/content/res/ColorStateList;

.field private final strokeWidth:I

.field private final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "backgroundColor"    # Landroid/content/res/ColorStateList;
    .param p2, "textColor"    # Landroid/content/res/ColorStateList;
    .param p3, "strokeColor"    # Landroid/content/res/ColorStateList;
    .param p4, "strokeWidth"    # I
    .param p5, "itemShape"    # Lcom/google/android/material/shape/ShapeAppearanceModel;
    .param p6, "insets"    # Landroid/graphics/Rect;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 69
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 70
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 71
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 73
    iput-object p6, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 74
    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    .line 75
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 76
    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    .line 77
    iput p4, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    .line 78
    iput-object p5, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 79
    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "materialCalendarItemStyle"    # I

    .line 88
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-static {v3, v4}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    .line 92
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 93
    .local v3, "styleableArray":Landroid/content/res/TypedArray;
    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    .line 94
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 96
    .local v4, "insetLeft":I
    sget v5, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    .line 97
    invoke-virtual {v3, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 99
    .local v5, "insetTop":I
    sget v6, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    .line 100
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 102
    .local v6, "insetRight":I
    sget v7, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    .line 103
    invoke-virtual {v3, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 105
    .local v7, "insetBottom":I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .local v14, "insets":Landroid/graphics/Rect;
    sget v8, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    .line 108
    invoke-static {v0, v3, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 110
    .local v15, "backgroundColor":Landroid/content/res/ColorStateList;
    sget v8, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    .line 111
    invoke-static {v0, v3, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 113
    .local v16, "textColor":Landroid/content/res/ColorStateList;
    sget v8, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    .line 114
    invoke-static {v0, v3, v8}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 116
    .local v17, "strokeColor":Landroid/content/res/ColorStateList;
    sget v8, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    .line 117
    invoke-virtual {v3, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 119
    .local v18, "strokeWidth":I
    sget v8, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    .line 120
    invoke-virtual {v3, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 121
    .local v13, "shapeAppearanceResId":I
    sget v8, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 122
    invoke-virtual {v3, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 125
    .local v2, "shapeAppearanceOverlayResId":I
    nop

    .line 126
    invoke-static {v0, v13, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v8

    .line 127
    invoke-virtual {v8}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v19

    .line 129
    .local v19, "itemShape":Lcom/google/android/material/shape/ShapeAppearanceModel;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    new-instance v20, Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-object/from16 v8, v20

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move/from16 v12, v18

    move/from16 v21, v13

    .end local v13    # "shapeAppearanceResId":I
    .local v21, "shapeAppearanceResId":I
    move-object/from16 v13, v19

    invoke-direct/range {v8 .. v14}, Lcom/google/android/material/datepicker/CalendarItemStyle;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V

    return-object v20
.end method


# virtual methods
.method getBottomInset()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method getLeftInset()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method getRightInset()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method getTopInset()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method styleItem(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "item"    # Landroid/widget/TextView;

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 141
    return-void
.end method

.method styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 9
    .param p1, "item"    # Landroid/widget/TextView;
    .param p2, "backgroundColorOverride"    # Landroid/content/res/ColorStateList;

    .line 148
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 149
    .local v0, "backgroundDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 150
    .local v1, "shapeMask":Lcom/google/android/material/shape/MaterialShapeDrawable;
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 151
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 152
    nop

    .line 153
    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 152
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 154
    iget v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 157
    nop

    .line 158
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v4, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 162
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method
