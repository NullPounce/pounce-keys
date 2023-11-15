.class public Lcom/google/android/material/sidesheet/SideSheetDialog;
.super Lcom/google/android/material/sidesheet/SheetDialog;
.source "SideSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/sidesheet/SheetDialog<",
        "Lcom/google/android/material/sidesheet/SideSheetCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

.field private static final SIDE_SHEET_DIALOG_THEME_ATTR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget v0, Lcom/google/android/material/R$attr;->sideSheetDialogTheme:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    .line 36
    sget v0, Lcom/google/android/material/R$style;->Theme_Material3_Light_SideSheetDialog:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/sidesheet/SideSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 61
    sget v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    sget v1, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/sidesheet/SheetDialog;-><init>(Landroid/content/Context;III)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetDialog;->supportRequestWindowFeature(I)Z

    .line 65
    return-void
.end method


# virtual methods
.method addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "behavior":Lcom/google/android/material/sidesheet/Sheet;, "Lcom/google/android/material/sidesheet/Sheet<Lcom/google/android/material/sidesheet/SideSheetCallback;>;"
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetDialog$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetDialog;)V

    invoke-interface {p1, v0}, Lcom/google/android/material/sidesheet/Sheet;->addCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V

    .line 58
    return-void
.end method

.method public bridge synthetic cancel()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    return-void
.end method

.method public bridge synthetic getBehavior()Lcom/google/android/material/sidesheet/Sheet;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/Sheet;

    move-result-object v0

    .line 100
    .local v0, "sheetBehavior":Lcom/google/android/material/sidesheet/Sheet;, "Lcom/google/android/material/sidesheet/Sheet<Lcom/google/android/material/sidesheet/SideSheetCallback;>;"
    instance-of v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    if-eqz v1, :cond_0

    .line 103
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-object v1

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The view is not associated with SideSheetBehavior"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;
    .locals 1
    .param p1, "sheet"    # Landroid/widget/FrameLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            ")",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/sidesheet/SideSheetBehavior;

    move-result-object v0

    return-object v0
.end method

.method getDialogId()I
    .locals 1

    .line 76
    sget v0, Lcom/google/android/material/R$id;->m3_side_sheet:I

    return v0
.end method

.method getLayoutResId()I
    .locals 1

    .line 70
    sget v0, Lcom/google/android/material/R$layout;->m3_side_sheet_dialog:I

    return v0
.end method

.method getStateOnStart()I
    .locals 1

    .line 88
    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic isDismissWithSheetAnimationEnabled()Z
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->isDismissWithSheetAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setCancelable(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCancelable(Z)V

    return-void
.end method

.method public bridge synthetic setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public bridge synthetic setContentView(I)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(I)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic setDismissWithSheetAnimationEnabled(Z)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setDismissWithSheetAnimationEnabled(Z)V

    return-void
.end method
