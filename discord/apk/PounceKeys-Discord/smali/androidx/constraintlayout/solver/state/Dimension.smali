.class public Landroidx/constraintlayout/solver/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatio:F

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_CONTENT:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 37
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 40
    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    .line 41
    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Object;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_CONTENT:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 37
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    .line 39
    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 40
    iput v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    .line 41
    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    return-void
.end method

.method public static Fixed(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2
    .param p0, "value"    # I

    .line 67
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 68
    .local v0, "dimension":Landroidx/constraintlayout/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->fixed(I)Landroidx/constraintlayout/solver/state/Dimension;

    .line 69
    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 73
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 74
    .local v0, "dimension":Landroidx/constraintlayout/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    .line 75
    return-object v0
.end method

.method public static Parent()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    .line 85
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # F

    .line 79
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 80
    .local v0, "dimension":Landroidx/constraintlayout/solver/state/Dimension;
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/solver/state/Dimension;->percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;

    .line 81
    return-object v0
.end method

.method public static Spread()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    .line 93
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Suggested(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p0, "value"    # I

    .line 55
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/state/Dimension;-><init>()V

    .line 56
    .local v0, "dimension":Landroidx/constraintlayout/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->suggested(I)Landroidx/constraintlayout/solver/state/Dimension;

    .line 57
    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p0, "startValue"    # Ljava/lang/Object;

    .line 61
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/state/Dimension;-><init>()V

    .line 62
    .local v0, "dimension":Landroidx/constraintlayout/solver/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;

    .line 63
    return-object v0
.end method

.method public static Wrap()Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2

    .line 89
    new-instance v0, Landroidx/constraintlayout/solver/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/solver/state/State;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 4
    .param p1, "state"    # Landroidx/constraintlayout/solver/state/State;
    .param p2, "constraintWidget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "orientation"    # I

    .line 180
    const v0, 0x7fffffff

    if-nez p3, :cond_7

    .line 181
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_2

    .line 182
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "type":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 187
    const/4 v0, 0x2

    .line 189
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    iget v2, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    iget v3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 190
    .end local v0    # "type":I
    goto/16 :goto_2

    .line 191
    :cond_2
    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    if-lez v1, :cond_3

    .line 192
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 194
    :cond_3
    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    if-ge v1, v0, :cond_4

    .line 195
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMaxWidth(I)V

    .line 197
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    .line 198
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_2

    .line 199
    :cond_5
    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_6

    .line 200
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    .line 201
    :cond_6
    if-nez v0, :cond_f

    .line 202
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 203
    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_2

    .line 207
    :cond_7
    iget-boolean v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_a

    .line 208
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    .restart local v0    # "type":I
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_8

    .line 211
    const/4 v0, 0x1

    goto :goto_1

    .line 212
    :cond_8
    sget-object v2, Landroidx/constraintlayout/solver/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_9

    .line 213
    const/4 v0, 0x2

    .line 215
    :cond_9
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    iget v2, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    iget v3, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 216
    .end local v0    # "type":I
    goto :goto_2

    .line 217
    :cond_a
    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    if-lez v1, :cond_b

    .line 218
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 220
    :cond_b
    iget v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    if-ge v1, v0, :cond_c

    .line 221
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setMaxHeight(I)V

    .line 223
    :cond_c
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    .line 224
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    .line 225
    :cond_d
    sget-object v1, Landroidx/constraintlayout/solver/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    .line 226
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    .line 227
    :cond_e
    if-nez v0, :cond_f

    .line 228
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 229
    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 233
    :cond_f
    :goto_2
    return-void
.end method

.method public fixed(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p1, "value"    # I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 152
    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 153
    return-object p0
.end method

.method public fixed(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 147
    :cond_0
    return-object p0
.end method

.method getRatio()F
    .locals 1

    .line 172
    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    return v0
.end method

.method getValue()I
    .locals 1

    .line 166
    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    return v0
.end method

.method public max(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p1, "value"    # I

    .line 116
    iget v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    if-ltz v0, :cond_0

    .line 117
    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 119
    :cond_0
    return-object p0
.end method

.method public max(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 123
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_0

    .line 124
    iput-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 125
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMax:I

    .line 127
    :cond_0
    return-object p0
.end method

.method public min(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0
    .param p1, "value"    # I

    .line 102
    if-ltz p1, :cond_0

    .line 103
    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 105
    :cond_0
    return-object p0
.end method

.method public min(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 109
    sget-object v0, Landroidx/constraintlayout/solver/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 110
    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mMin:I

    .line 112
    :cond_0
    return-object p0
.end method

.method public percent(Ljava/lang/Object;F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .line 97
    iput p2, p0, Landroidx/constraintlayout/solver/state/Dimension;->mPercent:F

    .line 98
    return-object p0
.end method

.method public ratio(F)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 0
    .param p1, "ratio"    # F

    .line 157
    return-object p0
.end method

.method setRatio(F)V
    .locals 0
    .param p1, "value"    # F

    .line 169
    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mRatio:F

    .line 170
    return-void
.end method

.method setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 163
    iput p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mValue:I

    .line 164
    return-void
.end method

.method public suggested(I)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p1, "value"    # I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 132
    return-object p0
.end method

.method public suggested(Ljava/lang/Object;)Landroidx/constraintlayout/solver/state/Dimension;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/state/Dimension;->mIsSuggested:Z

    .line 138
    return-object p0
.end method
