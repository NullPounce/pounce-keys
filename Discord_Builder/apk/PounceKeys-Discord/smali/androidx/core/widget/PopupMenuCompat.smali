.class public final Landroidx/core/widget/PopupMenuCompat;
.super Ljava/lang/Object;
.source "PopupMenuCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/PopupMenuCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "popupMenu"    # Ljava/lang/Object;

    .line 57
    nop

    .line 58
    move-object v0, p0

    check-cast v0, Landroid/widget/PopupMenu;

    invoke-static {v0}, Landroidx/core/widget/PopupMenuCompat$Api19Impl;->getDragToOpenListener(Landroid/widget/PopupMenu;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
