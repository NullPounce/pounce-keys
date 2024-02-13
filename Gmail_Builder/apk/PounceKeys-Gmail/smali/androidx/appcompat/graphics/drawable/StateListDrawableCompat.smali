.class public Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;
.super Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;
.source "StateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StateListDrawableCompat"


# instance fields
.field private mMutated:Z

.field private mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;Landroid/content/res/Resources;)V

    .line 85
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;)V
    .locals 0
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    .line 410
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;-><init>()V

    .line 411
    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V

    .line 414
    :cond_0
    return-void
.end method

.method constructor <init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 399
    invoke-direct {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;-><init>()V

    .line 401
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    invoke-direct {v0, p1, p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V

    .line 402
    .local v0, "newState":Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V

    .line 403
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    .line 404
    return-void
.end method

.method private inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-object v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    .line 176
    .local v2, "state":Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 179
    .local v3, "innerDepth":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    if-eq v5, v4, :cond_9

    .line 180
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    move v7, v5

    .local v7, "depth":I
    if-ge v5, v3, :cond_1

    const/4 v5, 0x3

    if-eq v6, v5, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    goto/16 :goto_5

    .line 182
    :cond_1
    :goto_1
    const/4 v5, 0x2

    if-eq v6, v5, :cond_2

    .line 183
    goto :goto_0

    .line 185
    :cond_2
    if-gt v7, v3, :cond_8

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 186
    goto :goto_0

    .line 190
    :cond_3
    sget-object v8, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem:[I

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    invoke-static {v9, v10, v1, v8}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 192
    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    .line 193
    .local v11, "dr":Landroid/graphics/drawable/Drawable;
    sget v12, Landroidx/appcompat/resources/R$styleable;->StateListDrawableItem_android_drawable:I

    const/4 v13, -0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 195
    .local v12, "drawableId":I
    if-lez v12, :cond_4

    .line 196
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v13

    move-object/from16 v14, p1

    invoke-virtual {v13, v14, v12}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_2

    .line 195
    :cond_4
    move-object/from16 v14, p1

    .line 198
    :goto_2
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->extractStateSet(Landroid/util/AttributeSet;)[I

    move-result-object v13

    .line 203
    .local v13, "states":[I
    if-nez v11, :cond_7

    .line 204
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move v6, v15

    const/4 v4, 0x4

    if-ne v15, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    .line 207
    :cond_5
    if-ne v6, v5, :cond_6

    .line 213
    nop

    .line 214
    invoke-static/range {p2 .. p5}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto :goto_4

    .line 208
    :cond_6
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_7
    :goto_4
    invoke-virtual {v2, v13, v11}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 220
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v11    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v12    # "drawableId":I
    .end local v13    # "states":[I
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 185
    :cond_8
    move-object/from16 v14, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 179
    .end local v7    # "depth":I
    :cond_9
    move-object/from16 v14, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    .line 221
    :goto_5
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 152
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    .line 154
    .local v0, "state":Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
    nop

    .line 155
    iget v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mChangingConfigurations:I

    invoke-static {p1}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->getChangingConfigurations(Landroid/content/res/TypedArray;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mChangingConfigurations:I

    .line 157
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_variablePadding:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mVariablePadding:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mVariablePadding:Z

    .line 159
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_constantSize:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mConstantSize:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mConstantSize:Z

    .line 161
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_enterFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mEnterFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mEnterFadeDuration:I

    .line 163
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_exitFadeDuration:I

    iget v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mExitFadeDuration:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mExitFadeDuration:I

    .line 165
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_dither:I

    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mDither:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mDither:Z

    .line 167
    return-void
.end method


# virtual methods
.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 95
    if-eqz p2, :cond_0

    .line 96
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->addStateSet([ILandroid/graphics/drawable/Drawable;)I

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    .line 100
    :cond_0
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 387
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 388
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    .line 389
    return-void
.end method

.method clearMutated()V
    .locals 1

    .line 320
    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->clearMutated()V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mMutated:Z

    .line 322
    return-void
.end method

.method bridge synthetic cloneConstantState()Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    move-result-object v0

    return-object v0
.end method

.method cloneConstantState()Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
    .locals 3

    .line 315
    new-instance v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;-><init>(Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method extractStateSet(Landroid/util/AttributeSet;)[I
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "j":I
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    .line 232
    .local v1, "numAttrs":I
    new-array v2, v1, [I

    .line 233
    .local v2, "states":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 234
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 235
    .local v4, "stateResId":I
    sparse-switch v4, :sswitch_data_0

    .line 244
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "j":I
    .local v5, "j":I
    const/4 v6, 0x0

    invoke-interface {p1, v3, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    move v6, v4

    goto :goto_1

    .line 242
    .end local v5    # "j":I
    .restart local v0    # "j":I
    :sswitch_0
    goto :goto_2

    .line 237
    :sswitch_1
    goto :goto_2

    .line 245
    .end local v0    # "j":I
    .restart local v5    # "j":I
    :cond_0
    neg-int v6, v4

    :goto_1
    aput v6, v2, v0

    move v0, v5

    .line 233
    .end local v4    # "stateResId":I
    .end local v5    # "j":I
    .restart local v0    # "j":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2, v0}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v2

    .line 249
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10100d0 -> :sswitch_0
        0x1010199 -> :sswitch_0
    .end sparse-switch
.end method

.method getStateCount()I
    .locals 1

    .line 264
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->getChildCount()I

    move-result v0

    return v0
.end method

.method getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "index"    # I

    .line 288
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getStateDrawableIndex([I)I
    .locals 1
    .param p1, "stateSet"    # [I

    .line 300
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->indexOfStateSet([I)I

    move-result v0

    return v0
.end method

.method getStateListState()Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    return-object v0
.end method

.method getStateSet(I)[I
    .locals 1
    .param p1, "index"    # I

    .line 276
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mStateSets:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public inflate(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "r"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    sget-object v0, Landroidx/appcompat/resources/R$styleable;->StateListDrawable:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/appcompat/resources/R$styleable;->StateListDrawable_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->setVisible(ZZ)Z

    .line 141
    invoke-direct {p0, v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 142
    invoke-virtual {p0, p2}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->updateDensity(Landroid/content/res/Resources;)V

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    invoke-direct/range {p0 .. p5}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->inflateChildElements(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->getState()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->onStateChange([I)Z

    .line 146
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 306
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 307
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->mutate()V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mMutated:Z

    .line 310
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "stateSet"    # [I

    .line 109
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->onStateChange([I)Z

    move-result v0

    .line 110
    .local v0, "changed":Z
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    invoke-virtual {v1, p1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 115
    .local v1, "idx":I
    if-gez v1, :cond_0

    .line 116
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v2, v3}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;->indexOfStateSet([I)I

    move-result v1

    .line 118
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->selectDrawable(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;

    .line 393
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableContainerCompat;->setConstantState(Landroidx/appcompat/graphics/drawable/DrawableContainerCompat$DrawableContainerState;)V

    .line 394
    instance-of v0, p1, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    if-eqz v0, :cond_0

    .line 395
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/StateListDrawableCompat;->mStateListState:Landroidx/appcompat/graphics/drawable/StateListDrawableCompat$StateListState;

    .line 397
    :cond_0
    return-void
.end method
