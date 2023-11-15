.class public final Lcom/google/android/material/datepicker/MaterialCalendar;
.super Lcom/google/android/material/datepicker/PickerFragment;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;,
        Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/PickerFragment<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final CURRENT_MONTH_KEY:Ljava/lang/String; = "CURRENT_MONTH_KEY"

.field private static final DAY_VIEW_DECORATOR_KEY:Ljava/lang/String; = "DAY_VIEW_DECORATOR_KEY"

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

.field static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;

.field static final NAVIGATION_PREV_TAG:Ljava/lang/Object;

.field static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

.field private static final SMOOTH_SCROLL_MAX:I = 0x3

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field private calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field private current:Lcom/google/android/material/datepicker/Month;

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private dayFrame:Landroid/view/View;

.field private dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

.field private monthNext:Landroid/view/View;

.field private monthPrev:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private themeResId:I

.field private yearFrame:Landroid/view/View;

.field private yearSelector:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 78
    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 80
    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 82
    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/material/datepicker/MaterialCalendar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/Month;)Lcom/google/android/material/datepicker/Month;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/datepicker/MaterialCalendar;
    .param p1, "x1"    # Lcom/google/android/material/datepicker/Month;

    .line 61
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    return-object p1
.end method

.method private addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "monthsPagerAdapter"    # Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 405
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 406
    .local v0, "monthDropSelect":Lcom/google/android/material/button/MaterialButton;
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 407
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$6;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 422
    sget v1, Lcom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    .line 423
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    sget v1, Lcom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    .line 425
    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 427
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    .line 428
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    .line 429
    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 430
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/Month;->getLongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/google/android/material/datepicker/MaterialCalendar$7;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar$7;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 458
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$8;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    new-instance v2, Lcom/google/android/material/datepicker/MaterialCalendar$9;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$9;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    new-instance v2, Lcom/google/android/material/datepicker/MaterialCalendar$10;

    invoke-direct {v2, p0, p2}, Lcom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    return-void
.end method

.method private createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    .line 267
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$5;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    return-object v0
.end method

.method static getDayHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getDialogPickerHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 500
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    .line 501
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    .line 502
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    .line 503
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 504
    .local v1, "navigationHeight":I
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    .line 505
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 506
    .local v2, "daysOfWeekHeight":I
    sget v3, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 508
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v4

    sget v4, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    add-int/lit8 v4, v4, -0x1

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    .line 510
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 511
    .local v3, "calendarHeight":I
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 512
    .local v4, "calendarPadding":I
    add-int v5, v1, v2

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    return v5
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 1
    .param p1, "themeResId"    # I
    .param p2, "calendarConstraints"    # Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;)Lcom/google/android/material/datepicker/MaterialCalendar;
    .locals 4
    .param p1, "themeResId"    # I
    .param p2, "calendarConstraints"    # Lcom/google/android/material/datepicker/CalendarConstraints;
    .param p3, "dayViewDecorator"    # Lcom/google/android/material/datepicker/DayViewDecorator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/DayViewDecorator;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "dateSelector":Lcom/google/android/material/datepicker/DateSelector;, "Lcom/google/android/material/datepicker/DateSelector<TT;>;"
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    .line 113
    .local v0, "materialCalendar":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TT;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v2, "GRID_SELECTOR_KEY"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string v2, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    const-string v2, "CURRENT_MONTH_KEY"

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lcom/google/android/material/datepicker/Month;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->setArguments(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method private postSmoothRecyclerViewScroll(I)V
    .locals 2
    .param p1, "position"    # I

    .line 489
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$11;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendar$11;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 496
    return-void
.end method

.method private setUpForAccessibility()V
    .locals 2

    .line 253
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$4;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/MaterialCalendar$4;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 263
    return-void
.end method


# virtual methods
.method public addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    .line 522
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    .local p1, "listener":Lcom/google/android/material/datepicker/OnSelectionChangedListener;, "Lcom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    move-result v0

    return v0
.end method

.method getCalendarConstraints()Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1

    .line 325
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method getCalendarStyle()Lcom/google/android/material/datepicker/CalendarStyle;
    .locals 1

    .line 359
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    return-object v0
.end method

.method getCurrentMonth()Lcom/google/android/material/datepicker/Month;
    .locals 1

    .line 319
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 517
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 135
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 137
    .local v0, "activeBundle":Landroid/os/Bundle;
    :goto_0
    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 138
    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 139
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 140
    const-string v1, "DAY_VIEW_DECORATOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/DayViewDecorator;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    .line 141
    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/datepicker/Month;

    iput-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 150
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    move-object/from16 v6, p0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v13, v0

    .line 151
    .local v13, "themedContext":Landroid/view/ContextThemeWrapper;
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-direct {v0, v13}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 152
    move-object/from16 v14, p1

    invoke-virtual {v14, v13}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 154
    .local v15, "themedInflater":Landroid/view/LayoutInflater;
    iget-object v0, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getStart()Lcom/google/android/material/datepicker/Month;

    move-result-object v12

    .line 158
    .local v12, "earliestMonth":Lcom/google/android/material/datepicker/Month;
    invoke-static {v13}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    .line 160
    .local v0, "layout":I
    const/4 v1, 0x1

    move v11, v0

    move/from16 v16, v1

    .local v1, "orientation":I
    goto :goto_0

    .line 162
    .end local v0    # "layout":I
    .end local v1    # "orientation":I
    :cond_0
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    .line 163
    .restart local v0    # "layout":I
    const/4 v1, 0x0

    move v11, v0

    move/from16 v16, v1

    .line 166
    .end local v0    # "layout":I
    .local v11, "layout":I
    .local v16, "orientation":I
    :goto_0
    const/4 v10, 0x0

    move-object/from16 v9, p2

    invoke-virtual {v15, v11, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 167
    .local v8, "root":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getDialogPickerHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 168
    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/GridView;

    .line 169
    .local v7, "daysHeader":Landroid/widget/GridView;
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$1;

    invoke-direct {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-static {v7, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 180
    iget-object v0, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getFirstDayOfWeek()I

    move-result v5

    .line 181
    .local v5, "firstDayOfWeek":I
    nop

    .line 182
    new-instance v0, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;

    if-lez v5, :cond_1

    invoke-direct {v0, v5}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-direct {v0}, Lcom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>()V

    .line 181
    :goto_1
    invoke-virtual {v7, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget v0, v12, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 184
    invoke-virtual {v7, v10}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 186
    sget v0, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 188
    new-instance v17, Lcom/google/android/material/datepicker/MaterialCalendar$2;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v3, v16

    move/from16 v18, v5

    .end local v5    # "firstDayOfWeek":I
    .local v18, "firstDayOfWeek":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/datepicker/MaterialCalendar$2;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;Landroid/content/Context;IZI)V

    .line 201
    .local v0, "layoutManager":Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;
    iget-object v1, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    iget-object v1, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lcom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 204
    new-instance v1, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    iget-object v2, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v3, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    iget-object v4, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    new-instance v5, Lcom/google/android/material/datepicker/MaterialCalendar$3;

    invoke-direct {v5, v6}, Lcom/google/android/material/datepicker/MaterialCalendar$3;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    move-object/from16 v17, v7

    .end local v7    # "daysHeader":Landroid/widget/GridView;
    .local v17, "daysHeader":Landroid/widget/GridView;
    move-object v7, v1

    move-object/from16 v19, v0

    move-object v0, v8

    .end local v8    # "root":Landroid/view/View;
    .local v0, "root":Landroid/view/View;
    .local v19, "layoutManager":Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;
    move-object v8, v13

    move-object v9, v2

    move v2, v10

    move-object v10, v3

    move v3, v11

    .end local v11    # "layout":I
    .local v3, "layout":I
    move-object v11, v4

    move-object v4, v12

    .end local v12    # "earliestMonth":Lcom/google/android/material/datepicker/Month;
    .local v4, "earliestMonth":Lcom/google/android/material/datepicker/Month;
    move-object v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/DayViewDecorator;Lcom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V

    .line 227
    .local v1, "monthsPagerAdapter":Lcom/google/android/material/datepicker/MonthsPagerAdapter;
    iget-object v5, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 229
    nop

    .line 230
    invoke-virtual {v13}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 231
    .local v5, "columns":I
    sget v7, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v7, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    if-eqz v7, :cond_2

    .line 233
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 234
    iget-object v7, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v9, v13, v5, v8, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v7, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 236
    iget-object v2, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/google/android/material/datepicker/YearGridAdapter;

    invoke-direct {v7, v6}, Lcom/google/android/material/datepicker/YearGridAdapter;-><init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 237
    iget-object v2, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 240
    :cond_2
    sget v2, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 241
    invoke-direct {v6, v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Landroid/view/View;Lcom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 244
    :cond_3
    invoke-static {v13}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 245
    new-instance v2, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v2}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object v7, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 247
    :cond_4
    iget-object v2, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v6, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1, v7}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setUpForAccessibility()V

    .line 249
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 125
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "THEME_RES_ID_KEY"

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v0, "GRID_SELECTOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayViewDecorator:Lcom/google/android/material/datepicker/DayViewDecorator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    const-string v0, "CURRENT_MONTH_KEY"

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    return-void
.end method

.method setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V
    .locals 7
    .param p1, "moveTo"    # Lcom/google/android/material/datepicker/Month;

    .line 335
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 336
    .local v0, "adapter":Lcom/google/android/material/datepicker/MonthsPagerAdapter;
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    .line 337
    .local v1, "moveToPosition":I
    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lcom/google/android/material/datepicker/Month;)I

    move-result v2

    sub-int v2, v1, v2

    .line 338
    .local v2, "distance":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 339
    .local v3, "jump":Z
    :goto_0
    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move v4, v5

    .line 340
    .local v4, "isForward":Z
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    .line 341
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 342
    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, v1, -0x3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 343
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    goto :goto_2

    .line 344
    :cond_2
    if-eqz v3, :cond_3

    .line 345
    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 346
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    goto :goto_2

    .line 348
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 350
    :goto_2
    return-void
.end method

.method setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .locals 5
    .param p1, "selector"    # Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 374
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 375
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 377
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 379
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/datepicker/YearGridAdapter;

    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    iget v4, v4, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v3

    .line 378
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 380
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 384
    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne p1, v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthPrev:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->monthNext:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->current:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lcom/google/android/material/datepicker/Month;)V

    .line 393
    :cond_1
    :goto_0
    return-void
.end method

.method toggleVisibleSelector()V
    .locals 2

    .line 396
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialCalendar;, "Lcom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v1, :cond_0

    .line 397
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v1, :cond_1

    .line 399
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lcom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 401
    :cond_1
    :goto_0
    return-void
.end method
