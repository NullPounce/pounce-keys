.class public abstract Lcom/google/android/material/datepicker/DayViewDecorator;
.super Ljava/lang/Object;
.source "DayViewDecorator.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor(Landroid/content/Context;IIIZZ)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "valid"    # Z
    .param p6, "selected"    # Z

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompoundDrawableBottom(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "valid"    # Z
    .param p6, "selected"    # Z

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompoundDrawableLeft(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "valid"    # Z
    .param p6, "selected"    # Z

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompoundDrawableRight(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "valid"    # Z
    .param p6, "selected"    # Z

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompoundDrawableTop(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "valid"    # Z
    .param p6, "selected"    # Z

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentDescription(Landroid/content/Context;IIIZZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "valid"    # Z
    .param p6, "selected"    # Z
    .param p7, "originalContentDescription"    # Ljava/lang/CharSequence;

    .line 175
    return-object p7
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    return-void
.end method
