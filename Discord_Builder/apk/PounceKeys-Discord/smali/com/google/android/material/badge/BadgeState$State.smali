.class public final Lcom/google/android/material/badge/BadgeState$State;
.super Ljava/lang/Object;
.source "BadgeState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/badge/BadgeState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field private static final BADGE_NUMBER_NONE:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/badge/BadgeState$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_SET:I = -0x2


# instance fields
.field private additionalHorizontalOffset:Ljava/lang/Integer;

.field private additionalVerticalOffset:Ljava/lang/Integer;

.field private alpha:I

.field private backgroundColor:Ljava/lang/Integer;

.field private badgeGravity:Ljava/lang/Integer;

.field private badgeResId:I

.field private badgeTextColor:Ljava/lang/Integer;

.field private contentDescriptionExceedsMaxBadgeNumberRes:I

.field private contentDescriptionNumberless:Ljava/lang/CharSequence;

.field private contentDescriptionQuantityStrings:I

.field private horizontalOffsetWithText:Ljava/lang/Integer;

.field private horizontalOffsetWithoutText:Ljava/lang/Integer;

.field private isVisible:Ljava/lang/Boolean;

.field private maxCharacterCount:I

.field private number:I

.field private numberLocale:Ljava/util/Locale;

.field private verticalOffsetWithText:Ljava/lang/Integer;

.field private verticalOffsetWithoutText:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 473
    new-instance v0, Lcom/google/android/material/badge/BadgeState$State$1;

    invoke-direct {v0}, Lcom/google/android/material/badge/BadgeState$State$1;-><init>()V

    sput-object v0, Lcom/google/android/material/badge/BadgeState$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 422
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 423
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 431
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 451
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 422
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 423
    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 431
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # I

    .line 410
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # I

    .line 410
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/google/android/material/badge/BadgeState$State;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/material/badge/BadgeState$State;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/util/Locale;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # I

    .line 410
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # I

    .line 410
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # I

    .line 410
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/material/badge/BadgeState$State;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/material/badge/BadgeState$State;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # I

    .line 410
    iput p1, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/material/badge/BadgeState$State;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;

    .line 410
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/material/badge/BadgeState$State;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/badge/BadgeState$State;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 410
    iput-object p1, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 495
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 497
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 498
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    nop

    .line 502
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget v0, p0, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 505
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 507
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 508
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 509
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 511
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 512
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 513
    return-void
.end method
