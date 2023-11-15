.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 177
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;->this$0:Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;)I
    .locals 2
    .param p1, "lhs"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
    .param p2, "rhs"    # Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    .line 180
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v1, p2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 177
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    check-cast p2, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$1;->compare(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;)I

    move-result p1

    return p1
.end method
