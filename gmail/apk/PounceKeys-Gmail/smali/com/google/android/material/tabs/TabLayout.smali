.class public Lcom/google/android/material/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;,
        Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;,
        Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;,
        Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;,
        Lcom/google/android/material/tabs/TabLayout$TabView;,
        Lcom/google/android/material/tabs/TabLayout$Tab;,
        Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;,
        Lcom/google/android/material/tabs/TabLayout$TabIndicatorAnimationMode;,
        Lcom/google/android/material/tabs/TabLayout$TabIndicatorGravity;,
        Lcom/google/android/material/tabs/TabLayout$TabGravity;,
        Lcom/google/android/material/tabs/TabLayout$LabelVisibility;,
        Lcom/google/android/material/tabs/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final DEF_STYLE_RES:I

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_ANIMATION_MODE_ELASTIC:I = 0x1

.field public static final INDICATOR_ANIMATION_MODE_FADE:I = 0x2

.field public static final INDICATOR_ANIMATION_MODE_LINEAR:I = 0x0

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TabLayout"

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final SELECTED_INDICATOR_HEIGHT_DEFAULT:I = -0x1

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field private final defaultTabTextAppearance:I

.field indicatorPosition:I

.field inlineLabel:Z

.field mode:I

.field private pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

.field private selectedTabTextAppearance:I

.field selectedTabTextSize:F

.field private setupViewPagerImplicitly:Z

.field final slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIconTint:Landroid/content/res/ColorStateList;

.field tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field tabIndicatorAnimationDuration:I

.field tabIndicatorAnimationMode:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabIndicatorHeight:I

.field private tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

.field private final tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field private tabSelectedIndicatorColor:I

.field private final tabTextAppearance:I

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/tabs/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;

.field private viewPagerScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 182
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_TabLayout:I

    sput v0, Lcom/google/android/material/tabs/TabLayout;->DEF_STYLE_RES:I

    .line 205
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 513
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 516
    sget v0, Lcom/google/android/material/R$attr;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 517
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 520
    sget v4, Lcom/google/android/material/tabs/TabLayout;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 300
    const/4 v6, -0x1

    iput v6, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 459
    iput v6, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    .line 464
    const/4 v7, 0x0

    iput v7, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    .line 473
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 486
    iput v6, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorHeight:I

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 509
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 522
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 525
    invoke-virtual {p0, v7}, Lcom/google/android/material/tabs/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 528
    new-instance v8, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-direct {v8, p0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 529
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v8, v7, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 535
    sget-object v2, Lcom/google/android/material/R$styleable;->TabLayout:[I

    sget v0, Lcom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    filled-new-array {v0}, [I

    move-result-object v5

    .line 536
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 544
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    .line 546
    .local v1, "background":Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 547
    .local v2, "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 548
    invoke-virtual {v2, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 549
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 550
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 553
    .end local v1    # "background":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "materialShapeDrawable":Lcom/google/android/material/shape/MaterialShapeDrawable;
    :cond_0
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicator:I

    .line 554
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 553
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 555
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorColor:I

    .line 556
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 555
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 557
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorHeight:I

    .line 558
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 557
    invoke-virtual {v8, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 559
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorGravity:I

    .line 560
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 559
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 561
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationMode:I

    .line 562
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 561
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorAnimationMode(I)V

    .line 563
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorFullWidth:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 565
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabPadding:I

    .line 568
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 569
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingStart:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 570
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    .line 571
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingTop:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingTop:I

    .line 572
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingEnd:I

    .line 573
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    .line 574
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingBottom:I

    .line 576
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isMaterial3Theme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    sget v1, Lcom/google/android/material/R$attr;->textAppearanceTitleSmall:I

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I

    goto :goto_0

    .line 579
    :cond_1
    sget v1, Lcom/google/android/material/R$attr;->textAppearanceButton:I

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I

    .line 581
    :goto_0
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabTextAppearance:I

    sget v3, Lcom/google/android/material/R$style;->TextAppearance_Design_Tab:I

    .line 582
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    .line 585
    sget-object v3, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 586
    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 589
    .local v3, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 590
    invoke-virtual {v3, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    .line 592
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 593
    invoke-static {p1, v3, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 598
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 599
    nop

    .line 601
    sget v4, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextAppearance:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    sget v4, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextAppearance:I

    .line 603
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    .line 606
    :cond_2
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    if-eq v1, v6, :cond_4

    .line 610
    sget-object v4, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 611
    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 615
    .local v1, "selectedTabTA":Landroid/content/res/TypedArray;
    :try_start_1
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    iget v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextSize:F

    float-to-int v5, v5

    .line 616
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextSize:F

    .line 619
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 620
    invoke-static {p1, v1, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 625
    .local v4, "selectedTabTextColor":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_3

    .line 626
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 628
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    const v8, 0x10100a1

    filled-new-array {v8}, [I

    move-result-object v8

    .line 631
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    .line 629
    invoke-virtual {v4, v8, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    .line 627
    invoke-static {v5, v8}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    .end local v4    # "selectedTabTextColor":Landroid/content/res/ColorStateList;
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 635
    goto :goto_1

    .line 634
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 635
    throw v2

    .line 638
    .end local v1    # "selectedTabTA":Landroid/content/res/TypedArray;
    :cond_4
    :goto_1
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 640
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabTextColor:I

    .line 641
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 644
    :cond_5
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 648
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 649
    .local v1, "selected":I
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4, v1}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 652
    .end local v1    # "selected":I
    :cond_6
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTint:I

    .line 653
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 654
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIconTintMode:I

    .line 655
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 657
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabRippleColor:I

    .line 658
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 660
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabIndicatorAnimationDuration:I

    .line 661
    const/16 v4, 0x12c

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    .line 662
    sget v1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sget-object v4, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 663
    invoke-static {p1, v1, v4}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

    .line 666
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabMinWidth:I

    .line 667
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    .line 668
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabMaxWidth:I

    .line 669
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    .line 670
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabBackgroundResId:I

    .line 671
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    .line 673
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 674
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 675
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabInlineLabel:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    .line 676
    sget v1, Lcom/google/android/material/R$styleable;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    .line 677
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 680
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 681
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/google/android/material/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextMultiLineSize:F

    .line 682
    sget v2, Lcom/google/android/material/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    .line 685
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 686
    return-void

    .line 598
    .end local v1    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 599
    throw v1
.end method

.method static synthetic access$1100(Lcom/google/android/material/tabs/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/tabs/TabLayout;

    .line 180
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->defaultTabTextAppearance:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/material/tabs/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/tabs/TabLayout;

    .line 180
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTabTextAppearance:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/material/tabs/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/tabs/TabLayout;

    .line 180
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextAppearance:I

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/material/tabs/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/tabs/TabLayout;

    .line 180
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->viewPagerScrollState:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/material/tabs/TabLayout;)Lcom/google/android/material/tabs/TabIndicatorInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/tabs/TabLayout;

    .line 180
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/material/tabs/TabLayout;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/tabs/TabLayout;

    .line 180
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V
    .locals 2
    .param p1, "item"    # Lcom/google/android/material/tabs/TabItem;

    .line 824
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 825
    .local v0, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 826
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 828
    :cond_0
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 829
    iget-object v1, p1, Lcom/google/android/material/tabs/TabItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 831
    :cond_1
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    if-eqz v1, :cond_2

    .line 832
    iget v1, p1, Lcom/google/android/material/tabs/TabItem;->customLayout:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 834
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 835
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 837
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 838
    return-void
.end method

.method private addTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1702
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 1703
    .local v0, "tabView":Lcom/google/android/material/tabs/TabLayout$TabView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 1704
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setActivated(Z)V

    .line 1705
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1729
    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_0

    .line 1730
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/tabs/TabItem;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->addTabFromItemView(Lcom/google/android/material/tabs/TabItem;)V

    .line 1734
    return-void

    .line 1732
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private animateToTab(I)V
    .locals 4
    .param p1, "newPosition"    # I

    .line 1865
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1866
    return-void

    .line 1869
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1870
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1871
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1878
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getScrollX()I

    move-result v0

    .line 1879
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 1881
    .local v1, "targetScrollX":I
    if-eq v0, v1, :cond_2

    .line 1882
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1884
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v0, v1}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1885
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1889
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iget v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v2, p1, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 1890
    return-void

    .line 1874
    .end local v0    # "startScrollX":I
    .end local v1    # "targetScrollX":I
    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 1875
    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .locals 2
    .param p1, "tabGravity"    # I

    .line 2062
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2064
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 2065
    goto :goto_0

    .line 2067
    :pswitch_1
    const-string v0, "TabLayout"

    const-string v1, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 2074
    nop

    .line 2078
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private applyModeAndGravity()V
    .locals 5

    .line 2035
    const/4 v0, 0x0

    .line 2036
    .local v0, "paddingStart":I
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 2038
    :cond_0
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->contentInsetStart:I

    iget v4, p0, Lcom/google/android/material/tabs/TabLayout;->tabPaddingStart:I

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2040
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v1, v0, v3, v3, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 2042
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2045
    :pswitch_0
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-ne v1, v2, :cond_2

    .line 2046
    const-string v1, "TabLayout"

    const-string v2, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    .line 2052
    goto :goto_0

    .line 2054
    :pswitch_1
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->applyGravityForModeScrollable(I)V

    .line 2058
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 2059
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 2010
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2031
    :cond_0
    return v1

    .line 2011
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2012
    .local v0, "selectedChild":Landroid/view/View;
    if-nez v0, :cond_2

    .line 2013
    return v1

    .line 2016
    :cond_2
    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2017
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 2018
    :cond_3
    const/4 v3, 0x0

    :goto_1
    nop

    .line 2019
    .local v3, "nextChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2020
    .local v4, "selectedWidth":I
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2023
    .local v1, "nextWidth":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    sub-int/2addr v5, v6

    .line 2025
    .local v5, "scrollBase":I
    add-int v2, v4, v1

    int-to-float v2, v2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v2, v6

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 2027
    .local v2, "scrollOffset":I
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    if-nez v6, :cond_5

    .line 2028
    add-int v6, v5, v2

    goto :goto_2

    .line 2029
    :cond_5
    sub-int v6, v5, v2

    .line 2027
    :goto_2
    return v6
.end method

.method private configureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 5
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    .line 1685
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1686
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1688
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1689
    .local v0, "count":I
    const/4 v1, -0x1

    .line 1690
    .local v1, "newIndicatorPosition":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1693
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    if-ne v3, v4, :cond_0

    .line 1694
    move v1, v2

    .line 1696
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1690
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1698
    .end local v2    # "i":I
    :cond_1
    iput v1, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    .line 1699
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .line 3436
    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 3437
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 3438
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 3440
    .local v2, "i":I
    sget-object v3, Lcom/google/android/material/tabs/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 3441
    aput p1, v0, v2

    .line 3442
    add-int/lit8 v2, v2, 0x1

    .line 3445
    sget-object v3, Lcom/google/android/material/tabs/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    .line 3446
    aput p0, v0, v2

    .line 3447
    add-int/lit8 v2, v2, 0x1

    .line 3449
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1738
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1740
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1741
    return-object v0
.end method

.method private createTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)Lcom/google/android/material/tabs/TabLayout$TabView;
    .locals 3
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1669
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1670
    .local v0, "tabView":Lcom/google/android/material/tabs/TabLayout$TabView;
    :goto_0
    if-nez v0, :cond_1

    .line 1671
    new-instance v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V

    move-object v0, v1

    .line 1673
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1674
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setFocusable(Z)V

    .line 1675
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setMinimumWidth(I)V

    .line 1676
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1677
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$400(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1679
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$300(Lcom/google/android/material/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1681
    :goto_1
    return-object v0
.end method

.method private dispatchTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 2004
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2005
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 2004
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2007
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1992
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1993
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1992
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1995
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1998
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1999
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1998
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2001
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1893
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1894
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1895
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorTimeInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1896
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1897
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/tabs/TabLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayout$1;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1905
    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 3454
    const/4 v0, 0x0

    .line 3455
    .local v0, "hasIconAndText":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 3456
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 3457
    .local v3, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3458
    const/4 v0, 0x1

    .line 3459
    goto :goto_1

    .line 3455
    .end local v3    # "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3462
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-nez v1, :cond_2

    const/16 v1, 0x48

    goto :goto_2

    :cond_2
    const/16 v1, 0x30

    :goto_2
    return v1
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 3466
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3468
    return v0

    .line 3471
    :cond_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollableTabMinWidth:I

    :goto_1
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1618
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    .line 1619
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1618
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isScrollingEnabled()Z
    .locals 2

    .line 841
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private removeTabViewAt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1855
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 1856
    .local v0, "view":Lcom/google/android/material/tabs/TabLayout$TabView;
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->removeViewAt(I)V

    .line 1857
    if-eqz v0, :cond_0

    .line 1858
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->reset()V

    .line 1859
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1861
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->requestLayout()V

    .line 1862
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6
    .param p1, "position"    # I

    .line 1918
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    .line 1919
    .local v0, "tabCount":I
    if-ge p1, v0, :cond_8

    .line 1920
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_8

    .line 1921
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1924
    .local v2, "child":Landroid/view/View;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-eq v1, p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1925
    :cond_1
    if-ne v1, p1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1926
    if-ne v1, p1, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 1927
    instance-of v3, v2, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v3, :cond_7

    .line 1928
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateTab()V

    goto :goto_3

    .line 1932
    :cond_4
    if-ne v1, p1, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1933
    if-ne v1, p1, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 1920
    .end local v2    # "child":Landroid/view/View;
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1936
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 4
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "autoRefresh"    # Z
    .param p3, "implicitSetup"    # Z

    .line 1512
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 1514
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 1515
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 1518
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1524
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1525
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 1528
    :cond_2
    if-eqz p1, :cond_6

    .line 1529
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1532
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 1533
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    .line 1535
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1536
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pageChangeListener:Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1539
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lcom/google/android/material/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->currentVpSelectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 1540
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1542
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 1543
    .local v0, "adapter":Landroidx/viewpager/widget/PagerAdapter;
    if-eqz v0, :cond_4

    .line 1546
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1550
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    if-nez v1, :cond_5

    .line 1551
    new-instance v1, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    .line 1553
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {v1, p2}, Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1554
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->adapterChangeListener:Lcom/google/android/material/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1557
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    .line 1558
    .end local v0    # "adapter":Landroidx/viewpager/widget/PagerAdapter;
    goto :goto_0

    .line 1561
    :cond_6
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1562
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1565
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    .line 1566
    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 1662
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1663
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->updateView()V

    .line 1662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1665
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .line 1745
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-nez v0, :cond_0

    .line 1746
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1747
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 1749
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1750
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1752
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_0
    return-void
.end method

.method public addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 898
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 899
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 780
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 781
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    .line 791
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    .line 792
    return-void
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 812
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-ne v0, p0, :cond_1

    .line 815
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->configureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    .line 816
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 818
    if-eqz p3, :cond_0

    .line 819
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 821
    :cond_0
    return-void

    .line 813
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "setSelected"    # Z

    .line 801
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;IZ)V

    .line 802
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 1710
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1711
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1715
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1716
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1725
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1726
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1720
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 1721
    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 943
    return-void
.end method

.method protected createTabFromPool()Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 2

    .line 966
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 967
    .local v0, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    if-nez v0, :cond_0

    .line 968
    new-instance v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-direct {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;-><init>()V

    move-object v0, v1

    .line 970
    :cond_0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 3480
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 1
    .param p1, "index"    # I

    .line 990
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 1119
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1372
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorAnimationMode()I
    .locals 1

    .line 1196
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationMode:I

    return v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .line 1152
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .line 3484
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 1096
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .locals 1

    .line 1316
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    return v0
.end method

.method public isInlineLabel()Z
    .locals 1

    .line 1272
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .locals 1

    .line 1229
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    return v0
.end method

.method public newTab()Lcom/google/android/material/tabs/TabLayout$Tab;
    .locals 3

    .line 954
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->createTabFromPool()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 955
    .local v0, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    iput-object p0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    .line 956
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->createTabView(Lcom/google/android/material/tabs/TabLayout$Tab;)Lcom/google/android/material/tabs/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 957
    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$000(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 958
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->access$000(Lcom/google/android/material/tabs/TabLayout$Tab;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setId(I)V

    .line 961
    :cond_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1590
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1592
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 1594
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1598
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 1601
    move-object v1, v0

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1604
    .end local v0    # "vp":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1608
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1610
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    .line 1612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 1613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->setupViewPagerImplicitly:Z

    .line 1615
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1778
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1779
    .local v1, "tabView":Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1780
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-static {v2, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$500(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V

    .line 1777
    .end local v1    # "tabView":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1784
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1785
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1764
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1765
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1766
    .local v0, "infoCompat":Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 1769
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    .line 1767
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v1

    .line 1766
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 1772
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 849
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->isScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1791
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1792
    .local v0, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1799
    :sswitch_0
    nop

    .line 1801
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v1, v5

    .line 1800
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1802
    goto :goto_0

    .line 1794
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 1795
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1807
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1808
    .local v1, "specWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1811
    nop

    .line 1812
    iget v5, p0, Lcom/google/android/material/tabs/TabLayout;->requestedTabMaxWidth:I

    if-lez v5, :cond_1

    .line 1813
    goto :goto_1

    .line 1814
    :cond_1
    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v6, v7}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    :goto_1
    iput v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabMaxWidth:I

    .line 1818
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1820
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getChildCount()I

    move-result v5

    if-ne v5, v4, :cond_5

    .line 1823
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1824
    .local v5, "child":Landroid/view/View;
    const/4 v6, 0x0

    .line 1826
    .local v6, "remeasure":Z
    iget v7, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 1835
    :pswitch_0
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v3, v4

    :cond_3
    move v6, v3

    goto :goto_2

    .line 1831
    :pswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v8

    if-ge v7, v8, :cond_4

    move v3, v4

    :cond_4
    move v6, v3

    .line 1832
    nop

    .line 1839
    :goto_2
    if-eqz v6, :cond_5

    .line 1841
    nop

    .line 1844
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1845
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1842
    invoke-static {p2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->getChildMeasureSpec(III)I

    move-result v3

    .line 1847
    .local v3, "childHeightMeasureSpec":I
    nop

    .line 1848
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1849
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 1852
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "childHeightMeasureSpec":I
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "remeasure":Z
    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->isScrollingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    return v0

    .line 858
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method populateFromPagerAdapter()V
    .locals 4

    .line 1643
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    .line 1645
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1646
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1647
    .local v0, "adapterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1648
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 1647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1652
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1653
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 1654
    .local v1, "curItem":I
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1655
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1659
    .end local v0    # "adapterCount":I
    .end local v1    # "curItem":I
    :cond_1
    return-void
.end method

.method protected releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 975
    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAllTabs()V
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1054
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    .line 1053
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1057
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/material/tabs/TabLayout$Tab;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1058
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1059
    .local v1, "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1060
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->reset()V

    .line 1061
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z

    .line 1062
    .end local v1    # "tab":Lcom/google/android/material/tabs/TabLayout$Tab;
    goto :goto_1

    .line 1064
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/material/tabs/TabLayout$Tab;>;"
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1065
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 938
    return-void
.end method

.method public removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;

    .line 925
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 926
    return-void
.end method

.method public removeTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1009
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-ne v0, p0, :cond_0

    .line 1013
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->removeTabAt(I)V

    .line 1014
    return-void

    .line 1010
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .locals 8
    .param p1, "position"    # I

    .line 1023
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1024
    .local v0, "selectedTabPosition":I
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->removeTabViewAt(I)V

    .line 1026
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1027
    .local v2, "removedTab":Lcom/google/android/material/tabs/TabLayout$Tab;
    if-eqz v2, :cond_1

    .line 1028
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->reset()V

    .line 1029
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->releaseFromTabPool(Lcom/google/android/material/tabs/TabLayout$Tab;)Z

    .line 1032
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1033
    .local v3, "newTabCount":I
    const/4 v4, -0x1

    .line 1034
    .local v4, "newIndicatorPosition":I
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 1037
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    if-ne v6, v7, :cond_2

    .line 1038
    move v4, v5

    .line 1040
    :cond_2
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v6, v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1034
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1043
    .end local v5    # "i":I
    :cond_3
    iput v4, p0, Lcom/google/android/material/tabs/TabLayout;->indicatorPosition:I

    .line 1045
    if-ne v0, p1, :cond_5

    .line 1046
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1048
    :cond_5
    return-void
.end method

.method public selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1945
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    .line 1946
    return-void
.end method

.method public selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V
    .locals 5
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .line 1957
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1959
    .local v0, "currentTab":Lcom/google/android/material/tabs/TabLayout$Tab;
    if-ne v0, p1, :cond_0

    .line 1960
    if-eqz v0, :cond_6

    .line 1961
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1962
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    goto :goto_2

    .line 1965
    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1966
    .local v2, "newPosition":I
    :goto_0
    if-eqz p2, :cond_4

    .line 1967
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v3

    if-ne v3, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    .line 1970
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1972
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->animateToTab(I)V

    .line 1974
    :goto_1
    if-eq v2, v1, :cond_4

    .line 1975
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 1980
    :cond_4
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedTab:Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1982
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->parent:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_5

    .line 1983
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1985
    :cond_5
    if-eqz p1, :cond_6

    .line 1986
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->dispatchTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 1989
    .end local v2    # "newPosition":I
    :cond_6
    :goto_2
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .line 1757
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 1759
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 1760
    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 3
    .param p1, "inline"    # Z

    .line 1240
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_2

    .line 1241
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->inlineLabel:Z

    .line 1242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1243
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1244
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1245
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->updateOrientation()V

    .line 1242
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 1250
    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1
    .param p1, "inlineResourceId"    # I

    .line 1261
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setInlineLabel(Z)V

    .line 1262
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 883
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->selectedListener:Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 884
    if-eqz p1, :cond_1

    .line 885
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 887
    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 867
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->setOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 868
    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;
    .param p2, "addObserver"    # Z

    .line 1623
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 1625
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1628
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1630
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1632
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 1633
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;

    invoke-direct {v0, p0}, Lcom/google/android/material/tabs/TabLayout$PagerAdapterObserver;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1635
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1639
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->populateFromPagerAdapter()V

    .line 1640
    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 1908
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1909
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1910
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .line 731
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    .line 732
    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z
    .param p4, "updateIndicatorPosition"    # Z

    .line 751
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 752
    .local v0, "roundedPosition":I
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 757
    :cond_0
    if-eqz p4, :cond_1

    .line 758
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 765
    :cond_2
    const/4 v1, 0x0

    if-gez p1, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    .line 768
    if-eqz p3, :cond_4

    .line 769
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabView(I)V

    .line 771
    :cond_4
    return-void

    .line 753
    :cond_5
    :goto_1
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1
    .param p1, "tabSelectedIndicatorResourceId"    # I

    .line 1470
    if-eqz p1, :cond_0

    .line 1471
    nop

    .line 1472
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1471
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1474
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1476
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tabSelectedIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1447
    if-nez p1, :cond_0

    .line 1448
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object p1, v0

    .line 1450
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1451
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    invoke-static {v0, v1}, Lcom/google/android/material/drawable/DrawableUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 1453
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1454
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 1455
    :cond_1
    nop

    :goto_0
    nop

    .line 1456
    .local v0, "indicatorHeight":I
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 1457
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 700
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicatorColor:I

    .line 701
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->updateTabViews(Z)V

    .line 703
    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1
    .param p1, "indicatorGravity"    # I

    .line 1137
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    .line 1138
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorGravity:I

    .line 1139
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1141
    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorHeight:I

    .line 716
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    .line 717
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1106
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    if-eq v0, p1, :cond_0

    .line 1107
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabGravity:I

    .line 1108
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 1110
    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "iconTint"    # Landroid/content/res/ColorStateList;

    .line 1353
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1354
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 1355
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    .line 1357
    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1
    .param p1, "iconTintResourceId"    # I

    .line 1366
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    .line 1367
    return-void
.end method

.method public setTabIndicatorAnimationMode(I)V
    .locals 3
    .param p1, "tabIndicatorAnimationMode"    # I

    .line 1168
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorAnimationMode:I

    .line 1169
    packed-switch p1, :pswitch_data_0

    .line 1180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid TabIndicatorAnimationMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :pswitch_0
    new-instance v0, Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;

    invoke-direct {v0}, Lcom/google/android/material/tabs/FadeTabIndicatorInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    .line 1178
    goto :goto_0

    .line 1174
    :pswitch_1
    new-instance v0, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;

    invoke-direct {v0}, Lcom/google/android/material/tabs/ElasticTabIndicatorInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    .line 1175
    goto :goto_0

    .line 1171
    :pswitch_2
    new-instance v0, Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    invoke-direct {v0}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorInterpolator:Lcom/google/android/material/tabs/TabIndicatorInterpolator;

    .line 1172
    nop

    .line 1183
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 1
    .param p1, "tabIndicatorFullWidth"    # Z

    .line 1215
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 1216
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$100(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;)V

    .line 1217
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1218
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 1083
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    if-eq p1, v0, :cond_0

    .line 1084
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->mode:I

    .line 1085
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->applyModeAndGravity()V

    .line 1087
    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 1397
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1398
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    .line 1399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1400
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1401
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1402
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$200(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    .line 1399
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1406
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1
    .param p1, "tabRippleColorResourceId"    # I

    .line 1418
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    .line 1419
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .line 1344
    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 1345
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;

    .line 1325
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1326
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1327
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->updateAllTabs()V

    .line 1329
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1575
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1576
    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 4
    .param p1, "unboundedRipple"    # Z

    .line 1285
    iget-boolean v0, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    if-eq v0, p1, :cond_1

    .line 1286
    iput-boolean p1, p0, Lcom/google/android/material/tabs/TabLayout;->unboundedRipple:Z

    .line 1287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1289
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1290
    move-object v2, v1

    check-cast v2, Lcom/google/android/material/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/material/tabs/TabLayout$TabView;->access$200(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V

    .line 1287
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1294
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1
    .param p1, "unboundedRippleResourceId"    # I

    .line 1305
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setUnboundedRipple(Z)V

    .line 1306
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;

    .line 1487
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    .line 1488
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1
    .param p1, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
    .param p2, "autoRefresh"    # Z

    .line 1507
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 1508
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1585
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateTabViews(Z)V
    .locals 3
    .param p1, "requestLayout"    # Z

    .line 2081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2082
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout;->slidingTabIndicator:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2083
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 2084
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2085
    if-eqz p1, :cond_0

    .line 2086
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 2081
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2089
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method updateViewPagerScrollState(I)V
    .locals 0
    .param p1, "scrollState"    # I

    .line 1579
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout;->viewPagerScrollState:I

    .line 1580
    return-void
.end method
