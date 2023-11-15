.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;
.super Ljava/lang/Object;
.source "TimePickerTextInputPresenter.java"

# interfaces
.implements Lcom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lcom/google/android/material/timepicker/TimePickerPresenter;


# instance fields
.field private final controller:Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

.field private final hourEditText:Landroid/widget/EditText;

.field private final hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final hourTextWatcher:Landroid/text/TextWatcher;

.field private final minuteEditText:Landroid/widget/EditText;

.field private final minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field private final minuteTextWatcher:Landroid/text/TextWatcher;

.field private final time:Lcom/google/android/material/timepicker/TimeModel;

.field private final timePickerView:Landroid/widget/LinearLayout;

.field private toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 9
    .param p1, "timePickerView"    # Landroid/widget/LinearLayout;
    .param p2, "time"    # Lcom/google/android/material/timepicker/TimeModel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$1;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Landroid/text/TextWatcher;

    .line 74
    new-instance v0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Landroid/text/TextWatcher;

    .line 98
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    .line 99
    iput-object p2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    .line 100
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 101
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/material/R$id;->material_minute_text_input:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 102
    sget v2, Lcom/google/android/material/R$id;->material_hour_text_input:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v2, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 103
    sget v3, Lcom/google/android/material/R$id;->material_label:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, "minuteLabel":Landroid/widget/TextView;
    sget v4, Lcom/google/android/material/R$id;->material_label:I

    invoke-virtual {v2, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    .local v4, "hourLabel":Landroid/widget/TextView;
    sget v5, Lcom/google/android/material/R$string;->material_timepicker_minute:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    sget v5, Lcom/google/android/material/R$string;->material_timepicker_hour:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget v5, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 109
    sget v5, Lcom/google/android/material/R$id;->selection_type:I

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 111
    iget v5, p2, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-nez v5, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->setupPeriodToggle()V

    .line 115
    :cond_0
    new-instance v5, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;

    invoke-direct {v5, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$3;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    .line 123
    .local v5, "onClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v1, v5}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->getHourInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addInputFilter(Landroid/text/InputFilter;)V

    .line 126
    invoke-virtual {p2}, Lcom/google/android/material/timepicker/TimeModel;->getMinuteInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addInputFilter(Landroid/text/InputFilter;)V

    .line 128
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Landroid/widget/EditText;

    .line 129
    invoke-virtual {v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Landroid/widget/EditText;

    .line 130
    nop

    .line 137
    new-instance v6, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

    invoke-direct {v6, v2, v1, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/TimeModel;)V

    iput-object v6, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->controller:Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

    .line 138
    new-instance v6, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;

    .line 139
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {v6, p0, v7, v8, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$4;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V

    .line 138
    invoke-virtual {v2, v6}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 151
    new-instance v2, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;

    .line 152
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {v2, p0, v6, v7, p2}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$5;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;Landroid/content/Context;ILcom/google/android/material/timepicker/TimeModel;)V

    .line 151
    invoke-virtual {v1, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->initialize()V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 53
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    return-object v0
.end method

.method private addTextWatchers()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    return-void
.end method

.method private removeTextWatchers()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    return-void
.end method

.method private static setCursorDrawableColor(Landroid/widget/EditText;I)V
    .locals 11
    .param p0, "view"    # Landroid/widget/EditText;
    .param p1, "color"    # I

    .line 257
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 259
    .local v1, "cursorDrawableResField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 260
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 261
    .local v3, "cursorDrawableResId":I
    const-class v4, Landroid/widget/TextView;

    const-string v5, "mEditor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 262
    .local v4, "editorField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 263
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 264
    .local v5, "editor":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 265
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "mCursorDrawable"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 266
    .local v7, "cursorDrawableField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 267
    invoke-static {v0, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 268
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, p1, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 269
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    aput-object v8, v9, v2

    move-object v2, v9

    .line 270
    .local v2, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "cursorDrawableResField":Ljava/lang/reflect/Field;
    .end local v2    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "cursorDrawableResId":I
    .end local v4    # "editorField":Ljava/lang/reflect/Field;
    .end local v5    # "editor":Ljava/lang/Object;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "cursorDrawableField":Ljava/lang/reflect/Field;
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    .line 274
    :goto_0
    return-void
.end method

.method private setTime(Lcom/google/android/material/timepicker/TimeModel;)V
    .locals 4
    .param p1, "time"    # Lcom/google/android/material/timepicker/TimeModel;

    .line 184
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->removeTextWatchers()V

    .line 185
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 186
    .local v0, "current":Ljava/util/Locale;
    iget v1, p1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%02d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "minuteFormatted":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "hourFormatted":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v3, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v3, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->addTextWatchers()V

    .line 191
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    .line 192
    return-void
.end method

.method private setupPeriodToggle()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    sget v1, Lcom/google/android/material/R$id;->material_clock_period_toggle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 197
    new-instance v1, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lcom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 206
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    .line 207
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    .line 208
    return-void
.end method

.method private updateSelection()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    nop

    .line 216
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-nez v1, :cond_1

    .line 217
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_am_button:I

    goto :goto_0

    .line 218
    :cond_1
    sget v1, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    .line 215
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public clearCheck()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 284
    return-void
.end method

.method public hide()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 239
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->addTextWatchers()V

    .line 169
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->setTime(Lcom/google/android/material/timepicker/TimeModel;)V

    .line 170
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->controller:Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputKeyController;->bind()V

    .line 171
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->setTime(Lcom/google/android/material/timepicker/TimeModel;)V

    .line 248
    return-void
.end method

.method synthetic lambda$setupPeriodToggle$0$com-google-android-material-timepicker-TimePickerTextInputPresenter(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 2
    .param p1, "group"    # Lcom/google/android/material/button/MaterialButtonToggleGroup;
    .param p2, "checkedId"    # I
    .param p3, "isChecked"    # Z

    .line 198
    if-nez p3, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    sget v0, Lcom/google/android/material/R$id;->material_clock_period_pm_button:I

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 203
    .local v0, "period":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimeModel;->setPeriod(I)V

    .line 204
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 4
    .param p1, "selection"    # I

    .line 223
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iput p1, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 224
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 225
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 226
    invoke-direct {p0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    .line 227
    return-void
.end method

.method public resetChecked()V
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 279
    return-void
.end method

.method public show()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;

    iget v0, v0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->onSelectionChanged(I)V

    .line 233
    return-void
.end method
