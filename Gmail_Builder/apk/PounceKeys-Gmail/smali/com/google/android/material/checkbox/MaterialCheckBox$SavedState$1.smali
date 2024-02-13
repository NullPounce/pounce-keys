.class Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState$1;
.super Ljava/lang/Object;
.source "MaterialCheckBox.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 927
    new-instance v0, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;-><init>(Landroid/os/Parcel;Lcom/google/android/material/checkbox/MaterialCheckBox$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 924
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 932
    new-array v0, p1, [Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 924
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState$1;->newArray(I)[Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    move-result-object p1

    return-object p1
.end method
