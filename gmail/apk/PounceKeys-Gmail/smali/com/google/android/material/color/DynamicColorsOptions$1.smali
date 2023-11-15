.class Lcom/google/android/material/color/DynamicColorsOptions$1;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"

# interfaces
.implements Lcom/google/android/material/color/DynamicColors$Precondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColorsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldApplyDynamicColors(Landroid/app/Activity;I)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "theme"    # I

    .line 45
    const/4 v0, 0x1

    return v0
.end method
