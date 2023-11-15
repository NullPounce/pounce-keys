.class Lcom/google/android/material/color/ColorResourcesTableCreator$1;
.super Ljava/lang/Object;
.source "ColorResourcesTableCreator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I
    .locals 2
    .param p1, "res1"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;
    .param p2, "res2"    # Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    .line 63
    invoke-static {p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v0

    invoke-static {p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$000(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)S

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 60
    check-cast p1, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    check-cast p2, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$1;->compare(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)I

    move-result p1

    return p1
.end method
