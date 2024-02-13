.class public interface abstract Lcom/google/android/material/slider/Slider$OnSliderTouchListener;
.super Ljava/lang/Object;
.source "Slider.java"

# interfaces
.implements Lcom/google/android/material/slider/BaseOnSliderTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/slider/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSliderTouchListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/slider/BaseOnSliderTouchListener<",
        "Lcom/google/android/material/slider/Slider;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V
.end method

.method public bridge synthetic onStartTrackingTouch(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->onStartTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method

.method public abstract onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V
.end method

.method public bridge synthetic onStopTrackingTouch(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Lcom/google/android/material/slider/Slider;

    invoke-interface {p0, p1}, Lcom/google/android/material/slider/Slider$OnSliderTouchListener;->onStopTrackingTouch(Lcom/google/android/material/slider/Slider;)V

    return-void
.end method
