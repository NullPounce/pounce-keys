.class public abstract Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;,
        Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyCycleOscillator"


# instance fields
.field private mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

.field private mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method

.method static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 97
    const-string v0, "CUSTOM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet;-><init>()V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_9
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_a
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_c
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet;-><init>()V

    return-object v0

    .line 126
    :pswitch_1
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset;-><init>()V

    return-object v0

    .line 124
    :pswitch_2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset;-><init>()V

    return-object v0

    .line 122
    :pswitch_3
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset;-><init>()V

    return-object v0

    .line 120
    :pswitch_4
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 118
    :pswitch_5
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 116
    :pswitch_6
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset;-><init>()V

    return-object v0

    .line 114
    :pswitch_7
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset;-><init>()V

    return-object v0

    .line 112
    :pswitch_8
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;-><init>()V

    return-object v0

    .line 110
    :pswitch_9
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset;-><init>()V

    return-object v0

    .line 108
    :pswitch_a
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset;-><init>()V

    return-object v0

    .line 106
    :pswitch_b
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet;-><init>()V

    return-object v0

    .line 104
    :pswitch_c
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet;-><init>()V

    return-object v0

    .line 102
    :pswitch_d
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2f893320 -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .locals 2
    .param p1, "t"    # F

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .locals 2
    .param p1, "position"    # F

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->getSlope(F)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public setPoint(IIIFFF)V
    .locals 2
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "variesBy"    # I
    .param p4, "period"    # F
    .param p5, "offset"    # F
    .param p6, "value"    # F

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 166
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 168
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    .line 169
    return-void
.end method

.method public setPoint(IIIFFFLandroidx/constraintlayout/widget/ConstraintAttribute;)V
    .locals 2
    .param p1, "framePosition"    # I
    .param p2, "shape"    # I
    .param p3, "variesBy"    # I
    .param p4, "period"    # F
    .param p5, "offset"    # F
    .param p6, "value"    # F
    .param p7, "custom"    # Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 148
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    .line 150
    :cond_0
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    .line 151
    iput-object p7, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCustom:Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 152
    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setup(F)V
    .locals 12
    .param p1, "pathLength"    # F

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 174
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;

    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;-><init>(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-array v1, v0, [D

    .line 184
    .local v1, "time":[D
    const/4 v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 185
    .local v2, "values":[[D
    new-instance v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWaveShape:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v3, v4, v5, v0}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;-><init>(III)V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    .line 186
    const/4 v3, 0x0

    .line 187
    .local v3, "i":I
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    .line 188
    .local v11, "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    iget v5, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v9

    aput-wide v7, v1, v3

    .line 189
    aget-object v5, v2, v3

    iget v7, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v7, v7

    aput-wide v7, v5, v6

    .line 190
    aget-object v5, v2, v3

    iget v6, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v6, v6

    const/4 v8, 0x1

    aput-wide v6, v5, v8

    .line 191
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    iget v7, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v8, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPeriod:F

    iget v9, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mOffset:F

    iget v10, v11, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    move v6, v3

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFF)V

    .line 192
    nop

    .end local v11    # "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    add-int/lit8 v3, v3, 0x1

    .line 193
    goto :goto_0

    .line 194
    :cond_1
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCycleOscillator:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v4, p1}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->setup(F)V

    .line 195
    invoke-static {v6, v1, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 196
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 71
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    .line 73
    .local v3, "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .end local v3    # "wp":Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    goto :goto_0

    .line 75
    :cond_0
    return-object v0
.end method

.method public variesByPath()Z
    .locals 2

    .line 51
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->mVariesBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
