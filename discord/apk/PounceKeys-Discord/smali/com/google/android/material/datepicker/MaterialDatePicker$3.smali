.class Lcom/google/android/material/datepicker/MaterialDatePicker$3;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

.field final synthetic val$headerLayout:Landroid/view/View;

.field final synthetic val$originalHeaderHeight:I

.field final synthetic val$originalPaddingTop:I


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 373
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker$3;, "Lcom/google/android/material/datepicker/MaterialDatePicker$3;"
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iput p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    iput p4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalPaddingTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 376
    .local p0, "this":Lcom/google/android/material/datepicker/MaterialDatePicker$3;, "Lcom/google/android/material/datepicker/MaterialDatePicker$3;"
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 377
    .local v0, "topInset":I
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    if-ltz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 382
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalPaddingTop:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 384
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 385
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 381
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 386
    return-object p2
.end method
