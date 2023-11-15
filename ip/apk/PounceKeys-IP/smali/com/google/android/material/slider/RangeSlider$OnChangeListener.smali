.class public interface abstract Lcom/google/android/material/slider/RangeSlider$OnChangeListener;
.super Ljava/lang/Object;
.source "RangeSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseOnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/slider/BaseOnChangeListener<",
        "Lcom/google/android/material/slider/RangeSlider;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V
.end method

.method public bridge synthetic onValueChange(Ljava/lang/Object;FZ)V
    .locals 0

    .line 87
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/material/slider/RangeSlider$OnChangeListener;->onValueChange(Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method
