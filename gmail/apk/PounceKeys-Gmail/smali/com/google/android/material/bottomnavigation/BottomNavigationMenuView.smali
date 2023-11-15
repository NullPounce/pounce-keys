.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Lcom/google/android/material/navigation/NavigationBarMenuView;
.source "BottomNavigationMenuView.java"


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemHorizontalTranslationEnabled:Z

.field private final tempChildWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_max_width:I

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    .line 61
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_item_min_width:I

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    .line 63
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_max_width:I

    .line 64
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 65
    sget v2, Lcom/google/android/material/R$dimen;->design_bottom_navigation_active_item_min_width:I

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 68
    return-void
.end method


# virtual methods
.method protected createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 196
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v0

    .line 153
    .local v0, "count":I
    sub-int v1, p4, p2

    .line 154
    .local v1, "width":I
    sub-int v2, p5, p3

    .line 155
    .local v2, "height":I
    const/4 v3, 0x0

    .line 156
    .local v3, "used":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 157
    invoke-virtual {p0, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 158
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 159
    goto :goto_2

    .line 161
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 162
    sub-int v6, v1, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v6, v8

    sub-int v8, v1, v3

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v3, v7, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 166
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v3, v6

    .line 156
    .end local v5    # "child":Landroid/view/View;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 72
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    .line 73
    .local v1, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 75
    .local v2, "width":I
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 77
    .local v3, "visibleCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildCount()I

    move-result v4

    .line 78
    .local v4, "totalCount":I
    iget-object v5, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 80
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 81
    .local v5, "parentHeight":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 83
    .local v7, "heightSpec":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getLabelVisibilityMode()I

    move-result v8

    invoke-virtual {v0, v8, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isShifting(II)Z

    move-result v8

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-eqz v8, :cond_7

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 86
    .local v8, "activeChild":Landroid/view/View;
    iget v11, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMinWidth:I

    .line 87
    .local v11, "activeItemWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v9, :cond_0

    .line 90
    iget v12, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 91
    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 90
    invoke-virtual {v8, v12, v7}, Landroid/view/View;->measure(II)V

    .line 92
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 94
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v9, :cond_1

    move v12, v10

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    sub-int v12, v3, v12

    .line 95
    .local v12, "inactiveCount":I
    iget v13, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMinWidth:I

    mul-int/2addr v13, v12

    sub-int v13, v2, v13

    .line 96
    .local v13, "activeMaxAvailable":I
    iget v14, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    .line 97
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 98
    .local v14, "activeWidth":I
    sub-int v15, v2, v14

    .line 99
    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    move v10, v12

    :goto_1
    div-int/2addr v15, v10

    .line 100
    .local v15, "inactiveMaxAvailable":I
    iget v10, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->inactiveItemMaxWidth:I

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 101
    .local v10, "inactiveWidth":I
    sub-int v16, v2, v14

    mul-int v17, v10, v12

    sub-int v16, v16, v17

    .line 103
    .local v16, "extra":I
    const/16 v17, 0x0

    move/from16 v6, v17

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_5

    .line 104
    const/16 v18, 0x0

    .line 105
    .local v18, "tempChildWidth":I
    invoke-virtual {v0, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v20, v1

    .end local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .local v20, "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v9, :cond_4

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemPosition()I

    move-result v1

    if-ne v6, v1, :cond_3

    move v1, v14

    goto :goto_3

    :cond_3
    move v1, v10

    :goto_3
    move/from16 v18, v1

    .line 110
    if-lez v16, :cond_4

    .line 111
    add-int/lit8 v18, v18, 0x1

    .line 112
    add-int/lit8 v16, v16, -0x1

    .line 115
    :cond_4
    iget-object v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v18    # "tempChildWidth":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v20

    const/16 v9, 0x8

    goto :goto_2

    .end local v20    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .restart local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_5
    move-object/from16 v20, v1

    .line 117
    .end local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .end local v6    # "i":I
    .end local v8    # "activeChild":Landroid/view/View;
    .end local v10    # "inactiveWidth":I
    .end local v11    # "activeItemWidth":I
    .end local v12    # "inactiveCount":I
    .end local v13    # "activeMaxAvailable":I
    .end local v14    # "activeWidth":I
    .end local v15    # "inactiveMaxAvailable":I
    .end local v16    # "extra":I
    .restart local v20    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    goto :goto_7

    .line 84
    .end local v20    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .restart local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_6
    move-object/from16 v20, v1

    .end local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .restart local v20    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    goto :goto_4

    .line 83
    .end local v20    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .restart local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :cond_7
    move-object/from16 v20, v1

    .line 118
    .end local v1    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    .restart local v20    # "menu":Landroidx/appcompat/view/menu/MenuBuilder;
    :goto_4
    if-nez v3, :cond_8

    goto :goto_5

    :cond_8
    move v10, v3

    :goto_5
    div-int v1, v2, v10

    .line 119
    .local v1, "maxAvailable":I
    iget v6, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->activeItemMaxWidth:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 120
    .local v6, "childWidth":I
    mul-int v8, v6, v3

    sub-int v8, v2, v8

    .line 121
    .local v8, "extra":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    if-ge v9, v4, :cond_a

    .line 122
    const/4 v10, 0x0

    .line 123
    .local v10, "tempChildWidth":I
    invoke-virtual {v0, v9}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_9

    .line 124
    move v10, v6

    .line 125
    if-lez v8, :cond_9

    .line 126
    add-int/lit8 v10, v10, 0x1

    .line 127
    add-int/lit8 v8, v8, -0x1

    .line 130
    :cond_9
    iget-object v11, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v10    # "tempChildWidth":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 134
    .end local v1    # "maxAvailable":I
    .end local v6    # "childWidth":I
    .end local v8    # "extra":I
    .end local v9    # "i":I
    :cond_a
    :goto_7
    const/4 v1, 0x0

    .line 135
    .local v1, "totalWidth":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8
    if-ge v6, v4, :cond_c

    .line 136
    invoke-virtual {v0, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 137
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_b

    .line 138
    const/high16 v11, 0x40000000    # 2.0f

    goto :goto_9

    .line 140
    :cond_b
    iget-object v9, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tempChildWidths:Ljava/util/List;

    .line 141
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 140
    invoke-virtual {v8, v9, v7}, Landroid/view/View;->measure(II)V

    .line 142
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 143
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    iput v12, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 144
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v1, v12

    .line 135
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 147
    .end local v6    # "i":I
    :cond_c
    invoke-virtual {v0, v1, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 148
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->itemHorizontalTranslationEnabled:Z

    .line 180
    return-void
.end method
