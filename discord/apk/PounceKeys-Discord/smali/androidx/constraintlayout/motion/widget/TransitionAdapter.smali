.class public abstract Landroidx/constraintlayout/motion/widget/TransitionAdapter;
.super Ljava/lang/Object;
.source "TransitionAdapter.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I
    .param p4, "progress"    # F

    .line 12
    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "currentId"    # I

    .line 17
    return-void
.end method

.method public onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "startId"    # I
    .param p3, "endId"    # I

    .line 7
    return-void
.end method

.method public onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V
    .locals 0
    .param p1, "motionLayout"    # Landroidx/constraintlayout/motion/widget/MotionLayout;
    .param p2, "triggerId"    # I
    .param p3, "positive"    # Z
    .param p4, "progress"    # F

    .line 22
    return-void
.end method
