.class Landroidx/constraintlayout/motion/utils/CurveFit$Constant;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/CurveFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Constant"
.end annotation


# instance fields
.field mTime:D

.field mValue:[D


# direct methods
.method constructor <init>(D[D)V
    .locals 0
    .param p1, "time"    # D
    .param p3, "value"    # [D

    .line 63
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 64
    iput-wide p1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mTime:D

    .line 65
    iput-object p3, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    .line 66
    return-void
.end method


# virtual methods
.method public getPos(DI)D
    .locals 3
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 82
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    aget-wide v1, v0, p3

    return-wide v1
.end method

.method public getPos(D[D)V
    .locals 3
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 70
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    return-void
.end method

.method public getPos(D[F)V
    .locals 4
    .param p1, "t"    # D
    .param p3, "v"    # [F

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 76
    aget-wide v2, v1, v0

    double-to-float v1, v2

    aput v1, p3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getSlope(DI)D
    .locals 2
    .param p1, "t"    # D
    .param p3, "j"    # I

    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSlope(D[D)V
    .locals 3
    .param p1, "t"    # D
    .param p3, "v"    # [D

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mValue:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    const-wide/16 v1, 0x0

    aput-wide v1, p3, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getTimePoints()[D
    .locals 4

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/CurveFit$Constant;->mTime:D

    aput-wide v2, v0, v1

    return-object v0
.end method
