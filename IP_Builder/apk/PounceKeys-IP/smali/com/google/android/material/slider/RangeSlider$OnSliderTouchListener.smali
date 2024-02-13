.class public interface abstract Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;
.super Ljava/lang/Object;
.source "RangeSlider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseOnSliderTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/RangeSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSliderTouchListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "Lcom/google/android/material/slider/RangeSlider;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onStartTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V
.end method

.method public bridge synthetic onStartTrackingTouch(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;->onStartTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V

    return-void
.end method

.method public abstract onStopTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V
.end method

.method public bridge synthetic onStopTrackingTouch(Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p1, Lcom/google/android/material/slider/RangeSlider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/RangeSlider$OnSliderTouchListener;->onStopTrackingTouch(Lcom/google/android/material/slider/RangeSlider;)V

    return-void
.end method
