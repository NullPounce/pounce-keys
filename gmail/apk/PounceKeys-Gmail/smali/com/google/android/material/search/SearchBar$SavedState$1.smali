.class Lcom/google/android/material/search/SearchBar$SavedState$1;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/search/SearchBar$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/google/android/material/search/SearchBar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/search/SearchBar$SavedState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 901
    new-instance v0, Lcom/google/android/material/search/SearchBar$SavedState;

    invoke-direct {v0, p1}, Lcom/google/android/material/search/SearchBar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/search/SearchBar$SavedState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 896
    new-instance v0, Lcom/google/android/material/search/SearchBar$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/search/SearchBar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 892
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/search/SearchBar$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 892
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/search/SearchBar$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/search/SearchBar$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/search/SearchBar$SavedState;
    .locals 1
    .param p1, "size"    # I

    .line 906
    new-array v0, p1, [Lcom/google/android/material/search/SearchBar$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 892
    invoke-virtual {p0, p1}, Lcom/google/android/material/search/SearchBar$SavedState$1;->newArray(I)[Lcom/google/android/material/search/SearchBar$SavedState;

    move-result-object p1

    return-object p1
.end method
