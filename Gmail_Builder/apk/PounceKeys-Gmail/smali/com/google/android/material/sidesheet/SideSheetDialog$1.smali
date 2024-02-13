.class Lcom/google/android/material/sidesheet/SideSheetDialog$1;
.super Lcom/google/android/material/sidesheet/SideSheetCallback;
.source "SideSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/sidesheet/SideSheetDialog;->addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/sidesheet/SideSheetDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/sidesheet/SideSheetDialog;

    .line 47
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetDialog;

    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "sheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 56
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "sheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 50
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetDialog;->cancel()V

    .line 53
    :cond_0
    return-void
.end method
