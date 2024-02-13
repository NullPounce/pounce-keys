.class Lcom/google/android/material/chip/ChipGroup$2;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Lcom/google/android/material/chip/ChipGroup$OnCheckedStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/ChipGroup;->setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;

.field final synthetic val$listener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/chip/ChipGroup;

    .line 335
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$2;->this$0:Lcom/google/android/material/chip/ChipGroup;

    iput-object p2, p0, Lcom/google/android/material/chip/ChipGroup$2;->val$listener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;Ljava/util/List;)V
    .locals 2
    .param p1, "group"    # Lcom/google/android/material/chip/ChipGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/chip/ChipGroup;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 339
    .local p2, "checkedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$2;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$200(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/CheckableGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableGroup;->isSingleSelection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$2;->val$listener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup$2;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v1}, Lcom/google/android/material/chip/ChipGroup;->getCheckedChipId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 343
    return-void
.end method
