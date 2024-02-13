.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# instance fields
.field private final dayCompute:Ljava/util/Calendar;

.field private final nestedScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget v0, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    .line 58
    sget v0, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isNestedScrollable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    .line 61
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 72
    return-void
.end method

.method private gainFocus(ILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 229
    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_0

    .line 231
    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_0

    .line 234
    :cond_1
    const/4 v0, 0x1

    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 236
    :goto_0
    return-void
.end method

.method private getChildAtPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static horizontalMidPoint(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private static skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 5
    .param p0, "firstOfMonth"    # Ljava/lang/Long;
    .param p1, "lastOfMonth"    # Ljava/lang/Long;
    .param p2, "startDay"    # Ljava/lang/Long;
    .param p3, "endDay"    # Ljava/lang/Long;

    .line 247
    const/4 v0, 0x1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    .line 248
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .locals 1

    .line 109
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 40
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 126
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    .line 128
    .local v1, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 129
    .local v2, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 132
    .local v3, "calendarStyle":Lcom/google/android/material/datepicker/CalendarStyle;
    nop

    .line 133
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 134
    .local v4, "firstVisiblePositionInMonth":I
    nop

    .line 135
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getLastVisiblePosition()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 137
    .local v5, "lastVisiblePositionInMonth":I
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v6

    .line 138
    .local v6, "firstOfMonth":Ljava/lang/Long;
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v7

    .line 140
    .local v7, "lastOfMonth":Ljava/lang/Long;
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    .line 141
    .local v9, "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v10, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v10, :cond_e

    iget-object v10, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v10, :cond_0

    .line 142
    goto :goto_0

    .line 144
    :cond_0
    iget-object v10, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 145
    .local v10, "startItem":J
    iget-object v12, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 147
    .local v12, "endItem":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v6, v7, v14, v15}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v14

    .line 153
    .local v14, "isRtl":Z
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v15, v10, v15

    move-object/from16 v16, v2

    .end local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .local v16, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    const/16 v17, 0x0

    if-gez v15, :cond_4

    .line 154
    move v15, v4

    .line 156
    .local v15, "firstHighlightPosition":I
    invoke-virtual {v1, v15}, Lcom/google/android/material/datepicker/MonthAdapter;->isFirstInRow(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 157
    move/from16 v2, v17

    goto :goto_1

    .line 158
    :cond_2
    if-nez v14, :cond_3

    .line 159
    add-int/lit8 v2, v15, -0x1

    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_1

    .line 160
    :cond_3
    add-int/lit8 v2, v15, -0x1

    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    :goto_1
    nop

    .local v2, "rangeHighlightStart":I
    goto :goto_2

    .line 162
    .end local v2    # "rangeHighlightStart":I
    .end local v15    # "firstHighlightPosition":I
    :cond_4
    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v2, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 163
    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v15

    .line 164
    .restart local v15    # "firstHighlightPosition":I
    invoke-direct {v0, v15}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v2

    .line 169
    .restart local v2    # "rangeHighlightStart":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v19, v12, v19

    if-lez v19, :cond_7

    .line 170
    move/from16 v18, v5

    .line 172
    .local v18, "lastHighlightPosition":I
    move/from16 v19, v2

    move/from16 v2, v18

    .end local v18    # "lastHighlightPosition":I
    .local v2, "lastHighlightPosition":I
    .local v19, "rangeHighlightStart":I
    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->isLastInRow(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v18

    goto :goto_3

    .line 174
    :cond_5
    if-nez v14, :cond_6

    .line 175
    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    goto :goto_3

    .line 176
    :cond_6
    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v18

    :goto_3
    move/from16 v20, v4

    .local v18, "rangeHighlightEnd":I
    goto :goto_4

    .line 178
    .end local v18    # "rangeHighlightEnd":I
    .end local v19    # "rangeHighlightStart":I
    .local v2, "rangeHighlightStart":I
    :cond_7
    move/from16 v19, v2

    .end local v2    # "rangeHighlightStart":I
    .restart local v19    # "rangeHighlightStart":I
    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v2, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    move/from16 v20, v4

    const/4 v4, 0x5

    .end local v4    # "firstVisiblePositionInMonth":I
    .local v20, "firstVisiblePositionInMonth":I
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v2

    .line 180
    .local v2, "lastHighlightPosition":I
    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v18

    .line 183
    .restart local v18    # "rangeHighlightEnd":I
    :goto_4
    move/from16 v21, v5

    .end local v5    # "lastVisiblePositionInMonth":I
    .local v21, "lastVisiblePositionInMonth":I
    invoke-virtual {v1, v15}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 184
    .local v4, "firstRow":I
    move-object/from16 v22, v6

    .end local v6    # "firstOfMonth":Ljava/lang/Long;
    .local v22, "firstOfMonth":Ljava/lang/Long;
    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v5

    long-to-int v5, v5

    .line 185
    .local v5, "lastRow":I
    move v6, v4

    .local v6, "row":I
    :goto_5
    if-gt v6, v5, :cond_d

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v23

    move-object/from16 v24, v1

    .end local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .local v24, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    mul-int v1, v6, v23

    .line 187
    .local v1, "firstPositionInRow":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v23

    add-int v23, v1, v23

    move/from16 v25, v4

    .end local v4    # "firstRow":I
    .local v25, "firstRow":I
    add-int/lit8 v4, v23, -0x1

    .line 188
    .local v4, "lastPositionInRow":I
    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v23

    .line 189
    .local v23, "firstView":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTop()I

    move-result v26

    iget-object v0, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v0

    add-int v0, v26, v0

    .line 190
    .local v0, "top":I
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getBottom()I

    move-result v26

    move/from16 v27, v5

    .end local v5    # "lastRow":I
    .local v27, "lastRow":I
    iget-object v5, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v5}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v5

    sub-int v5, v26, v5

    .line 193
    .local v5, "bottom":I
    if-nez v14, :cond_a

    .line 194
    if-le v1, v15, :cond_8

    move/from16 v26, v17

    goto :goto_6

    :cond_8
    move/from16 v26, v19

    .line 195
    .local v26, "left":I
    :goto_6
    if-le v2, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v28

    goto :goto_7

    :cond_9
    move/from16 v28, v18

    :goto_7
    move/from16 v29, v1

    move/from16 v1, v26

    move/from16 v26, v2

    move/from16 v2, v28

    .local v28, "right":I
    goto :goto_a

    .line 197
    .end local v26    # "left":I
    .end local v28    # "right":I
    :cond_a
    if-le v2, v4, :cond_b

    move/from16 v26, v17

    goto :goto_8

    :cond_b
    move/from16 v26, v18

    .line 198
    .restart local v26    # "left":I
    :goto_8
    if-le v1, v15, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v28

    goto :goto_9

    :cond_c
    move/from16 v28, v19

    :goto_9
    move/from16 v29, v1

    move/from16 v1, v26

    move/from16 v26, v2

    move/from16 v2, v28

    .line 200
    .local v1, "left":I
    .local v2, "right":I
    .local v26, "lastHighlightPosition":I
    .local v29, "firstPositionInRow":I
    :goto_a
    move/from16 v28, v4

    .end local v4    # "lastPositionInRow":I
    .local v28, "lastPositionInRow":I
    int-to-float v4, v1

    move/from16 v36, v1

    .end local v1    # "left":I
    .local v36, "left":I
    int-to-float v1, v0

    move/from16 v37, v0

    .end local v0    # "top":I
    .local v37, "top":I
    int-to-float v0, v2

    move/from16 v38, v2

    .end local v2    # "right":I
    .local v38, "right":I
    int-to-float v2, v5

    move/from16 v39, v5

    .end local v5    # "bottom":I
    .local v39, "bottom":I
    iget-object v5, v3, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v30, p1

    move/from16 v31, v4

    move/from16 v32, v1

    move/from16 v33, v0

    move/from16 v34, v2

    move-object/from16 v35, v5

    invoke-virtual/range {v30 .. v35}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    .end local v23    # "firstView":Landroid/view/View;
    .end local v28    # "lastPositionInRow":I
    .end local v29    # "firstPositionInRow":I
    .end local v36    # "left":I
    .end local v37    # "top":I
    .end local v38    # "right":I
    .end local v39    # "bottom":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v4, v25

    move/from16 v2, v26

    move/from16 v5, v27

    goto/16 :goto_5

    .end local v24    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v25    # "firstRow":I
    .end local v26    # "lastHighlightPosition":I
    .end local v27    # "lastRow":I
    .local v1, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .local v2, "lastHighlightPosition":I
    .local v4, "firstRow":I
    .local v5, "lastRow":I
    :cond_d
    move-object/from16 v24, v1

    move/from16 v26, v2

    move/from16 v25, v4

    move/from16 v27, v5

    .line 202
    .end local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v2    # "lastHighlightPosition":I
    .end local v4    # "firstRow":I
    .end local v5    # "lastRow":I
    .end local v6    # "row":I
    .end local v9    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v10    # "startItem":J
    .end local v12    # "endItem":J
    .end local v14    # "isRtl":Z
    .end local v15    # "firstHighlightPosition":I
    .end local v18    # "rangeHighlightEnd":I
    .end local v19    # "rangeHighlightStart":I
    .restart local v24    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_0

    .line 141
    .end local v16    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .end local v20    # "firstVisiblePositionInMonth":I
    .end local v21    # "lastVisiblePositionInMonth":I
    .end local v22    # "firstOfMonth":Ljava/lang/Long;
    .end local v24    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .restart local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .local v2, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .local v4, "firstVisiblePositionInMonth":I
    .local v5, "lastVisiblePositionInMonth":I
    .local v6, "firstOfMonth":Ljava/lang/Long;
    .restart local v9    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_e
    move-object/from16 v24, v1

    move-object/from16 v16, v2

    move/from16 v20, v4

    move/from16 v21, v5

    move-object/from16 v22, v6

    .end local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .end local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .end local v4    # "firstVisiblePositionInMonth":I
    .end local v5    # "lastVisiblePositionInMonth":I
    .end local v6    # "firstOfMonth":Ljava/lang/Long;
    .restart local v16    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .restart local v20    # "firstVisiblePositionInMonth":I
    .restart local v21    # "lastVisiblePositionInMonth":I
    .restart local v22    # "firstOfMonth":Ljava/lang/Long;
    .restart local v24    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 203
    .end local v9    # "range":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v16    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .end local v20    # "firstVisiblePositionInMonth":I
    .end local v21    # "lastVisiblePositionInMonth":I
    .end local v22    # "firstOfMonth":Ljava/lang/Long;
    .end local v24    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .restart local v1    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    .restart local v2    # "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    .restart local v4    # "firstVisiblePositionInMonth":I
    .restart local v5    # "lastVisiblePositionInMonth":I
    .restart local v6    # "firstOfMonth":Ljava/lang/Long;
    :cond_f
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 221
    if-eqz p1, :cond_0

    .line 222
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->gainFocus(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 224
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 226
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 92
    .local v0, "result":Z
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    const/16 v2, 0x13

    if-ne v2, p1, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 101
    return v4

    .line 103
    :cond_2
    return v1

    .line 97
    :cond_3
    :goto_0
    return v4
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 207
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    if-eqz v0, :cond_0

    .line 210
    const v0, 0xffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 211
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 213
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    .end local v0    # "expandSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 215
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 217
    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 114
    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-eqz v0, :cond_0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 118
    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 116
    const-string v2, "%1$s must have its Adapter set to a %2$s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 87
    :goto_0
    return-void
.end method
