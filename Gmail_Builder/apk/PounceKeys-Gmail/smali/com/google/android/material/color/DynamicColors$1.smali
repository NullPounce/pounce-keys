.class Lcom/google/android/material/color/DynamicColors$1;
.super Ljava/lang/Object;
.source "DynamicColors.java"

# interfaces
.implements Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/DynamicColors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupported()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method
