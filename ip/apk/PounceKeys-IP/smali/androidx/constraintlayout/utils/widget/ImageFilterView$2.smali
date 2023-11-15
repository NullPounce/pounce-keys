.class Landroidx/constraintlayout/utils/widget/ImageFilterView$2;
.super Landroid/view/ViewOutlineProvider;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/constraintlayout/utils/widget/ImageFilterView;

    .line 543
    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 546
    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result v0

    .line 547
    .local v0, "w":I
    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-virtual {v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v7

    .line 548
    .local v7, "h":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;->this$0:Landroidx/constraintlayout/utils/widget/ImageFilterView;

    invoke-static {v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->access$100(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F

    move-result v6

    move-object v1, p2

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 549
    return-void
.end method
