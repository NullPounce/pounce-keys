.class public Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressThresholds"
.end annotation


# instance fields
.field private final end:F

.field private final start:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->start:F

    .line 1545
    iput p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->end:F

    .line 1546
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1534
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->start:F

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    .line 1534
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->end:F

    return v0
.end method


# virtual methods
.method public getEnd()F
    .locals 1

    .line 1555
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->end:F

    return v0
.end method

.method public getStart()F
    .locals 1

    .line 1550
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->start:F

    return v0
.end method
