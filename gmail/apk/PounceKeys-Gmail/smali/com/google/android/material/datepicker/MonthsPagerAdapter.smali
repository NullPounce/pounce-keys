.class Lcom/google/android/material/datepicker/MonthsPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private final dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field private final dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

.field private final itemHeight:I

.field private final onDayClickListener:Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "calendarConstraints"    # Lcom/google/android/material/datepicker/CalendarConstraints;
    .param p4, "dayViewDecorator"    # Lcom/google/android/material/datepicker/DayViewDecorator;
    .param p5, "onDayClickListener"    # Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/DayViewDecorator;",
            "Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;",
            ")V"
        }
    .end annotation

    .line 52
    .local p2, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<*>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 54
    .local v0, "firstPage":Lcom/google/android/material/datepicker/Month;
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->getEnd()Lcom/google/android/material/datepicker/Month;

    move-result-object v1

    .line 55
    .local v1, "lastPage":Lcom/google/android/material/datepicker/Month;
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    move-result-object v2

    .line 57
    .local v2, "currentPage":Lcom/google/android/material/datepicker/Month;
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 60
    invoke-virtual {v2, v1}, Lcom/google/android/material/datepicker/Month;->compareTo(Lcom/google/android/material/datepicker/Month;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 64
    sget v3, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDayHeight(Landroid/content/Context;)I

    move-result v4

    mul-int/2addr v3, v4

    .line 66
    .local v3, "daysHeight":I
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDayHeight(Landroid/content/Context;)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 68
    .local v4, "labelHeight":I
    :goto_0
    add-int v5, v3, v4

    iput v5, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->itemHeight:I

    .line 69
    iput-object p3, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 70
    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 71
    iput-object p4, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 72
    iput-object p5, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onDayClickListener:Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;

    .line 73
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->setHasStableIds(Z)V

    .line 74
    return-void

    .line 61
    .end local v3    # "daysHeight":I
    .end local v4    # "labelHeight":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "currentPage cannot be after lastPage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "firstPage cannot be after currentPage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/MonthsPagerAdapter;)Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 39
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onDayClickListener:Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getMonthSpan()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 137
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->monthsLater(I)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->getStableId()J

    move-result-wide v0

    return-wide v0
.end method

.method getPageMonth(I)Lcom/google/android/material/datepicker/Month;
    .locals 1
    .param p1, "position"    # I

    .line 152
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->monthsLater(I)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    return-object v0
.end method

.method getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPageMonth(I)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPosition(Lcom/google/android/material/datepicker/Month;)I
    .locals 1
    .param p1, "month"    # Lcom/google/android/material/datepicker/Month;

    .line 156
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->monthsUntil(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onBindViewHolder(Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 110
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/datepicker/Month;->monthsLater(I)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 111
    .local v0, "month":Lcom/google/android/material/datepicker/Month;
    iget-object v1, p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v2, Lcom/google/android/material/R$id;->month_grid:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 114
    .local v1, "monthGrid":Lcom/google/android/material/datepicker/MaterialCalendarGridView;
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->invalidate()V

    .line 116
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStates(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    goto :goto_0

    .line 118
    :cond_0
    new-instance v2, Lcom/google/android/material/datepicker/MonthAdapter;

    iget-object v3, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v4, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v5, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/android/material/datepicker/MonthAdapter;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)V

    .line 120
    .local v2, "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    iget v3, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNumColumns(I)V

    .line 121
    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    .end local v2    # "monthAdapter":Lcom/google/android/material/datepicker/MonthAdapter;
    :goto_0
    new-instance v2, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter$1;-><init>(Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 133
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 95
    nop

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_month_labeled:I

    .line 98
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 100
    .local v0, "container":Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->itemHeight:I

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object v1

    .line 104
    :cond_0
    new-instance v1, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object v1
.end method
