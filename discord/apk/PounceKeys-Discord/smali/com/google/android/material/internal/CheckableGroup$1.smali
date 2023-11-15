.class Lcom/google/android/material/internal/CheckableGroup$1;
.super Ljava/lang/Object;
.source "CheckableGroup.java"

# interfaces
.implements Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/CheckableGroup;->addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/CheckableGroup;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/CheckableGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/internal/CheckableGroup;

    .line 79
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup$1;, "Lcom/google/android/material/internal/CheckableGroup$1;"
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/internal/MaterialCheckable;Z)V
    .locals 2
    .param p2, "isChecked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup$1;, "Lcom/google/android/material/internal/CheckableGroup$1;"
    .local p1, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    if-eqz p2, :cond_0

    invoke-static {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->access$000(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/material/internal/CheckableGroup;->access$100(Lcom/google/android/material/internal/CheckableGroup;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/internal/CheckableGroup;->access$200(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    invoke-static {v0}, Lcom/google/android/material/internal/CheckableGroup;->access$300(Lcom/google/android/material/internal/CheckableGroup;)V

    .line 85
    :cond_1
    return-void
.end method

.method public bridge synthetic onCheckedChanged(Ljava/lang/Object;Z)V
    .locals 0

    .line 79
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup$1;, "Lcom/google/android/material/internal/CheckableGroup$1;"
    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/CheckableGroup$1;->onCheckedChanged(Lcom/google/android/material/internal/MaterialCheckable;Z)V

    return-void
.end method
