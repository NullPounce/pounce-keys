.class Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabs/TabLayoutMediator;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayoutMediator;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 292
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 296
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 297
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 302
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 306
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 307
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 316
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 317
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 311
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 312
    return-void
.end method
