.class public abstract Lcom/google/android/material/sidesheet/SideSheetCallback;
.super Ljava/lang/Object;
.source "SideSheetCallback.java"

# interfaces
.implements Lcom/google/android/material/sidesheet/SheetCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "sheet"    # Landroid/view/View;

    .line 48
    return-void
.end method

.method public abstract onSlide(Landroid/view/View;F)V
.end method

.method public abstract onStateChanged(Landroid/view/View;I)V
.end method
