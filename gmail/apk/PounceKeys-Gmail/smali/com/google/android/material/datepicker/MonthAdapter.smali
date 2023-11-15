.class Lcom/google/android/material/datepicker/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# static fields
.field private static final MAXIMUM_GRID_CELLS:I

.field static final MAXIMUM_WEEKS:I

.field private static final NO_DAY_NUMBER:I = -0x1


# instance fields
.field final calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field final dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field final dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

.field final month:Lcom/google/android/material/datepicker/Month;

.field private previouslySelectedDates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    .line 51
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 52
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)V
    .locals 1
    .param p1, "month"    # Lcom/google/android/material/datepicker/Month;
    .param p3, "calendarConstraints"    # Lcom/google/android/material/datepicker/CalendarConstraints;
    .param p4, "dayViewDecorator"    # Lcom/google/android/material/datepicker/DayViewDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/Month;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/DayViewDecorator;",
            ")V"
        }
    .end annotation

    .line 74
    .local p2, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 76
    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 77
    iput-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 78
    iput-object p4, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 79
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    .line 80
    return-void
.end method

.method private getDayContentDescription(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "date"    # J

    .line 242
    nop

    .line 243
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isToday(J)Z

    move-result v3

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isStartOfRange(J)Z

    move-result v4

    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isEndOfRange(J)Z

    move-result v5

    .line 242
    move-object v0, p1

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/datepicker/DateStrings;->getDayContentDescription(Landroid/content/Context;JZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeStyles(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 280
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 283
    :cond_0
    return-void
.end method

.method private isSelected(J)Z
    .locals 7
    .param p1, "date"    # J

    .line 271
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 272
    .local v1, "selectedDay":J
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 273
    const/4 v0, 0x1

    return v0

    .line 275
    .end local v1    # "selectedDay":J
    :cond_0
    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isToday(J)Z
    .locals 2
    .param p1, "date"    # J

    .line 247
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateSelectedState(Landroid/widget/TextView;JI)V
    .locals 21
    .param p1, "dayTextView"    # Landroid/widget/TextView;
    .param p2, "date"    # J
    .param p4, "dayNumber"    # I

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    if-nez v1, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 189
    .local v12, "context":Landroid/content/Context;
    invoke-direct {v0, v12, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->getDayContentDescription(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 190
    .local v13, "contentDescription":Ljava/lang/String;
    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v4}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v14

    .line 194
    .local v14, "valid":Z
    const/4 v4, 0x0

    .line 195
    .local v4, "selected":Z
    if-eqz v14, :cond_3

    .line 196
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    invoke-direct {v0, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->isSelected(J)Z

    move-result v4

    .line 198
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 199
    if-eqz v4, :cond_1

    .line 200
    iget-object v5, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object v5, v5, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    move v15, v4

    move-object v11, v5

    .local v5, "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    goto :goto_0

    .line 201
    .end local v5    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    :cond_1
    invoke-direct {v0, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->isToday(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    iget-object v5, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object v5, v5, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    move v15, v4

    move-object v11, v5

    .restart local v5    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    goto :goto_0

    .line 204
    .end local v5    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    :cond_2
    iget-object v5, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object v5, v5, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    move v15, v4

    move-object v11, v5

    .restart local v5    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    goto :goto_0

    .line 207
    .end local v5    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 208
    iget-object v5, v0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object v5, v5, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    move v15, v4

    move-object v11, v5

    .line 211
    .end local v4    # "selected":Z
    .local v11, "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    .local v15, "selected":Z
    :goto_0
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    move/from16 v10, p4

    if-eq v10, v4, :cond_4

    .line 212
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v9, v4, Lcom/google/android/material/datepicker/Month;->year:I

    .line 213
    .local v9, "year":I
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v8, v4, Lcom/google/android/material/datepicker/Month;->month:I

    .line 215
    .local v8, "month":I
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 216
    move-object v5, v12

    move v6, v9

    move v7, v8

    move/from16 v16, v8

    .end local v8    # "month":I
    .local v16, "month":I
    move/from16 v8, p4

    move/from16 v17, v9

    .end local v9    # "year":I
    .local v17, "year":I
    move v9, v14

    move v10, v15

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/datepicker/DayViewDecorator;->getBackgroundColor(Landroid/content/Context;IIIZZ)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 217
    .local v10, "backgroundColorOverride":Landroid/content/res/ColorStateList;
    invoke-virtual {v11, v1, v10}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 219
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 220
    move/from16 v6, v17

    move/from16 v7, v16

    move-object/from16 v18, v10

    .end local v10    # "backgroundColorOverride":Landroid/content/res/ColorStateList;
    .local v18, "backgroundColorOverride":Landroid/content/res/ColorStateList;
    move v10, v15

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableLeft(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 222
    .local v10, "drawableLeft":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 223
    move-object v2, v10

    .end local v10    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v2, "drawableLeft":Landroid/graphics/drawable/Drawable;
    move v10, v15

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableTop(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 224
    .local v3, "drawableTop":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 225
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableRight(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 227
    .local v10, "drawableRight":Landroid/graphics/drawable/Drawable;
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 228
    move-object/from16 v19, v11

    move-object v11, v10

    .end local v10    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v11, "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v19, "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    move v10, v15

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/datepicker/DayViewDecorator;->getCompoundDrawableBottom(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 230
    .local v10, "drawableBottom":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2, v3, v11, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v4, v0, Lcom/google/android/material/datepicker/MonthAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 233
    move-object/from16 v20, v10

    .end local v10    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v20, "drawableBottom":Landroid/graphics/drawable/Drawable;
    move v10, v15

    move-object/from16 v0, v19

    move-object/from16 v19, v11

    .end local v11    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v0, "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    .local v19, "drawableRight":Landroid/graphics/drawable/Drawable;
    move-object v11, v13

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/material/datepicker/DayViewDecorator;->getContentDescription(Landroid/content/Context;IIIZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 235
    .local v4, "decoratorContentDescription":Ljava/lang/CharSequence;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 236
    .end local v2    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v3    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .end local v4    # "decoratorContentDescription":Ljava/lang/CharSequence;
    .end local v16    # "month":I
    .end local v17    # "year":I
    .end local v18    # "backgroundColorOverride":Landroid/content/res/ColorStateList;
    .end local v19    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .end local v20    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 211
    .end local v0    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    .local v11, "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    :cond_4
    move-object v0, v11

    .line 237
    .end local v11    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    .restart local v0    # "style":Lcom/google/android/material/datepicker/CalendarItemStyle;
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;)V

    .line 239
    :goto_1
    return-void
.end method

.method private updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 3
    .param p1, "monthGrid"    # Lcom/google/android/material/datepicker/MaterialCalendarGridView;
    .param p2, "date"    # J

    .line 171
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/datepicker/Month;->getDayOfMonth(J)I

    move-result v0

    .line 174
    .local v0, "day":I
    nop

    .line 177
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 176
    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 174
    invoke-direct {p0, v1, p2, p3, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    .line 181
    .end local v0    # "day":I
    :cond_0
    return-void
.end method


# virtual methods
.method dayToPosition(I)I
    .locals 2
    .param p1, "day"    # I

    .line 320
    add-int/lit8 v0, p1, -0x1

    .line 321
    .local v0, "offsetFromFirst":I
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method firstPositionInMonth()I
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarConstraints;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth(I)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 119
    sget v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_GRID_CELLS:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Long;
    .locals 2
    .param p1, "position"    # I

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->positionToDay(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 100
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 107
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    div-int v0, p1, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 125
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->initializeStyles(Landroid/content/Context;)V

    .line 126
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "dayTextView":Landroid/widget/TextView;
    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 128
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 129
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/google/android/material/R$layout;->mtrl_calendar_day:I

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v2

    sub-int v2, p1, v2

    .line 132
    .local v2, "offsetPosition":I
    const/4 v3, -0x1

    .line 133
    .local v3, "dayNumber":I
    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v4, v4, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    if-lt v2, v4, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 139
    iget-object v4, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 141
    .local v4, "locale":Ljava/util/Locale;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 134
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_2
    :goto_0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 146
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v1

    .line 147
    .local v1, "date":Ljava/lang/Long;
    if-nez v1, :cond_3

    .line 148
    return-object v0

    .line 150
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;JI)V

    .line 151
    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method isEndOfRange(J)Z
    .locals 4
    .param p1, "date"    # J

    .line 262
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 263
    .local v1, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    .end local v1    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isFirstInRow(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 334
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLastInRow(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 342
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStartOfRange(J)Z
    .locals 4
    .param p1, "date"    # J

    .line 252
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/util/Pair;

    .line 253
    .local v1, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 254
    const/4 v0, 0x1

    return v0

    .line 256
    .end local v1    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method lastPositionInMonth()I
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method positionToDay(I)I
    .locals 1
    .param p1, "position"    # I

    .line 315
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateSelectedStates(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 4
    .param p1, "monthGrid"    # Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 156
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 157
    .local v1, "date":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    .line 158
    .end local v1    # "date":Ljava/lang/Long;
    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 163
    .restart local v1    # "date":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    .line 164
    .end local v1    # "date":Ljava/lang/Long;
    goto :goto_1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    .line 168
    :cond_2
    return-void
.end method

.method withinMonth(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 326
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
