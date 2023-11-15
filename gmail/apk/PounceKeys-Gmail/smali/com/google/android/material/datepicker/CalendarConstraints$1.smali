.class Lcom/google/android/material/datepicker/CalendarConstraints$1;
.super Ljava/lang/Object;
.source "CalendarConstraints.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/CalendarConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/CalendarConstraints;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 13
    .param p1, "source"    # Landroid/os/Parcel;

    .line 194
    const-class v0, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/Month;

    .line 195
    .local v0, "start":Lcom/google/android/material/datepicker/Month;
    const-class v1, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/datepicker/Month;

    .line 196
    .local v8, "end":Lcom/google/android/material/datepicker/Month;
    const-class v1, Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/datepicker/Month;

    .line 197
    .local v9, "openAt":Lcom/google/android/material/datepicker/Month;
    const-class v1, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 198
    .local v10, "validator":Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 199
    .local v11, "firstDayOfWeek":I
    new-instance v12, Lcom/google/android/material/datepicker/CalendarConstraints;

    const/4 v7, 0x0

    move-object v1, v12

    move-object v2, v0

    move-object v3, v8

    move-object v4, v10

    move-object v5, v9

    move v6, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/datepicker/CalendarConstraints;-><init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;Lcom/google/android/material/datepicker/Month;ILcom/google/android/material/datepicker/CalendarConstraints$1;)V

    return-object v12
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .param p1, "size"    # I

    .line 205
    new-array v0, p1, [Lcom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/CalendarConstraints$1;->newArray(I)[Lcom/google/android/material/datepicker/CalendarConstraints;

    move-result-object p1

    return-object p1
.end method
