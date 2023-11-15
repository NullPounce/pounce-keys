.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$finalState:I


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1306
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;"
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$finalState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1309
    .local p0, "this":Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;, "Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;"
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$child:Landroid/view/View;

    iget v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$1;->val$finalState:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;IZ)V

    .line 1310
    return-void
.end method
