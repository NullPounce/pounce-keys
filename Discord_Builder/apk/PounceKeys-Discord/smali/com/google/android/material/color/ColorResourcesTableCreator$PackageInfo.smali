.class Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageInfo"
.end annotation


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->id:I

    .line 548
    iput-object p2, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->name:Ljava/lang/String;

    .line 549
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 542
    iget v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->id:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    .line 542
    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->name:Ljava/lang/String;

    return-object v0
.end method
