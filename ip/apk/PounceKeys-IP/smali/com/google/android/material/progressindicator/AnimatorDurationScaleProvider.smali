.class public Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;
.super Ljava/lang/Object;
.source "AnimatorDurationScaleProvider.java"


# static fields
.field private static defaultSystemAnimatorDurationScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDefaultSystemAnimatorDurationScale(F)V
    .locals 0
    .param p0, "scale"    # F

    .line 60
    sput p0, Lcom/google/android/material/progressindicator/AnimatorDurationScaleProvider;->defaultSystemAnimatorDurationScale:F

    .line 61
    return-void
.end method


# virtual methods
.method public getSystemAnimatorDurationScale(Landroid/content/ContentResolver;)F
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .line 42
    nop

    .line 43
    const-string v0, "animator_duration_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
