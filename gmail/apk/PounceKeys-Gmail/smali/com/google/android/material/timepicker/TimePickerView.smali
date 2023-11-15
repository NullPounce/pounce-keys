.class Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TimePickerView.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerControls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;,
        Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;,
        Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;
    }
.end annotation


# static fields
.field static final GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "android.view.View"


# instance fields
.field private final clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

.field private final clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

.field private final hourView:Lcom/google/android/material/chip/Chip;

.field private final minuteView:Lcom/google/android/material/chip/Chip;

.field private onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

.field private onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

.field private onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

.field private final selectionListener:Landroid/view/View$OnClickListener;

.field private final toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerView$1;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->material_timepicker:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 104
    sget v0, Lcom/google/android/material/R$id;->material_clock_face:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockFaceView;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 105
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 107
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/TimePickerView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 118
    sget v0, Lcom/google/android/material/R$id;->material_minute_tv:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    .line 119
    sget v0, Lcom/google/android/material/R$id;->material_hour_tv:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    .line 120
    sget v0, Lcom/google/android/material/R$id;->material_clock_hand:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/timepicker/ClockHandView;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    .line 122
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V

    .line 124
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerView;->setUpDisplay()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 56
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/TimePickerView;)Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/TimePickerView;

    .line 56
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    return-object v0
.end method

.method private setUpDisplay()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    sget v1, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->selectionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    const-string v1, "android.view.View"

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method private setupDoubleTap()V
    .locals 3

    .line 129
    new-instance v0, Landroid/view/GestureDetector;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/timepicker/TimePickerView$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/timepicker/TimePickerView$2;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 144
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerView$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/timepicker/TimePickerView$3;-><init>(Lcom/google/android/material/timepicker/TimePickerView;Landroid/view/GestureDetector;)V

    .line 156
    .local v1, "onTouchListener":Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    iget-object v2, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v1}, Lcom/google/android/material/chip/Chip;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 158
    return-void
.end method

.method private updateSelection(Lcom/google/android/material/chip/Chip;Z)V
    .locals 1
    .param p1, "chip"    # Lcom/google/android/material/chip/Chip;
    .param p2, "isSelected"    # Z

    .line 222
    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 223
    nop

    .line 225
    if-eqz p2, :cond_0

    .line 226
    const/4 v0, 0x2

    goto :goto_0

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 223
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 228
    return-void
.end method


# virtual methods
.method public addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V
    .locals 1
    .param p1, "onRotateListener"    # Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;

    .line 231
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->addOnRotateListener(Lcom/google/android/material/timepicker/ClockHandView$OnRotateListener;)V

    .line 232
    return-void
.end method

.method getCurrentLevel()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getCurrentLevel()I

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-timepicker-TimePickerView(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 2
    .param p1, "group"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p2, "checkedId"    # I
    .param p3, "isChecked"    # Z

    .line 108
    if-nez p3, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    if-eqz v0, :cond_2

    .line 113
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 114
    .local v0, "period":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    invoke-interface {v1, v0}, Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;->onPeriodChange(I)V

    .line 116
    .end local v0    # "period":I
    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 257
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 258
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->sendAccessibilityEvent(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public setActiveSelection(I)V
    .locals 4
    .param p1, "selection"    # I

    .line 217
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/timepicker/TimePickerView;->updateSelection(Lcom/google/android/material/chip/Chip;Z)V

    .line 218
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/timepicker/TimePickerView;->updateSelection(Lcom/google/android/material/chip/Chip;Z)V

    .line 219
    return-void
.end method

.method public setAnimateOnTouchUp(Z)V
    .locals 1
    .param p1, "animating"    # Z

    .line 194
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setAnimateOnTouchUp(Z)V

    .line 195
    return-void
.end method

.method setCurrentLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 269
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockFaceView;->setCurrentLevel(I)V

    .line 270
    return-void
.end method

.method public setHandRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .line 186
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(F)V

    .line 187
    return-void
.end method

.method public setHandRotation(FZ)V
    .locals 1
    .param p1, "rotation"    # F
    .param p2, "animate"    # Z

    .line 190
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockHandView;->setHandRotation(FZ)V

    .line 191
    return-void
.end method

.method public setHourClickDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "clickActionDelegate"    # Landroidx/core/view/AccessibilityDelegateCompat;

    .line 165
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 166
    return-void
.end method

.method public setMinuteHourDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "clickActionDelegate"    # Landroidx/core/view/AccessibilityDelegateCompat;

    .line 161
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 162
    return-void
.end method

.method public setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V
    .locals 1
    .param p1, "onActionUpListener"    # Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;

    .line 235
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/timepicker/ClockHandView;->setOnActionUpListener(Lcom/google/android/material/timepicker/ClockHandView$OnActionUpListener;)V

    .line 236
    return-void
.end method

.method setOnDoubleTapListener(Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    .line 248
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onDoubleTapListener:Lcom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    .line 249
    return-void
.end method

.method setOnPeriodChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;)V
    .locals 0
    .param p1, "onPeriodChangeListener"    # Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    .line 239
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onPeriodChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnPeriodChangeListener;

    .line 240
    return-void
.end method

.method setOnSelectionChangeListener(Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;)V
    .locals 0
    .param p1, "onSelectionChangeListener"    # Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    .line 244
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->onSelectionChangeListener:Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    .line 245
    return-void
.end method

.method public setValues([Ljava/lang/String;I)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/String;
    .param p2, "contentDescription"    # I

    .line 181
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->clockFace:Lcom/google/android/material/timepicker/ClockFaceView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/timepicker/ClockFaceView;->setValues([Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public showToggle()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    .line 253
    return-void
.end method

.method public updateTime(III)V
    .locals 5
    .param p1, "period"    # I
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 200
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 201
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    goto :goto_0

    .line 202
    :cond_0
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    :goto_0
    nop

    .line 203
    .local v0, "checkedId":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 205
    .local v1, "current":Ljava/util/Locale;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "minuteFormatted":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "hourFormatted":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerView;->minuteView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4, v2}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 211
    iget-object v4, p0, Lcom/google/android/material/timepicker/TimePickerView;->hourView:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v4, v3}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :cond_2
    return-void
.end method
