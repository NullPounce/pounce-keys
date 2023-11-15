.class public final Landroidx/core/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/ListViewCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static canScrollList(Landroid/widget/ListView;I)Z
    .locals 1
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "direction"    # I

    .line 69
    nop

    .line 71
    invoke-static {p0, p1}, Landroidx/core/widget/ListViewCompat$Api19Impl;->canScrollList(Landroid/widget/ListView;I)Z

    move-result v0

    return v0
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .locals 0
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "y"    # I

    .line 39
    nop

    .line 41
    invoke-static {p0, p1}, Landroidx/core/widget/ListViewCompat$Api19Impl;->scrollListBy(Landroid/widget/ListView;I)V

    .line 57
    return-void
.end method
