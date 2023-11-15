.class Lcom/google/android/material/timepicker/TimePickerClockPresenter;
.super Ljava/lang/Object;
.source "TimePickerClockPresenter.java"

# interfaces
.implements Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
.implements Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;
.implements Lcom/google/android/material/timepicker/TimePickerPresenter;


# static fields
.field private static final DEGREES_PER_HOUR:I = 0x1e

.field private static final DEGREES_PER_MINUTE:I = 0x6

.field private static final HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

.field private static final HOUR_CLOCK_VALUES:[Ljava/lang/String;

.field private static final MINUTE_CLOCK_VALUES:[Ljava/lang/String;


# instance fields
.field private broadcasting:Z

.field private hourRotation:F

.field private minuteRotation:F

.field private final time:Lcom/google/android/material/timepicker/TimeModel;

.field private final timePickerView:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 50
    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "12"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "2"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "3"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "4"

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-string v13, "5"

    aput-object v13, v1, v12

    const/4 v14, 0x6

    const-string v15, "6"

    aput-object v15, v1, v14

    const/16 v16, 0x7

    const-string v17, "7"

    aput-object v17, v1, v16

    const-string v18, "8"

    const/16 v19, 0x8

    aput-object v18, v1, v19

    const-string v18, "9"

    const/16 v20, 0x9

    aput-object v18, v1, v20

    const/16 v18, 0xa

    const-string v21, "10"

    aput-object v21, v1, v18

    const-string v22, "11"

    const/16 v23, 0xb

    aput-object v22, v1, v23

    sput-object v1, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    .line 53
    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const-string v22, "00"

    aput-object v22, v1, v2

    aput-object v5, v1, v4

    aput-object v7, v1, v6

    aput-object v9, v1, v8

    aput-object v11, v1, v10

    aput-object v13, v1, v12

    aput-object v15, v1, v14

    aput-object v17, v1, v16

    const-string v5, "8"

    aput-object v5, v1, v19

    const-string v5, "9"

    aput-object v5, v1, v20

    aput-object v21, v1, v18

    const-string v5, "11"

    aput-object v5, v1, v23

    aput-object v3, v1, v0

    const/16 v3, 0xd

    const-string v5, "13"

    aput-object v5, v1, v3

    const/16 v3, 0xe

    const-string v5, "14"

    aput-object v5, v1, v3

    const/16 v3, 0xf

    const-string v5, "15"

    aput-object v5, v1, v3

    const/16 v3, 0x10

    const-string v5, "16"

    aput-object v5, v1, v3

    const/16 v3, 0x11

    const-string v5, "17"

    aput-object v5, v1, v3

    const/16 v3, 0x12

    const-string v5, "18"

    aput-object v5, v1, v3

    const/16 v3, 0x13

    const-string v5, "19"

    aput-object v5, v1, v3

    const/16 v3, 0x14

    const-string v5, "20"

    aput-object v5, v1, v3

    const/16 v3, 0x15

    const-string v5, "21"

    aput-object v5, v1, v3

    const/16 v3, 0x16

    const-string v5, "22"

    aput-object v5, v1, v3

    const/16 v3, 0x17

    const-string v5, "23"

    aput-object v5, v1, v3

    sput-object v1, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

    .line 58
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v2

    aput-object v13, v0, v4

    aput-object v21, v0, v6

    const-string v1, "15"

    aput-object v1, v0, v8

    const-string v1, "20"

    aput-object v1, v0, v10

    const-string v1, "25"

    aput-object v1, v0, v12

    const-string v1, "30"

    aput-object v1, v0, v14

    const-string v1, "35"

    aput-object v1, v0, v16

    const-string v1, "40"

    aput-object v1, v0, v19

    const-string v1, "45"

    aput-object v1, v0, v20

    const-string v1, "50"

    aput-object v1, v0, v18

    const-string v1, "55"

    aput-object v1, v0, v23

    sput-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 1
    .param p1, "timePickerView"    # Lcom/google/android/material/timepicker/TimePickerView;
    .param p2, "time"    # Lcom/google/android/material/timepicker/TimeModel;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    .line 72
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 73
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->initialize()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/TimePickerClockPresenter;)Lcom/google/android/material/timepicker/TimeModel;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/TimePickerClockPresenter;

    .line 43
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    return-object v0
.end method

.method private getHourClockValues()[Ljava/lang/String;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_24_VALUES:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private getHourRotation()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private performHapticFeedback(II)V
    .locals 2
    .param p1, "prevHour"    # I
    .param p2, "prevMinute"    # I

    .line 149
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-eq v0, p1, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x4

    .line 151
    .local v0, "feedbackKey":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->performHapticFeedback(I)Z

    .line 153
    .end local v0    # "feedbackKey":I
    :cond_1
    return-void
.end method

.method private updateCurrentLevel()V
    .locals 3

    .line 203
    const/4 v0, 0x1

    .line 204
    .local v0, "currentLevel":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 205
    const/4 v0, 0x2

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->setCurrentLevel(I)V

    .line 208
    return-void
.end method

.method private updateTime()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->period:I

    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v2}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->updateTime(III)V

    .line 244
    return-void
.end method

.method private updateValues()V
    .locals 2

    .line 248
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->HOUR_CLOCK_VALUES:[Ljava/lang/String;

    const-string v1, "%d"

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues([Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    const-string v1, "%02d"

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues([Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method private updateValues([Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {v1, v2, p2}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerView;->showToggle()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnSelectionChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnPeriodChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    .line 87
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateValues()V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->invalidate()V

    .line 89
    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getHourRotation()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    .line 94
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    .line 95
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    .line 96
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    .line 97
    return-void
.end method

.method public onActionUp(FZ)V
    .locals 7
    .param p1, "rotation"    # F
    .param p2, "moveInEventStream"    # Z

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    .line 213
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 214
    .local v1, "prevMinute":I
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v2, v2, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 215
    .local v2, "prevHour":I
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 218
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    .line 221
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 222
    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 223
    .local v3, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v5

    .line 224
    .local v4, "isExploreByTouchEnabled":Z
    :goto_0
    if-nez v4, :cond_1

    .line 225
    const/16 v6, 0xc

    invoke-virtual {p0, v6, v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    .line 227
    .end local v3    # "am":Landroid/view/accessibility/AccessibilityManager;
    .end local v4    # "isExploreByTouchEnabled":Z
    :cond_1
    goto :goto_1

    .line 228
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 229
    .local v0, "rotationInt":I
    if-nez p2, :cond_3

    .line 231
    add-int/lit8 v3, v0, 0xf

    div-int/lit8 v3, v3, 0x1e

    .line 232
    .local v3, "newRotation":I
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    mul-int/lit8 v6, v3, 0x5

    invoke-virtual {v4, v6}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 233
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v4, v4, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 v4, v4, 0x6

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    .line 235
    .end local v3    # "newRotation":I
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    iget v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    invoke-virtual {v3, v4, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    .line 237
    .end local v0    # "rotationInt":I
    :goto_1
    iput-boolean v5, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    .line 238
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    .line 239
    invoke-direct {p0, v2, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->performHapticFeedback(II)V

    .line 240
    return-void
.end method

.method public onPeriodChange(I)V
    .locals 1
    .param p1, "period"    # I

    .line 162
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/TimeModel;->setPeriod(I)V

    .line 163
    return-void
.end method

.method public onRotate(FZ)V
    .locals 7
    .param p1, "rotation"    # F
    .param p2, "animating"    # Z

    .line 115
    iget-boolean v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->broadcasting:Z

    if-eqz v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 120
    .local v0, "prevHour":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 121
    .local v1, "prevMinute":I
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 122
    .local v2, "rotationInt":I
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v3, v3, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 123
    const/4 v3, 0x3

    .line 124
    .local v3, "minuteOffset":I
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x6

    invoke-virtual {v4, v5}, Lcom/google/android/material/timepicker/TimeModel;->setMinute(I)V

    .line 125
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v4, v4, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    mul-int/lit8 v4, v4, 0x6

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    .line 126
    .end local v3    # "minuteOffset":I
    goto :goto_0

    .line 127
    :cond_1
    const/16 v3, 0xf

    .line 129
    .local v3, "hourOffset":I
    add-int v4, v2, v3

    div-int/lit8 v4, v4, 0x1e

    .line 130
    .local v4, "hour":I
    iget-object v5, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v5, v5, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 131
    rem-int/lit8 v4, v4, 0xc

    .line 132
    iget-object v5, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v5}, Lcom/google/android/material/timepicker/TimePickerView;->getCurrentLevel()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 133
    add-int/lit8 v4, v4, 0xc

    .line 137
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v5, v4}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    .line 138
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getHourRotation()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    .line 142
    .end local v3    # "hourOffset":I
    .end local v4    # "hour":I
    :goto_0
    if-nez p2, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateTime()V

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->performHapticFeedback(II)V

    .line 146
    :cond_3
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 1
    .param p1, "selection"    # I

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->setSelection(IZ)V

    .line 158
    return-void
.end method

.method setSelection(IZ)V
    .locals 5
    .param p1, "selection"    # I
    .param p2, "animate"    # Z

    .line 166
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 168
    .local v0, "isMinute":Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView;->setAnimateOnTouchUp(Z)V

    .line 169
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 170
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 171
    if-eqz v0, :cond_1

    sget-object v2, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->MINUTE_CLOCK_VALUES:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->getHourClockValues()[Ljava/lang/String;

    move-result-object v2

    .line 172
    :goto_1
    if-eqz v0, :cond_2

    sget v3, Lcom/google/android/material/R$string;->material_minute_suffix:I

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimeModel;->getHourContentDescriptionResId()I

    move-result v3

    .line 170
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/timepicker/TimePickerView;->setValues([Ljava/lang/String;I)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->updateCurrentLevel()V

    .line 174
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->minuteRotation:F

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->hourRotation:F

    :goto_3
    invoke-virtual {v1, v2, p2}, Lcom/google/android/material/timepicker/TimePickerView;->setHandRotation(FZ)V

    .line 175
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-virtual {v1, p1}, Lcom/google/android/material/timepicker/TimePickerView;->setActiveSelection(I)V

    .line 176
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance v2, Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;

    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 177
    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/material/timepicker/TimePickerClockPresenter$1;-><init>(Lcom/google/android/material/timepicker/TimePickerClockPresenter;Landroid/content/Context;I)V

    .line 176
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/TimePickerView;->setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    new-instance v2, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;

    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    .line 190
    invoke-virtual {v3}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {v2, p0, v3, v4}, Lcom/google/android/material/timepicker/TimePickerClockPresenter$2;-><init>(Lcom/google/android/material/timepicker/TimePickerClockPresenter;Landroid/content/Context;I)V

    .line 189
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/TimePickerView;->setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 200
    return-void
.end method

.method public show()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerClockPresenter;->timePickerView:Lcom/google/android/material/timepicker/TimePickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->setVisibility(I)V

    .line 102
    return-void
.end method
