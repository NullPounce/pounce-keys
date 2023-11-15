.class Lcom/google/android/material/textfield/EndCompoundLayout$3;
.super Ljava/lang/Object;
.source "EndCompoundLayout.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/EndCompoundLayout;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/TintTypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 190
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "ignored"    # Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$300(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 194
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "ignored"    # Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$400(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 199
    return-void
.end method
