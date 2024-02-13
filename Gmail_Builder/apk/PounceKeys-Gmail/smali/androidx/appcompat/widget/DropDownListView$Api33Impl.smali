.class Landroidx/appcompat/widget/DropDownListView$Api33Impl;
.super Ljava/lang/Object;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    return-void
.end method

.method static isSelectedChildViewEnabled(Landroid/widget/AbsListView;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/AbsListView;

    .line 867
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSelectedChildViewEnabled()Z

    move-result v0

    return v0
.end method

.method static setSelectedChildViewEnabled(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p0, "view"    # Landroid/widget/AbsListView;
    .param p1, "enabled"    # Z

    .line 872
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelectedChildViewEnabled(Z)V

    .line 873
    return-void
.end method
