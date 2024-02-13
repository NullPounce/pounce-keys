.class Lcom/google/android/material/timepicker/TimeModel;
.super Ljava/lang/Object;
.source "TimeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/timepicker/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_FORMAT:Ljava/lang/String; = "%d"

.field public static final ZERO_LEADING_NUMBER_FORMAT:Ljava/lang/String; = "%02d"


# instance fields
.field final format:I

.field hour:I

.field private final hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field minute:I

.field private final minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

.field period:I

.field selection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/google/android/material/timepicker/TimeModel$1;

    invoke-direct {v0}, Lcom/google/android/material/timepicker/TimeModel$1;-><init>()V

    sput-object v0, Lcom/google/android/material/timepicker/TimeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/timepicker/TimeModel;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "format"    # I

    .line 59
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v0, v1, p1}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    .line 60
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "selection"    # I
    .param p4, "format"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 64
    iput p2, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 65
    iput p3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    .line 66
    iput p4, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    .line 67
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 68
    new-instance v0, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 69
    new-instance v0, Lcom/google/android/material/timepicker/MaxInputValidator;

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    const/16 v1, 0x18

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    invoke-direct {v0, v1}, Lcom/google/android/material/timepicker/MaxInputValidator;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/timepicker/TimeModel;-><init>(IIII)V

    .line 74
    return-void
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 192
    const-string v0, "%02d"

    invoke-static {p0, p1, v0}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "format"    # Ljava/lang/String;

    .line 198
    nop

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 198
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getPeriod(I)I
    .locals 1
    .param p0, "hourOfDay"    # I

    .line 84
    const/16 v0, 0xc

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 139
    return v0

    .line 142
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/timepicker/TimeModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 143
    return v2

    .line 146
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/timepicker/TimeModel;

    .line 147
    .local v1, "that":Lcom/google/android/material/timepicker/TimeModel;
    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->format:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    iget v4, v1, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getHourContentDescriptionResId()I
    .locals 2

    .line 119
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/google/android/material/R$string;->material_hour_24h_suffix:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/material/R$string;->material_hour_suffix:I

    :goto_0
    return v0
.end method

.method public getHourForDisplay()I
    .locals 4

    .line 102
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 103
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v0, v0, 0x18

    return v0

    .line 106
    :cond_0
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    rem-int/lit8 v2, v0, 0xc

    const/16 v3, 0xc

    if-nez v2, :cond_1

    .line 107
    return v3

    .line 110
    :cond_1
    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne v2, v1, :cond_2

    .line 111
    sub-int/2addr v0, v3

    return v0

    .line 114
    :cond_2
    return v0
.end method

.method public getHourInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hourInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object v0
.end method

.method public getMinuteInputValidator()Lcom/google/android/material/timepicker/MaxInputValidator;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minuteInputValidator:Lcom/google/android/material/timepicker/MaxInputValidator;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 132
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 133
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public setHour(I)V
    .locals 3
    .param p1, "hour"    # I

    .line 89
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 91
    return-void

    .line 94
    :cond_0
    rem-int/lit8 v0, p1, 0xc

    iget v2, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-ne v2, v1, :cond_1

    const/16 v1, 0xc

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 95
    return-void
.end method

.method public setHourOfDay(I)V
    .locals 1
    .param p1, "hour"    # I

    .line 78
    invoke-static {p1}, Lcom/google/android/material/timepicker/TimeModel;->getPeriod(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 79
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 80
    return-void
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .line 98
    rem-int/lit8 v0, p1, 0x3c

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    .line 99
    return-void
.end method

.method public setPeriod(I)V
    .locals 3
    .param p1, "period"    # I

    .line 180
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    if-eq p1, v0, :cond_1

    .line 181
    iput p1, p0, Lcom/google/android/material/timepicker/TimeModel;->period:I

    .line 182
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 183
    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    goto :goto_0

    .line 184
    :cond_0
    if-lt v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 185
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    .line 188
    :cond_1
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->selection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/google/android/material/timepicker/TimeModel;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void
.end method
