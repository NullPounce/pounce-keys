.class public Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
.super Ljava/lang/Object;
.source "HyperSpline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/HyperSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cubic"
.end annotation


# static fields
.field public static final HALF:D = 0.5

.field public static final THIRD:D = 0.3333333333333333


# instance fields
.field mA:D

.field mB:D

.field mC:D

.field mD:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mA:D

    .line 183
    iput-wide p3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mB:D

    .line 184
    iput-wide p5, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mC:D

    .line 185
    iput-wide p7, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mD:D

    .line 186
    return-void
.end method


# virtual methods
.method public eval(D)D
    .locals 4
    .param p1, "u"    # D

    .line 192
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mD:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mC:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mB:D

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mA:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public vel(D)D
    .locals 6
    .param p1, "v"    # D

    .line 201
    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mD:D

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mC:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p1

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->mB:D

    add-double/2addr v0, v2

    return-wide v0
.end method
