.class interface abstract Lcom/google/android/material/sidesheet/Sheet;
.super Ljava/lang/Object;
.source "Sheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/sidesheet/Sheet$SheetEdge;,
        Lcom/google/android/material/sidesheet/Sheet$StableSheetState;,
        Lcom/google/android/material/sidesheet/Sheet$SheetState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/google/android/material/sidesheet/SheetCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EDGE_RIGHT:I = 0x0

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_EXPANDED:I = 0x3

.field public static final STATE_HIDDEN:I = 0x5

.field public static final STATE_SETTLING:I = 0x2


# virtual methods
.method public abstract addCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract removeCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public abstract setState(I)V
.end method
