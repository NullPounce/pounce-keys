.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WavePoint"
.end annotation


# instance fields
.field mOffset:F

.field mPeriod:F

.field mPosition:I

.field mValue:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "period"    # F
    .param p3, "offset"    # F
    .param p4, "value"    # F

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPosition:I

    .line 62
    iput p4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mValue:F

    .line 63
    iput p3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mOffset:F

    .line 64
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint;->mPeriod:F

    .line 65
    return-void
.end method
